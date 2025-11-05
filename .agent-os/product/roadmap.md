# Development Roadmap

## Phase 0: Foundation & Setup
**Status:** Not Started
**Goal:** Establish development environment and core project structure

- [ ] Install Godot 4.3 and configure project
- [ ] Set up Git repository and version control
- [ ] Create base project structure (scenes, scripts, assets folders)
- [ ] Configure pixel-perfect rendering settings (320x180 base resolution)
- [ ] Set up basic scene architecture (train car template, player scene)
- [ ] Install and configure GUT testing framework
- [ ] Create documentation structure for game systems

**Deliverable:** Empty Godot project with proper configuration, ready for development

---

## Phase 1: Core Player Movement & Controls
**Status:** Not Started
**Goal:** Functional player character with tight, responsive controls

- [ ] Implement basic player character (KinematicBody2D)
- [ ] Create player state machine (idle, run, jump)
- [ ] Add gravity and physics tuning
- [ ] Implement pixel-perfect collision detection
- [ ] Add basic animations (idle, run, jump cycles)
- [ ] Input handling (keyboard/gamepad support)
- [ ] Camera following with train car boundaries
- [ ] Basic train car environment for testing

**Deliverable:** Player character that moves, jumps, and feels good to control in a test train car environment

---

## Phase 2: Combat Foundation
**Status:** Not Started
**Goal:** Core combat mechanics with melee attacks and damage system

- [ ] Extend player state machine (attack, dodge, hurt, death states)
- [ ] Implement stamina system (attack/dodge costs, regeneration)
- [ ] Create hitbox/hurtbox system with collision layers
- [ ] Add basic melee weapon (sabre) with attack animations
- [ ] Implement damage calculation system
- [ ] Add dodge roll with i-frames
- [ ] Create test enemy dummy (takes damage, displays feedback)
- [ ] Basic hit feedback (screen shake, damage numbers, knockback)

**Deliverable:** Player can attack and dodge with stamina management, enemy dummy reacts to hits

---

## Phase 3: Enemy AI & Basic Combat Loop
**Status:** Not Started
**Goal:** First functional enemy with basic AI and complete combat encounter

- [ ] Create enemy base class with state machine
- [ ] Implement first enemy type (cultist melee)
- [ ] Enemy AI: patrol, detect player, chase, attack
- [ ] Enemy animations (idle, walk, attack, death)
- [ ] Enemy health and death system
- [ ] XP drop on enemy death
- [ ] Create test combat arena in train car
- [ ] Balance enemy damage/health for engaging combat

**Deliverable:** Functional enemy that fights player, dies, and drops XP

---

## Phase 4: Time Loop & Death Mechanics
**Status:** Not Started
**Goal:** Core time-loop system with death, XP tallying, and journey reset

- [ ] Create TimeLoopManager singleton
- [ ] Implement player death sequence
- [ ] XP tally screen (flip-card UI mockup)
- [ ] Save/load system for persistent data
- [ ] Track run count and accumulated XP
- [ ] Reset journey to starting position on death
- [ ] Preserve player XP across loops
- [ ] Basic checkpoint system structure

**Deliverable:** Player dies, sees XP screen, and respawns at journey start with XP preserved

---

## Phase 5: Leveling & Stat Progression
**Status:** Not Started
**Goal:** Complete character progression system with attributes and level-ups

- [ ] Implement SRD 5.2-based stat system (Strength, Agility, Endurance, Intellect, Spirit, Luck)
- [ ] Create level-up UI with attribute point distribution
- [ ] Stat modifiers affecting gameplay (damage, HP, stamina, etc.)
- [ ] XP-to-level progression curve
- [ ] Level-up animation and feedback
- [ ] Save/load player stats and level
- [ ] Display player stats in pause menu
- [ ] Test progression balance (XP gain vs difficulty curve)

**Deliverable:** Full progression system where death leads to level-up, stat distribution, and measurable power increase

