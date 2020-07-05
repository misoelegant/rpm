# Reroll Practice Mod v0.3.0 beta

## v0.3.0 beta-specific notes
- Saves from older versions should be automatically migrated, but if not, it will copy the older version that it couldn't read to `CORRUPTED-SAVE-BACKUP.txt`. Please let me know if your save data doesn't correctly migrate.

## Features

- Much less downtime between attempts when practicing ILs.
- Automatically track PBs, attempts, and playtime for each IL within multiple categories.
- Automatic splits for the 10 RTA levels which are shown during and after each attempt.
- All IL PBs are recorded in the save file, along with the date they were achieved.
  - Currently, your obsolete PBs not viewable from the game itself.

## Controls

- Square button (X on 360 controllers) on Earth retries the last level played.
- Triangle button (Y on 360 controllers) on Earth changes category. The current category is shown in the Earth UI.
- F10 toggles the FPS display during gameplay.

## Installation

- Replace the mod DLL of the same name in `katamari_Data/Managed` in your game folder.
- You can replace the modded DLL with the original DLL to return to the unmodded game. The original DLL can be reacquired from Steam if you lose track of it.

### Inserting existing IL PBs

1. Open the game with the practice mod DLL installed and load a save file.
2. The file "practice-mod-save.txt" should be created in the game directory. Close the game once the file has been created.
3. Under the PBS section, each row after the first should have the name of a level followed by two sets of question marks (?:??).
4. Change the *first* ?:?? to your IL time (be careful to only change the ?'s to numbers; try not to change anything else).
5. Save the file and reopen the game.
(In a future version it will be possible to import PBs from within the game itself, but this is the price of being an early adopter for now).

## Changelog

### Changes made in v0.3.0
- Goalsize-based categories added: Any%, Any% (no boost).
  - If you break a category's rules (e.g. boosting in no boost) you can keep playing, but the timer and overworld splits will show the DQ.
- The king now reminds you of your current PB while the level is loading, possibly to taunt you.
- Saved splits are now shown when a level is hovered on Earth.
  - Hovering the last level you played will re-show the last attempt's splits.
- If no splits are saved (or can be saved, in the case of constellations) for a level, this is now stated explicitly.
- Added a "PB History" to the save file which saves each IL and its date achieved.
- Non-RTA levels should now be properly playable.
- The overworld "Sum of ILs" shows improvements.

### Changes made in v0.2.1

- Splits on the overworld should be in a resolution-independent position.
- Splits on the overworld are hidden when not on Earth.
- Movement speed is 2.5x faster on the home planet.
- Movement speed is 4x faster on file select, down from 10x. It was slowed down to prevent a softlock caused by clipping through the file select letters.

### Changes made in v0.2.0

- Note: if you already have a save file from v0.1, *it should automatically migrate when you install v0.2*
- IL splits added for the 10 RTA levels
  - Comparisons are shown under the timer during gameplay.
  - A summary table is shown in the overworld after exiting a level.
- Attempts, level completions, and playtime are tracked for each RTA level.
- All levels are unlocked by default (this shouldn't affect save files, even if you save).
- IL PBs now cause a small extra cutscene to play after you quit out.
- An FPS display can be enabled to check performance during gameplay.
- Eternal levels are disabled. This stops the normal/eternal dialog from opening when retrying levels with an unlocked eternal mode.

### Changes made to Reroll in v0.1

- Increased speed of fade-ins and fade-outs in file select and overworld
- Spawn in overworld on Earth instead of the Prince's home planet
- Doubled movement speed on Earth
- Moon Memorial is inaccessible and its entry button retries the last level played
- Exiting from a level always goes to Earth, skipping the result scene or stardust scene
- Exact IGT displayed during gameplay and in post-goal results screen
- Exact IGT PBs are saved for each level
- Sum of truncated IGT PBs is shown on Earth
