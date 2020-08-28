# Reroll Practice Mod v0.4.0

## Acknowledgements

- Thanks to the players who tested the mod and provided feedback, ideas, and bug reports:
  martini, rattmann, pimittens, Enzor,
  and everyone else who has supported and engaged with the mod's ongoing development.
- Huge thanks to sisuka for providing Japanese translations.

## Installation

- Replace the mod DLL of the same name in `katamari_Data/Managed` in your game folder.
- You can replace the modded DLL with the original DLL to return to the unmodded game. The original DLL can be reacquired from Steam if you lose track of it.

## Features

- Much less downtime between attempts when practicing ILs.
- Automatically track PBs, attempts, and playtime for each level. Old PBs can be imported into the mod.
- Automatic splits are tracked for the speed-based categories, which are shown during and after each attempt.
- Separate categories are available for both RTA speedruns, as well as for "max size" runs and other challenges.
- All cousins, katamari models, and two presents at a time can be used.

## Controls

- Square button (X on 360 controllers) on Earth retries the last level played.
- Triangle button (Y on 360 controllers) on Earth changes category.
- The right analog stick controls scrollable lists (both on Earth and the pause menu).
- F10 toggles the developers' FPS display during gameplay.

## Categories

| Category         | Scoring                                                                           | Levels tracked    |
|------------------|-----------------------------------------------------------------------------------|-------------------|
| Any%             | Fastest time to reach goal size                                                   | RTA levels        |
| No Boost         | Fastest time to reach goal size without boosting                                  | RTA levels        |
| Min Object Types | Fewest different object types picked up to reach goal size (time tiebreaker)      | RTA levels        |
| Max Size         | Largest Katamari size achieved (time tiebreaker)                                  | All levels        |
| Max Objects      | Most objects picked up (time tiebreaker)                                          | All levels        |
| 1438/RBA Runs    | Fastest time to clear the level while collecting everything on the 1438/RBA route | All levels        |
| Bear/Cow Objects | Fastest time to clear the level by collecting the stated object.                  | Ursa Major/Taurus |

- RTA levels means MAS1-MAS9 and MTM.
- When time is used as a tiebreaker, your time is the *first time* you reach your score.
  For example, if you end a Max Size run at 19cm7mm, your tiebreaker is the first time you reached 19cm7mm, even if you kept playing.

## Importing your existing PBs

1. Hover over the level on Earth and select the category you want to import into.
2. Press the "Import PB" button shown on the bottom of the screen.
3. Type your score in with the keyboard. The score will appear red until it's formatted correctly.
    * For time, the score should look like "mm:ss" or "mm:ss.dd".
    * For size, the score should look like "123m45cm6mm", with units left out as necessary.
4. Press the "Confirm import" button.
5. The imported score will always override your existing PB, so if you make a mistake, you can just re-import.

## Mod Options menu

- **Categories**: filters the available categories to a smaller subset.
- **Run In Background**: forces the game to continue updating while it's not the active window.
- **Spawn Cousins**: when on, cousin objects will always spawn.
- **Spawn Presents**: when on, present objects will always spawn.
- **King First Messages**: when on, the King will always announce the following events from the unmodified game:
  - He will always announce the first time a knocked over object is picked up or escapes, when you lose an object to a crash, or go underwater.
  - *Only in MAS1*, he will always announce the first time you pick up an object.
- **In-game Splits**: when on, shows splits under the in-game timer.
- **Timer Format**: adjusts the format of the timer. The "Default" setting behaves the same as the unmodified game's timer.
- **Cousin**: changes the cousin used in gameplay. Note that presents only appear when playing as the Prince.
- **Katamari Model**: changes the Katamari model used in gameplay.
  - Most models are named after the levels where they're used in the unmodified game.
  - Two models aren't available in the unmodified single player game.
    The models are instead named after the cousins that use them in VS mode, Marcy and Kuro.

## Changelog

### Changes made in v0.4.0
- BGM/SE volume is saved automatically without having to manually save the game on the home planet.
- A mod options menu is now accessible.
- An object list is shown on the pause menu. By default it shows the objects you've picked up in order,
  but displays other information depending on the category.
- All cousins and katamari models can be used.
- When playing as the Prince, two presents can be used at the same time.
- All steam achievement unlocks are now disabled while using the mod.
- The Japanese-only splash screen when you open the game is now disabled.
- The post-level PB cutscene now shows your old and new PB scores.
- Splits are now compared using Reroll IGT rather than control time.
- Fixed the 90m split in MTM (it was incorrectly splitting on 80m)
- Fixed "time played" string for hopefully the last time.
- The PB history now records the attempt number for each new PB.

### Changes made in v0.3.1
- Fix time played display: add a leading 0 to minutes under 10.
- Fix the Min Object Types category scoring (hopefully).

### Changes made in v0.3.0
- Five categories added: Any%, No Boost, Max Size, Max Objects, and Min Object Types.
  - If you break a category's rules (currently, only boosting in no boost)
    you can keep playing, but your PB won't save and the splits will show a DQ.
- The king now reminds you of your current PB while the level is loading,
  possibly to taunt you.
- Saved splits are now shown when a level is hovered on Earth.
  - Hovering the last level you played will re-show the last attempt's splits.
- If no splits are saved for a level (or can be saved, in the case of non-RTA levels),
  this is now stated explicitly.
- Added a "PB History" to the save file which saves each IL and its date achieved.
- Non-RTA levels should now be properly playable.
- The overworld "Sum of ILs" shows improvements.
- The mod should be fully playable in Japanese now, and should remain so going forward.

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
