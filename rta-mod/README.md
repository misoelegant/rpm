# Reroll RTA Mod

## Acknowledgements

Guided by ideas and feedback from Enzor, GameIt, sisuka, Odyssic, sunkir, pimittens, Blaust, and shamana.

Developed by grass and pimittens.

## Summary

- This is a mod that makes minimal QoL changes without affecting the original game as a speedrun.
- Use the [launcher](https://github.com/misoelegant/rpm/tree/master/updater) to download and install this mod.

## Options

- **Run in background**: keeps the game running while its window isn't focused.
- **Skip splash screen**: skips the first ~6 seconds of cutscenes when the game opens.
- **Text advance turbo**: gives the text advance button turbo inputs.
  - Designed to be on par with what is already allowed via a Steam controller configuration. 
  - ~10.4 pps with 0.15 second delay before turbo input starts.
- **MAS1 BGM**: sets the song on MAS1 to one of:
  - "You Are Smart" (default on Reroll and PS2-J)
  - "WANDA WANDA" (default on PS2-NA)
- **Player character**: allows the player to appear as a cousin during gameplay.
  - The player still appears as the prince during other non-gameplay scenes.
  - The random setting is only rolled once (when the game opens).
- **Katamari model**: allows the player to use a specific katamari model for all levels.
  - The random setting is only rolled once (when the game opens).

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

This mod is legal for use in the speedrun.com "1438 objects (RBA Mod)" category.
**It is not legal in the unmodded 1438 objects category.**