---

## Phase 6: Train Environment & Navigation
**Status:** Not Started
**Goal:** Multi-car train environment with navigation between cars

- [ ] Create train car template system
- [ ] Design and implement 3-5 distinct train car types (passenger, cargo, dining, sleeper, engine)
- [ ] Car-to-car transition system (doors, loading zones)
- [ ] Parallax background system for sense of motion
- [ ] Train exterior hazards (boarding enemies, environmental obstacles)
- [ ] Basic NPC system (stationary, dialogue placeholder)
- [ ] Lighting and atmosphere per car type
- [ ] Mini-map or train layout UI

**Deliverable:** Multi-car train the player can navigate, each with distinct visual style and layout

---

## Phase 7: Advanced Combat & Weapon Variety
**Status:** Not Started
**Goal:** Multiple weapon types with distinct playstyles

- [ ] Expand weapon system architecture (equippable weapons, stats)
- [ ] Implement sabre (balanced melee)
- [ ] Implement wrench (slow, heavy melee)
- [ ] Implement steam rifle (ranged, stamina-based ammo)
- [ ] Weapon switching system
- [ ] Unique attack animations per weapon
- [ ] Weapon scaling with attributes (Strength, Agility, Intellect)
- [ ] Inventory/equipment UI
- [ ] Weapon durability or ammo management

**Deliverable:** 3+ weapon types with distinct feel and tactical considerations

---

## Phase 8: Enemy Variety & Encounters
**Status:** Not Started
**Goal:** Diverse enemy roster with varied combat challenges

- [ ] Design and implement cultist variants (melee, ranged, shielded)
- [ ] Create aberration enemy type (mutated creatures)
- [ ] Implement eldritch shade (phase-warping, magical)
- [ ] Enemy spawn system (scripted encounters, random spawns)
- [ ] Enemy behavior variations (aggressive, defensive, ranged)
- [ ] Elite/mini-boss variants with unique abilities
- [ ] Encounter pacing system (difficulty scaling per day)
- [ ] Bestiary UI (enemy info, weaknesses)

**Deliverable:** 6-8 distinct enemy types with varied behaviors and combat strategies

---

## Phase 9: Day Progression & Checkpoints
**Status:** Not Started
**Goal:** Four-day journey structure with checkpoints and escalating difficulty

- [ ] Implement day/time system (4 in-game days)
- [ ] Station checkpoint system (end-of-day safe zones)
- [ ] Checkpoint unlock persistence across loops
- [ ] Day transition sequences
- [ ] Difficulty scaling per day (enemy count, stats, behaviors)
- [ ] Station shops (basic item/weapon purchases)
- [ ] Station NPC interactions
- [ ] Day-specific events and encounters

**Deliverable:** Full 4-day journey with checkpoints, escalating difficulty, and safe zones between days

---

## Phase 10: Boss Encounters
**Status:** Not Started
**Goal:** Epic boss fights at the end of each day

- [ ] Design boss encounter framework (phases, patterns)
- [ ] Day 1 Boss: Cult Saboteur Captain (humanoid, multi-phase)
- [ ] Day 2 Boss: Corrupted Engine Beast (mechanical/organic hybrid)
- [ ] Day 3 Boss: Temporal Phantom (eldritch, reality-warping)
- [ ] Day 4 Boss: The Cargo Itself (final encounter, multiple forms)
- [ ] Boss health bars and phase indicators
- [ ] Boss arenas (dedicated train sections or environments)
- [ ] Boss-specific music and atmosphere
- [ ] Victory rewards (XP, unique items, checkpoint unlock)

**Deliverable:** 4 unique boss encounters, each more challenging and mechanically complex

---

## Phase 11: Skills & Abilities
**Status:** Not Started
**Goal:** Combat skills and field skills for build diversity

