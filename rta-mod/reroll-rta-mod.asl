state("katamari") 
{
	byte levelID: "PS2KatamariSimulation.dll", 0xff104;
	int frames: "mono.dll", 0x00265110, 0x90, 0x30, 0x20, 0x50, 0x51c;
	float size: "PS2KatamariSimulation.dll", 0x16d77c;
	int stage: "UnityPlayer.dll", 0x13FB8F8;
	int newGameDialog: "UnityPlayer.dll", 0x1450c48, 0, 0x5dc;
	int newGameDialogValue: "UnityPlayer.dll", 0x1452170, 0x2c0, 0x4c8, 0x80;
	int origNewGameDialogValue: "mono.dll", 0x265a28, 0x138, 0x90, 0x80;
}

startup
{
	settings.Add("splitOnMAS", true, "Split after MAS1-9");
	settings.Add("splitOnBear", false, "Split after Ursa Major", "splitOnMAS");
	
	vars.shouldReset = false;
}

init
{
	refreshRate = 30;
	
	vars.LEVEL_ID_URSA = 17;
	vars.STAGE_ID_RESULTS = 114;
	vars.STAGE_ID_OVERWORLD = 29;
	vars.LEVEL_ID_MAS1 = 1;
	vars.LEVEL_ID_MAS9 = 9;
	
	vars.NEW_GAME_DIALOG_OPEN = 10237; // 0x27b7
	vars.NEW_GAME_DIALOG_CLOSED = 10232; // 0x27b2
	vars.NEW_GAME_DIALOG_VALUE_YES = 257;
	vars.NEW_GAME_DIALOG_VALUE_NO = 1;
	vars.ORIG_NEW_GAME_DIALOG_VALUE_YES = 257;
	vars.ORIG_NEW_GAME_DIALOG_VALUE_NO = 1;
	
	vars.onResultsStage = false;
	vars.alreadySplitAt300m = false;
	vars.gameOpen = true;
	vars.levelIgt = "0.00";
}

exit { vars.shouldReset = true; }

reset {
	bool shouldReset = vars.shouldReset;
	vars.shouldReset = false;
	return shouldReset; 
}

start
{
	bool dialogJustClosed = old.newGameDialog == vars.NEW_GAME_DIALOG_OPEN 
		&& current.newGameDialog == vars.NEW_GAME_DIALOG_CLOSED;
		
	// use one of two methods of detecting the correct value.
	// they seem to work inconsistently for different people, but hopefully
	// combining them both should be more reliable.
	bool dialogHasCorrectValue = old.newGameDialogValue == vars.NEW_GAME_DIALOG_VALUE_YES
		|| old.origNewGameDialogValue == vars.ORIG_NEW_GAME_DIALOG_VALUE_YES;

	bool shouldStart = dialogJustClosed && dialogHasCorrectValue;
		
	if (shouldStart) {
		vars.shouldReset = false;
	}
	
	return shouldStart;
}

isLoading
{
	return current.frames == old.frames;
}

split
{
	if (current.stage == vars.STAGE_ID_RESULTS) {
		vars.onResultsStage = true;
		return false;
	}
	
	if (current.stage == vars.STAGE_ID_OVERWORLD && vars.onResultsStage == true) {
		vars.onResultsStage = false;
		
		if (settings["splitOnMAS"] && 
			current.levelID >= vars.LEVEL_ID_MAS1 && 
			current.levelID <= vars.LEVEL_ID_MAS9
		) {
			return true;
		}
		
		if (settings["splitOnBear"] && current.levelID == vars.LEVEL_ID_URSA) {
			return true;
		}
		
		return false;
	}	
	
	if (!vars.alreadySplitAt300m && current.levelID == 10 && current.size >= 30000) {
		vars.alreadySplitAt300m = true;
		return true;
	}
}

update 
{
	if (current.frames != 0) {
		// render the igt frames to a time string
		int frames = current.frames;
		int minutes = frames / 1800;
		double seconds = (frames % 1800) / 30f;
		seconds = Math.Floor(seconds * 100) / 100;

		string secondsFormat = (minutes > 0 ? "00" : "0") + ".00";
		string secondsString = seconds.ToString(secondsFormat);

		if (minutes > 0) vars.levelIgt = minutes + ":" + secondsString;
		else vars.levelIgt = secondsString;	
	} else {
		vars.levelIgt += " ";
		if (vars.levelIgt.Length > 10) {
			vars.levelIgt = "0.00";
		}
	}
}