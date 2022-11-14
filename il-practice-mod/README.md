# Reroll Practice Mod v0.8.0

## Acknowledgements

- Thanks to the players who tested the mod and provided feedback, feature ideas, and bug reports:
  martini, rattmann, pimittens, Enzor, dunewacky, shamana, Odyssic, GameIt, seruran_blue, shookie,
  and everyone else who has supported and engaged with the mod's ongoing development.
- Huge thanks to sisuka and Harutomo for providing Japanese translations.

## Launcher Installation

- Download `RPMUpdater` from
  [here](https://github.com/misoelegant/rpm/tree/master/updater)
  and follow the setup instructions.
- The launcher will automatically download updates and makes it much easier to
  switch between the practice mod and the original game.

### Manual Installation

- Replace the mod DLL of the same name in `katamari_Data/Managed` in your game folder.
- You can replace the modded DLL with the original DLL to return to the unmodded game.
  The original DLL can be reacquired from Steam if you lose track of it.

## Features

- Much less downtime between attempts when practicing ILs.
- (Mostly) functional savestates and input recording/playback.
- Automatically track PBs, attempts, and playtime for each level. Old PBs can be imported into the mod.
- Automatic splits are tracked for the speed-based categories, which are shown during and after each attempt.
- Separate categories are available for both RTA speedruns, as well as for "max size" runs and other challenges.
- All cousins, katamari models, and two presents at a time can be used.

## Controls

- Square button (X on 360 controllers) on Earth retries the last level played.
- Triangle button (Y on 360 controllers) on Earth changes category.
- The right analog stick controls scrollable lists (both on Earth and the pause menu).
- F4 toggles a visualization of the katamari's collision mesh.
- F5 toggles the bounding boxes and vault points of unattached objects.
- F6 toggles the speed overlay during gameplay.
- F10 toggles the developers' FPS display during gameplay.
- In the Endless category, R2 saves a state and L2 loads that state.

## Categories

| Category         | Scoring                                                                           | Levels tracked    |
|------------------|-----------------------------------------------------------------------------------|-------------------|
| Any%             | Fastest time to reach goal size                                                   | RTA levels        |
| No Boost         | Fastest time to reach goal size without boosting                                  | RTA levels        |
| Any% (Keyboard)  | Fastest time to reach goal size using keyboard controls                           | RTA levels        |
| Min Object Types | Fewest different object types picked up to reach goal size (time tiebreaker)      | RTA levels        |
| Max Size         | Largest Katamari size achieved (time tiebreaker)                                  | All levels        |
| Max Objects      | Most objects picked up (time tiebreaker)                                          | All levels        |
| 1438/RBA Runs    | Fastest time to clear the level while collecting everything on the 1438/RBA route | All levels        |
| Bear/Cow Objects | Fastest time to clear the level by collecting the stated object.                  | Ursa Major/Taurus |
| Endless          | A category without a goal or timer where savestates are enabled.                  | All levels        |

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
- **Force Initial RNG**: Resets the game's RNG to the initial values that occur when
  the game is opened. This can be used to force the mosquito coil start in MAS2 (among other things).
- **BGM**: choose a random, fixed, or the default background song to play in each stage.
- **Run In Background**: forces the game to continue updating while it's not the active window.
- **Spawn Cousins**: when on, cousin objects will always spawn.
- **Spawn Presents**: when on, present objects will always spawn.
- **King First Messages**: when on, the King will always announce the following events from the unmodified game:
  - He will always announce the first time a knocked over object is picked up or escapes, when you lose an object to a crash, or go underwater.
  - *Only in MAS1*, he will always announce the first time you pick up an object.
- **In-game Splits**: when on, shows splits under the in-game timer.
- **Timer Format**: adjusts the format of the timer. The "Default" setting behaves the same as the unmodified game's timer.
- **Cousin**: changes the cousin used in gameplay.
- **Katamari Model**: changes the Katamari model used in gameplay.
  - Most models are named after the levels where they're used in the unmodified game.
  - Two models aren't available in the unmodified single player game.
    The models are instead named after the cousins that use them in VS mode, Marcy and Kuro.

## Console documentation

- Open/close the console with `` ` ``.
- Execute a command with `Enter`.
- Scroll through previously executed commands with up/down arrow keys.
- Increase font size: `Ctrl`+`=`.
- Decrease font size: `Ctrl`+`-`.
- Multiple commands can be executed in order by separating them with `;`.
  - e.g. the command `noclip;freeze` enters noclip mode, then freezes the game physics.
- **Note:** the details of how to use each command is printed with the "help" argument, e.g. `frameadvance help` prints help for the `frameadvance` command.

### `macro`, `savemacro`
  - Binds a command or sequence of commands (a macro) to an F key (`F1`-`F12`).
  - Using `macro` is temporary, and the macro disappears when you close the game.
  - Using `savemacro` is permanent, and saves all macros to your save file.
    - The default F key shortcuts are now just `savemacro` binding definitions. 
  - If a temporary and permanent macro are both bound to the same key, only the temporary macro is executed.
  - Example: `savemacro f8 noclip;freeze` permanently saves the macro `noclip:freeze` to the `F8` key.

### `deletemacro`
  - Deletes a macro assigned to a key. 
  - If a temporary and permanent macro are both bound to the same key, only the temporary macro is deleted.
  - Example: `deletemacro f8`.

### `savestate`, `loadstate`
  - Save and load the savestate, respectively.

### `lockstate`
  - Toggles a "lock" on the savestate which prevents it from being overwritten.
  - Rerun `lockstate` to turn the lock off.

### `boostgauge`
  - Toggles the visual boost gauge in Endless categories.

### `clear`
  - Clears the console output.

### `copy`
  - `copy ils [category]`: Writes a column of MAS1-Moon IL times to the clipboard that can be pasted into the spreadsheet. Categories are `any`, `nb`, `kb`.
  - `copy splits`: If you're hovering over a level on the overworld, writes that level's splits to the clipboard.

### `draw`
  - Draws certain physics simulation data (some of these was previously in the mod already).
  - Run the command `draw help` to see all available visualizations (they all kinda suck though).

### `frameadvance`
  - Advances one or more physics ticks (only in Endless). 

### `freeze`
  - Freezes physics ticks (only in Endless)
  - If the physics are already frozen, unfreezes them.

### `initialrng`
  - Toggles the "Force Initial RNG" mod option.
  - The console prints 

### `lockcamera`
  - When in noclip mode, this command locks the camera's position relative to the katamari and returns control to the player.

### `noclip`
  - Toggles "noclip mode".

### `overlay`
  - Toggles through the speed/gacha displays that were previously in the mod.

### `randomlevel`
  - When on Earth in the overworld, selects a random level in the current category.

### `size`
  - Sets the katamari size (only in Endless).
  - Size format is either as the game displays it (e.g. "1m23cm34mm") or as a regular decimal
    number in centimeters.

### `speed`
  - Sets the speed of physics updates, as in Cheat Engine's game speed multiplier (only in Endless).

## Changelog

### Changes made in v0.8.0
  - Added input recording and playback.
    - Documentation forthcoming when I am less tired
  - Added "Any% (Drive)" category in the "Challenges" category group.
  - Polished noclip camera speeds to be a little less janky.
  - Fixed broken savestates in Ursa Major (and Pisces, Virgo, and Cancer).
  - Added "faster attempts" option in mod options.
    - Enabling this makes the king's pre-level text advance instantly, which makes resetting 40-50% faster for shorter levels.
  - Added `kingtext [string]` command to simulate the king speaking the string `[string]`.
    - See the "king texts" sheet on the dump spreadsheet for examples of strings.
  - Polished boost energy overlay (shown with `boostgauge` command in Endless):
    - Added gacha counter and gacha reset timer.

### Changes made in v0.7.6
  - Katamari size is now shown in Endless on North Star.
  - Added a category for getting exactly 10m on North Star.
  - Added a "gun volume" slider in the bgm/sfx volume menu.
    - Controls the volume of the gunshot noises when policemen are shooting at you.
  - Added an "overworld BGM" selection to the mod options menu.
    - Controls the BGM song that plays in the overworld. You need to reload the overworld to apply the song change (e.g. by entering and exiting the collection).
  - Fixed a bug which caused the Any% (POV) sum of ILs to be displayed incorrectly.
  - Polished Any% (Hidden): 
    - Fixed a bug which incorrectly triggered king messages for collecting all objects in a group.
    - Fixed a bug which caused newly loaded objects to be briefly visible.
  - Increased the overworld R2 travel speed back to 5x normal speed.
  - Added the `lockcamera` command.
  - Added the `boostgauge` command.

### Changes made in v0.7.5
  - Added a custom delay before the game unfreezes after loading state. This delay can be customized by using the console.
    - For example, the console command `savemacro l2 loadstate 300` will add a delay of `300` milliseconds (you can change the number to any delay).
  - Added the `hideobjects` command to toggle the visibility of objects in Endless.
    - Bind this command to the select button with the console command `savemacro back hideobjects`.
  - Enabled splits and the stats table for the Any% (Hidden) and Any% (POV) categories.
  - Temporarily disabled the noclip mode object list to see if that helps with framerate issues.

### Changes made in v0.7.4
  - Cousins should now mostly display on the overworld, if one is selected.
    - The "random" cousin is reloaded each time the overworld is reloaded.
    - Known bug: when you move from Earth to the Home Planet, the presents disappear.
  - Fixed a bug that may have broken some players' "best scores" table.
  - When the katamari model is set to "Random", there is now a 1% chance of using the moon model. Exciting!

### Changes made in v0.7.3
  - Added a "100% Ending" category.
    - The ending is entered from the purple icon on Earth.
    - Your score is recorded as the frame you collect 195 countries.
    - You need to quit out of the level manually with Start (`Tab` on keyboard).
  - Fixed a bug where scores were recorded twice if the level timer expired.
  - Changed the katamari collsion rays to always be visible when drawn.

### Changes made in v0.7.2
  - Added the "NameId" column to the noclip mode object list, which
    indicates whether an object has a unique name.
  - Fixed a bug where objects were invisible after loading
    a savestate where they were uncollected.
  - Increased the speed of the cutscene that plays when the game is quit 
    from the overworld home planet.
  - Added Any% (Hidden) and Any% (POV) categories to the "Challenges" 
    category group.

### Changes made in v0.7.1
  - Added the `randomlevel` command to choose a random level in the current category.
    - By default this is assigned to the `F7` key.
  - Added the `size` command to set the katamari's size (only in Endless).
  - The noclip mode object list should correctly update when objects are loaded.
  - Savestates should be much more accurate and useful.
    - There still seem to be "rotated object" bugs but I can't reliably reproduce them yet.
  - The Select button can now be used to toggle a lock the savestate.
    - If the savestate is locked, saving a new state won't do anything.
    - Loading state is unaffected by the lock.

### Changes made in v0.7.0
- Added a console (open/close with `` ` ``).
  - Console commands are documented [here](https://github.com/misoelegant/rpm/tree/master/il-practice-mod#console-documentation).
  - Messing with the console DQs you from whatever attempt you're in.
- Added "noclip mode" to Endless.
  - Camera controls are more or less the same as [WASD controls on noclip.website](https://github.com/magcius/noclip.website#controls).
  - The 1 key opens a list of all currently loaded objects.
    - Click an object's row to warp to it (without turning the camera). You might need to zoom in or out to see the object better.
    - Click on a column header to sort by that column. Click again to reverse the sort.
    - The currently shown columns (just as a first test):
      - ID: a unique number identifying each object.
      - Type: the number identifying the object's names
      - Name: the object's displayed name
      - Anim: The index of the object's animation script.
      - Msg (message): The index of the king speech that plays when you collect the object.
      - MsgGp (message group): The index of the king speech that plays when you collect all objects with the same MsgGp value.
- New F key behavior:
  - F1: does a physics frame advance (only in the Endless category)
  - F2: toggles physics freeze (only in the Endless category)
  - F3: toggles noclip mode (only in the Endless category)
  - F4: toggles katamari collision rays (unchanged)
  - F5: toggles object bounding boxes and vault points (unchanged)
  - F6: toggles through speed/gacha watches (unchanged)
  - F10: toggles initial RNG

### Changes made in v0.6.1
- Category groups can now be individually enabled and disabled from the mod
  settings menu. The "Misc" category group was split into two smaller groups
  to take advantage of this change.
- Added preview text showing the stage title and category to the pre-gameplay
  king cutscene. The preview text only shows when the stage or category has
  changed from the previous attempt.

### Changes made in v0.6.0
- Cousins now show equipped presents during gameplay.
- A few geometry overlays were added:
  - **Note**: turning on either overlay will DQ your score.
  - F4 toggles drawing the katamari's boundary collision.
    (The red mesh is the underlying katamari boundary, and blue lines
     represents extra vault points induced by attached objects.)
  - F5 toggles drawing bounding boxes and vault points for unattached
    objects.
- RBA polish:
  - Added relevant Taurus categories to the RBA group
    (Cow Pylon, Cow Vending Machine, Cow Umbrella).
  - Added a generic "ring" object to MAS2 and MAS8 object lists.
    This indicates that the random ring spawn should be collected.
  - R3 now toggles the object list between the "intended collection" order
    and the "missing objects first" order.
  - Added best and recent score lists to RBA categories.
  - Integrated RBA with the home planet IL table and the Earth "sum of ILs".
  - Cousins now correctly spawn in Eternal levels.
  - Fixed the Any% categories on Taurus.
  - Added Any% categories to MAS3 and MAS5 to follow the RBA route.
  - When the RBA category group is active, progress towards object lists
    are viewable from the pause menu in Endless.
- The pause menu object list now shows the collected quantity of each object
  in the "Min Object Types" category.
- Table scroll speed now changes based on how far the analog stick is held.
- Added the North Star Any% category (get to 5m quickly, then quit out).

### Changes made in v0.5.10
- Added categories for RBA routes. Choose the "RBA" or "All" category groups
  in the mod options to access the RBA categories.
- Enabled splits for the Any% (Keyboard) category.
- The "25th Score" sum in the IL table is now second-truncated to match
  the sum of ILs.
- The last attempt's score is now highlighted in the "Best Scores" list.
- Increased the scroll speed for long scrollable lists of objects and scores.
- Leaving the constellation area keeps you on the home planet.
- Leaving the collection area doesn't reopen the level UI on the home planet.
- Fixed the home planet IL table to work on all display resolutions.

### Changes made in v0.5.9
- Added a "25th Score" column to the IL table.
- Added the "Any% (Keyboard)" category.

### Changes made in v0.5.8
- Fixed a bug introduced with savestates that broke the "swirl"
  effect when you reach certain sizes (e.g. 7cm in MAS1).
  - **Details:** In the original game, the swirl doesn't happen twice when you fall
    below the size by losing objects then get back up to the swirl size a second time.
    Only one swirl occurs per swirl size.
    This bug made swirls happen every time you reach the swirl size.
    This matters because the IGT is frozen while the swirl effect is
    happening, so an extra swirl leads to inaccurate IGT relative to the original game.

### Changes made in v0.5.7
- Fixed a bug introduced in v0.5.6 that was breaking the camera peephole effect.

### Changes made in v0.5.6
- Some savestates polish:
  - Moving backwards though loading zone sizes via savestates should
    be much more playable now, though there are still several issues.
  - The mod's save file now tracks rerecords made in each endless level.
- Fixed a bug that was causing splits to be partially deleted.

### Changes made in v0.5.5
- Some savestates polish:
  - The King doesn't get mad at you when you fall below the goal size
    by loading a state.
  - Loading a state behind a loading zone should now work in smaller levels
    (1, 2, 3, 5, 6).
- Added the "Force Initial RNG" option to begin every level with the
  RNG set to what it is when you first open the game
  (this can be used to force the mosquito coil start in MAS2).
- Fixed a bug where the Random BGM only had two songs in the rotation.

### Changes made in v0.5.4
- Some savestates polish:
  - The Endless category is now actually endless.
  - A popup message was added to show when a state is saved.
  - States won't load in a different level than where they were made.
  - Endless categories for Eternal stages were separated so that
    they don't mix with Any%.
- The home planet IL table can now be toggled between any% and no boost.
- The pause menu object list is now computed using the simulation memory.
  This has resulted in the ghost finger being exorcised.
- BGM polish:
  - The file select song was removed from the random BGM songs.
  - The same song now can't play twice in a row on the random setting.


### Changes made in v0.5.3
- Added primitive savestates:
  - The "Endless" category has been added to each level. States are only
  accessible in this category.
  - Save state with R2 and load state with L2.

### Changes made in v0.5.2
- Added the boost gauge value to the speed overlay.

### Changes made in v0.5.1
- Added a more detailed speed overlay that compares true movement speed with
  the internal "katamari speed".
  Pressing F6 cycles through both available overlays.
- Added a BGM option to the mod options menu.
  You can choose to play the default song, a random song, or any
  specific song.
- The Earth overlay now shows a high score table and a recent score table.
  Pressing R3 cycles between the tables.
  Moving the right analog stick vertically scrolls both tables.
- Moving to Earth using R1 or L1 starts the Earth movement timer.
  Selecting a level while this timer is running will fly you back
  to the home planet and stop the timer.
- Fixed a bug on the home planet introduced by the previous version.

### Changes made in v0.5.0
- The game now skips file select and opens into the overworld.
- The saving house on the home planet now shows a table of any% times.
- Added "random" options for in-game cousin and katamari model.
- Added a speed overlay during gameplay which can be toggled with F6.
  This value is exposed by the physics engine directly and doesn't
  accurately measure true katamari speed in all situations.
  In particular, it seems to ignore y speed caused by gravity.

### Changes made in v0.4.2
- Fixed an issue where the camera would hide certain moving objects.
- Added Japanese translations for v0.4 strings.

### Changes made in v0.4.1
- Fixed an issue with Sum of ILs improperly updating.
- Fixed a memory leak caused by pausing and unpausing the game.

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
