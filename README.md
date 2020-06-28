# Reroll Practice Mod v0.2.0

## Features

- Much less downtime between attempts when practicing ILs.
- Automatically track PBs, attempts, and playtime for each IL.
- Automatic splits for the 10 RTA levels which are shown during and after each attempt.

## Controls

- Square button (X on 360 controllers) on Earth retries the last level played.
- F10 toggles the FPS display during gameplay.

## Installation

- Replace the mod DLL of the same name in `katamari_Data/Managed` in your game folder.
- You can replace the modded DLL with the original DLL to return to the unmodded game. The original DLL can be reacquired from Steam if you lose track of it.

### Changes made in v0.2

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

### Inserting existing IL PBs

1. Open the game with the practice mod DLL installed and load a save file.
2. The file "practice-mod-save.txt" should be created in the game directory. Close the game once the file has been created.
3. Under the PBS section, each row after the first should have the name of a level followed by two sets of question marks (?:??).
4. Change the *first* ?:?? to your IL time (be careful to only change the ?'s to numbers; try not to change anything else).
5. Save the file and reopen the game.

This will be made easier in a future version.
