# Reroll RTA Mod

## Acknowledgements

Designed with ideas and feedback from Enzor, GameIt, sisuka, Odyssic, sunkir, pimittens, Blaust, shamana, Harutomo, and shookieTea.

Developed by grass and pimittens.

## Summary

- This is a mod that makes minimal QoL changes while aiming to leave the speedrun's gameplay unaffected.
- Use the [launcher](https://github.com/misoelegant/rpm/tree/master/updater) to download and install this mod.

## Options

These are quality of life additions that are designed to not affect speedrun times.

- **Run in background**: keeps the game running while its window isn't focused.
- **Skip splash screen**: skips the first ~6 seconds of cutscenes when the game opens.
- **Text advance turbo**: gives the text advance button turbo inputs.
  - Designed to be on par with what is already allowed via a Steam controller configuration. 
  - ~10.4 pps with 0.15 second delay before turbo input starts.
- **Show credits IL table**: truncated level times are displayed during the credits sequence.
- **Use PMod SFX Volume**: sets the sound effect volume to its value in the practice mod.
- **Use PMod BGM Volume**: sets the BGM volume to its value in the practice mod.
- **Player character**: allows the player to appear as a cousin during gameplay.
  - The player still appears as the prince during other non-gameplay scenes.
  - The random setting is only rolled once (when the game opens).
- **Katamari model**: allows the player to use a specific katamari model for all levels.
  - The random setting is only rolled once (when the game opens).
- **Equipped present**: allows the player to wear a present.
  - Note that some present-cousin combinations will look buggy. 
    These can be fixed on an individual basis, so please feel free to let us know if you'd like a 
    specific combo to look better.
- **MAS1 BGM**: sets the song on MAS1 to one of:
  - "You Are Smart" (default on Reroll and PS2-J)
  - "WANDA WANDA" (default on PS2-NA)

## Categories

These are **gameplay-altering** changes that affect the speedrun category that a run belongs to.

- **Hidden**: all objects are invisible unless they are attached to the katamari. 
  - Note: the clouds of smoke above "Smokestack" objects currently remain visible, but might be removed later.
- **POV**: the game camera is placed (roughly) at the prince's point of view.

## Other changes (which don't affect Any%)

### RBA
In the original game, the six constellation levels that track themed objects
(e.g. Make Cancer, which tracks crabs) do not save your collection progress if you quit out
of the level early, even if you've met the invisible goal of the stage. The only way to save
collection progress is to wait out the duration of the level timer (a total of 51 minutes for all six levels)
while also meeting the invisible goal.

To make matters worse, each of these levels has a cousin which only appears after the level has been
completed once, so to collect these cousins (and hence, all objects) requires a total of **102 minutes** of
"autoscroller" gameplay, where the skill ceiling is significantly lower than normal Katamari speedrunning.

This mod remedies this problem by **allowing early exits from these six constellation levels**,
provided that the original invisible goals of the constellation are met. These goals are:

  - Make Cancer: 10 crabs
  - Make Cygnus: 30 swans
  - Make Pisces: 60 fish
  - Make Corona Borealis: 20 crowns
  - Make Virgo: 80 maidens
  - Make Gemini: 22 sets of twins

This mod is legal for use in the speedrun.com "1438 objects (RTA Mod)" category.
**It is not legal in the unmodded 1438 objects category.**

## Changelog

### Update (3/9/22)
  - Added options to keep the same SFX and BGM volumes as in the practice mod.
  - Added options for "hidden" and "POV" categories (defined above).
  - Added a 1% chance of using the moon katamari model when a "random" model is selected.

### Bugfix (3/4/22)
  - Fixed a bug causing a crash when no presents were equipped.

### Bugfix (1/7/22)
  - Fixed a bug that was making the tutorial crash for cousins with two antennae.
