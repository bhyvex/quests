This is the global readme file for the project: server code, quest scripts, database work.
==========================================================================================

Note: the server codebase is a direct fork from EQEmu, but, although there are slight customizations here and there, it is 100% compatible with the main branch and is regularly merged-in.

This quest repository is focused on classic - Kunark - Velious.

Right now (december 2017), the bulk of the quest & content work is being done on vanilla EverQuest.

Prefered language
=================
Even though the bulk of the quest repository majorly uses PERL, the long-term goal of the project is to progressively phase it out in favor of LUA.
The general rule of thumb is:

- For any newly created script: use LUA
- Any existing script being edited: depending on complexity (for example, if it's a simple Hail / response), port it to LUA immediately, and further develop it with LUA.
- There are special cases of "if it ain't broken, don't fix it", namely the Boats system which relies heavily on PERL and the *quest::crosszonesignalnpcbynpctypeid(npctype_id, data)* method. Since I don't know if any LUA equivalent exists, and given the very fragile nature of the whole boat system....yeah, just leave that be.

Disclaimer
==========
This project is in no way, shape or form, a direct, 1:1 reproduction of Classic EverQuest, and probably never will be.

List of repositories for this project
=====================================

* https://github.com/proxeeus/quests/
* https://github.com/proxeeus/server/
* https://github.com/proxeeus/plugins
* https://github.com/proxeeus/lua_modules
* add a github for a database archive? what's the best way to distribute it?

Current highlights include, but are not limited to
===================================================

- A major feature of this project is the development of "Player Bots". See below for a full explanation.

- Obviously (this being the quest repo), a ton of quest work/fixes: rewards, drops, dialogues etc.

- Every single class/race/deity newbie quests (and their associated recipes) have been fixed/implemented wherever needed.

- Every single class/race/deity newbie Guild Note turn-in (and the associated dialogues / tunics) have been fixed/implemented wherever needed.

- Restored a ton of fluff/classically accurate dialogues wherever applicable. This is an ongoing process.

- Fully working boat system (mix of perl & a bit of C++ backend regarding static & empty zones). Firiona Vie's Maiden Voyage is useable and *working* (due to a small C++ 'hack')

Vanilla boat routes: Freeport -> OOT -> Butcherblock -> Freeport, Erudin (complete with the Erudin shuttles) -> Erud's Crossing -> Qeynos -> Erud's Crossing -> Erudin.

- A ton of faction work, which, while not 110% classically accurate, will be better than stock database values. This is an ongoing process.

- A lot of items with newer graphics have been reverted to their classic counterparts. This is an ongoing process.

- A lot of various NPCs features (faces, textures...) that were lost due to Luclin+ models are restored to their classic counterparts, which drastically reduces the "samey" look of NPCs across the world. A small C++ backend fix has been put in place to make plugin-driven NPC feature randomization persist for clients zoning. This in turn allows generic mobs like karana bandits, dervish cutthroats, mistmoore dark elves etc to have their faces completely randomized each time one of them is spawning. This is an ongoing process.

- Classic Cazic-Thule (not the high level version)

- Classic Paw (the gnoll version)

- Day/night cycle in Kithicor Forest. Watch out for those pesky undeads!
- Day/night cycle in East Karana - boy, those undead gnolls DO smell bad!
- Day/night cycle in Lake Rathetear - undead gnolls spawn in the camp @ South Karana's zone line. Beware!
- Generally speaking: day/night cycles enabled wherever needed. This is an ongoing process!

- Fixed tons of bad spawns/bad path grids/statically immobile NPCs/missing spawns etc etc. This is an ongoing process.

- Classic skeletons (brown/white), classic vendors, gypsy models/textures.

- Most classic vendors have had their stocks reflect the classic ones (armor sellers etc), instead of being empty. One or three may have slipped under the radar but for the most part this should be accurate.

Player Bots
============

- What are those?
They're basically a set of faux-players/NPCs spawning all around Norrath in order to simulate players. They've got the blue nameplates, have their own randomized set of race/class/names/equipment etc. They're "^invitable" by real players in order to help building a bot group/raid force easily.

- How?
Player Bots are, at first, technically separate from the embedded EQEmu Bots. Behind the scenes, they're actually invisible NPCs with some customizations here and there, dynamically generated at spawn-time. These broadly include, but are not limited to:

* Blue nameplate, like players.
* They can leave corpses (non-lootable) upon death.
* They'll roam most zones freely and engage other mobs, simulating players Exp'ing.

Upon meeting a Player Bot, a real player might want to recruit him in his personal bot army. A new ^invite command has been implemented. This command will clone all the NPC's features (appearance, class, race and equipment) and auto-generate a true Bot (in the EQEmu sense of the word) with all said features. The real Bot will be spawned at the player's location, and the Player Bot NPC will depop.

Besides some C++ backend implementation (all tagged with [player bot] in their respective commit messages), a rather huge and messy LUA script ties the system together.
This is the engine that generates a Player Bot upon spawning: name, race, class, spellsets if applicable, and equipment based on level.

Todo list
=========

- Kunark
- Velious
- Tradeskills
- Further customizations to the Bots (PlayerBot system still in the design stages)
