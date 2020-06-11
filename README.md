# Reroll Practice Mod v0.1

## Features

- Much less downtime when practicing ILs, especially shorter stages
- Automatically track PBs for each ILs

## Controls

- Square button (X on 360 controllers) on Earth retries the last level played

## Installation

- Replace the DLL of the same name in `katamari_Data/Managed` in your game folder.

### Changes made to Reroll

- Increased speed of fade-ins and fade-outs in file select and overworld
- Spawn in overworld on Earth instead of the Prince's home planet
- Doubled movement speed on Earth
- Moon Memorial is inaccessible and its entry button retries the last level played
- Exiting from a level always goes to Earth, skipping the result scene or stardust scene
- Exact IGT displayed during gameplay and in post-goal results screen
- Exact IGT PBs are saved for each level
- Sum of truncated IGT PBs is shown on Earth

### Inserting existing IL PBs

1. Open the game with the practice mod DLL installed.
2. After the game starts up, it should create the file "il-stats.txt" in the
   game directory. Close the game once the file has been created.
3. In "il-stats.txt", each row after the first should have the name of a level followed by two sets of question marks (?:??).
4. Change the *first* ?:?? to your IL time (be careful to only change the ?'s to numbers; try not to change anything else).
5. Save the file and reopen the game.
