# Tech Stack

## Game Engine & Runtime
- **Game Engine:** Godot 4.3
- **Language:** GDScript (primary), C# (optional for performance-critical systems)
- **Version Control:** Git + GitHub/GitLab
- **Target Platforms:** PC (Windows, macOS, Linux) - Steam initial launch

## Development Tools
- **IDE:** Godot Editor (built-in)
- **External Code Editor:** VS Code with GDScript extensions (optional)
- **Pixel Art:** Aseprite (primary), GIMP (free alternative)
- **Animation:** Aseprite for sprite sheets, Godot AnimationPlayer for in-engine
- **Audio Tools:** Audacity (editing), LMMS or BeepBox (composition)
- **Level Design:** Godot's TileMap system + custom train car scenes

## Architecture Patterns
- **Scene Structure:** Node-based composition (Godot standard)
- **State Management:** Finite State Machines for player, enemies, and game flow
- **Combat System:** Signal-based event system for hit detection, damage calculation
- **Progression:** Singleton autoload for persistent data (PlayerStats, TimeLoopManager)
- **Save System:** JSON-based save files for run progression and unlocks

## Core Systems to Build
- **Player Controller:** KinematicBody2D with state machine (idle, run, jump, attack, dodge, hurt, death)
- **Combat Framework:** Hitbox/hurtbox collision layers, stamina system, damage calculation
- **Enemy AI:** Behavior trees or simple FSM depending on complexity
- **Time Loop Manager:** Singleton tracking run count, unlocked checkpoints, persistent upgrades
- **Level Progression:** Scene management for train cars, day transitions, checkpoints
- **UI System:** Control nodes for HUD, menus, level-up interface (flip-card animation)

## Asset Pipeline
- **Sprite Resolution:** 320x180 base (scaled to 1920x1080 or windowed)
- **Tile Size:** 16x16 or 32x32 pixels (consistent grid)
- **Animation Frame Rate:** 8-12 FPS for pixel art (adjustable per animation)
- **Audio Format:** OGG for music, WAV for SFX
- **Compression:** Lossless for pixel art (PNG), compressed OGG for audio

## Testing & Quality
- **Unit Testing:** GUT (Godot Unit Testing) for core systems
- **Playtesting:** Manual gameplay testing for combat feel and balance
- **Performance:** Godot Profiler for optimization
- **Version Control:** Git with feature branches, main branch protected

## Deployment
- **Build Pipeline:** Godot export templates for each platform
- **Distribution:** Steam (initial), itch.io (beta/demo)
- **CI/CD:** GitHub Actions for automated builds (future)
- **Versioning:** Semantic versioning (MAJOR.MINOR.PATCH)

## Third-Party Assets (Planned)
- **Fonts:** Pixel fonts from itch.io or Google Fonts (free/commercial-friendly)
- **SFX Starter Pack:** Freesound.org or paid asset packs
- **Music:** Custom composition or royalty-free libraries (later phase)

## Dependencies
- **Godot Plugins:**
  - GUT (testing framework)
  - Dialogic (if complex dialogue needed)
  - Custom state machine plugin (or built in-house)

## Development Philosophy
- **Start simple:** Core movement and combat first
- **Iterate fast:** Prototype mechanics before polishing
- **Modular design:** Reusable components for enemies, weapons, train cars
- **Performance-conscious:** Target 60 FPS on modest hardware
- **Pixel-perfect rendering:** Maintain crisp pixel art at all resolutions