- [ ] Skill system architecture (active vs passive, unlocks)
- [ ] Implement 5-8 combat skills (steam burst, counter parry, rifle flourish, etc.)
- [ ] Implement 5-8 field skills (lockpicking, engineering, negotiation, perception)
- [ ] Skill unlock UI (choose on level-up)
- [ ] Skill activation system (cooldowns, resource costs)
- [ ] Field skill integration with world (locked chests, dialog options, shortcuts)
- [ ] Skill tree or progression path
- [ ] Respec system (optional, limited use)

**Deliverable:** Diverse skill system enabling different playstyles and build strategies

---

## Phase 12: Pocket Watch & Time Loop Polish
**Status:** Not Started
**Goal:** Refined time-loop mechanics and narrative integration

- [ ] Pocket watch UI element (HUD indicator)
- [ ] Death cutscene with watch activation
- [ ] Time rewind visual effect
- [ ] Loop count tracking and display
- [ ] NPC dialogue variations based on loop count
- [ ] Event variations per loop (subtle changes, new encounters)
- [ ] Secrets/easter eggs unlocked after X loops
- [ ] Loop-based achievements/milestones
- [ ] Narrative callbacks and foreshadowing

**Deliverable:** Polished time-loop experience with reactive world and evolving narrative

---

## Phase 13: The Cargo & Ward System
**Status:** Not Started
**Goal:** Implement cargo mechanics, ward integrity, and eldritch influence

- [ ] Cargo car environment (warded, atmospheric)
- [ ] Ward integrity system (visual indicators, gameplay effects)
- [ ] Ward repair mechanic (field skill, resource-based)
- [ ] Cargo influence effects (sanity, visual distortion)
- [ ] Sanity system (fluctuates near cargo/eldritch enemies)
- [ ] Low sanity gameplay effects (visual distortion, audio cues, hallucinations)
- [ ] Cargo-related events (attempted breaches, cultist sabotage)
- [ ] Narrative integration (NPC reactions, story beats)

**Deliverable:** Cargo as central narrative and mechanical element, with ward and sanity systems

---

## Phase 14: NPC System & Narrative
**Status:** Not Started
**Goal:** Fleshed-out NPCs with dialogue, quests, and character arcs

- [ ] Dialogue system (text boxes, portraits, choices)
- [ ] Create key NPCs (researcher, conductor, mechanic, passengers)
- [ ] NPC character arcs across loops
- [ ] Side objectives/quests from NPCs
- [ ] NPC survival/death states affecting story
- [ ] Relationship tracking (trust, suspicion)
- [ ] Loop-aware dialogue (NPCs reference past runs subtly)
- [ ] Environmental storytelling (notes, logs, observations)

**Deliverable:** Rich NPC interactions, side quests, and evolving narrative threads

---

## Phase 15: UI/UX Polish
**Status:** Not Started
**Goal:** Complete, polished UI for all game systems

- [ ] Main menu (new game, continue, settings, credits)
- [ ] Pause menu (resume, stats, inventory, map, quit)
- [ ] HUD (HP, stamina, ward integrity, pocket watch indicator)
- [ ] Inventory/equipment screen (grid-based, weight management)
- [ ] Level-up screen (flip-card animation, stat distribution)
- [ ] Skill selection UI
- [ ] Dialogue UI with character portraits
- [ ] Bestiary/codex screen
- [ ] Settings menu (graphics, audio, controls, accessibility)
- [ ] Tutorial tooltips and onboarding

**Deliverable:** Complete, intuitive, and visually cohesive UI across all game systems

---

## Phase 16: Audio & Music
**Status:** Not Started
**Goal:** Complete audio design and adaptive music system

- [ ] Compose/source main theme
- [ ] Day-specific music tracks
- [ ] Boss fight music (4 tracks)
- [ ] Ambient train sounds (steam, wheels, wind)
- [ ] Combat SFX (weapon hits, enemy sounds, player actions)
- [ ] UI SFX (menu navigation, level-up, notifications)
- [ ] Dynamic music system (layers for combat/exploration)
- [ ] Audio mixing and mastering
- [ ] Accessibility options (subtitles, visual cues for audio)

**Deliverable:** Full audio experience with adaptive music and comprehensive SFX library

---

## Phase 17: Art & Animation Polish
**Status:** Not Started
**Goal:** Final art pass and animation refinement

- [ ] Finalize player sprite and animations (all states, weapons)
- [ ] Finalize enemy sprites and animations (all types, attacks)
- [ ] Boss sprite and animation polish
- [ ] Train car environmental art (background layers, props, lighting)
- [ ] Parallax backgrounds (exterior environment, Mawlands)
- [ ] VFX (hit sparks, magic effects, steam, eldritch distortion)
- [ ] Cutscene art (death sequence, boss intros, endings)
- [ ] Title screen art
- [ ] Icon and promotional art

**Deliverable:** Visually polished game with cohesive 16-bit steampunk aesthetic

---

## Phase 18: Balancing & Tuning
**Status:** Not Started
**Goal:** Comprehensive balance pass and difficulty tuning

- [ ] Combat balance (player damage, enemy health, stamina costs)
- [ ] XP curve and level progression pacing
- [ ] Enemy placement and encounter design
- [ ] Boss difficulty and attack patterns
- [ ] Weapon balance (damage, speed, resource costs)
- [ ] Skill balance (power, cooldowns, utility)
- [ ] Economy balance (shop prices, resource drops)
- [ ] Difficulty modes (optional: easy, normal, hard)
- [ ] Accessibility options (assist mode, adjustable difficulty sliders)

**Deliverable:** Well-balanced game with fair, rewarding difficulty curve

---

## Phase 19: Testing & Bug Fixing
**Status:** Not Started
**Goal:** Comprehensive QA and bug resolution

- [ ] Internal playtesting (full runs, edge cases)
- [ ] Unit tests for core systems (combat, progression, save/load)
- [ ] Performance optimization (60 FPS target on modest hardware)
- [ ] Save/load stress testing
- [ ] Collision and physics bug fixes
- [ ] UI/UX bug fixes and usability improvements
- [ ] Balance adjustments based on playtesting feedback
- [ ] Closed beta testing (friends, community)
- [ ] Bug tracker management and prioritization

**Deliverable:** Stable, polished game ready for release

---

## Phase 20: Launch Preparation & Release
**Status:** Not Started
**Goal:** Prepare and execute game launch

- [ ] Create Steam store page (screenshots, trailer, description)
- [ ] Build demo version (first day or two)
- [ ] Marketing materials (trailer, gifs, key art)
- [ ] Press kit and review copies
- [ ] Community setup (Discord, social media)
- [ ] Launch trailer production
- [ ] Final build testing on all platforms
- [ ] Day-one patch preparation
- [ ] Launch day monitoring and support

**Deliverable:** Successful game launch on Steam

---

## Post-Launch (Future Phases)

### Phase 21: Community Support & Updates
- Bug fixes and patches
- Balance adjustments based on player feedback
- Quality of life improvements
- Achievement tracking and leaderboards

### Phase 22: Content Expansion (DLC/Updates)
- Additional character classes (different starting loadouts)
- Alternative train routes (new environments)
- New artifact types (alternate campaigns)
- Challenge modes (speedrun, permadeath, limited resources)
- New Game+ with increased difficulty and rewards

### Phase 23: Porting & Accessibility
- Console ports (Nintendo Switch, PlayStation, Xbox)
- Mobile consideration (if viable)
- Additional language localizations
- Enhanced accessibility features

---

## Current Priority

**Start Here:** Phase 0 → Phase 1 → Phase 2

The first three phases establish the foundation for the entire game. Without tight player movement and satisfying combat, the rest of the game won't matter. Focus on making the player character feel great to control before building out systems.
