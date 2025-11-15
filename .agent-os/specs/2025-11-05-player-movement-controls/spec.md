# Spec Requirements Document

> Spec: Player Movement & Controls
> Created: 2025-11-05

## Overview

Implement a responsive player character controller with basic movement (walk, run, jump) and physics-based interactions for a 16-bit side-scrolling action RPG. This establishes the foundation for all gameplay mechanics, ensuring tight, satisfying controls that feel responsive and precise in the spirit of classic SNES-era platformers and modern action games like Salt and Sanctuary.

## User Stories

### Responsive Character Movement

As a player, I want to move my character left and right smoothly, so that I can navigate the train cars and position myself strategically during exploration and combat.

**Workflow:**
- Player presses left/right arrow keys or A/D keys (or gamepad left stick/d-pad)
- Character immediately begins moving in that direction with appropriate acceleration
- Character continues moving at consistent speed while key is held
- Character decelerates smoothly when key is released
- Movement feels responsive with minimal input lag
- Animations transition smoothly between idle, walk, and run states

### Precise Jumping Mechanics

As a player, I want to jump with variable height control, so that I can navigate platforming challenges and dodge enemy attacks with precision.

**Workflow:**
- Player presses spacebar or gamepad A button to jump
- Character leaves the ground with upward velocity
- Holding jump button longer results in higher jump (up to maximum)
- Releasing jump button early results in shorter jump arc
- Player maintains air control (can adjust horizontal movement mid-jump)
- Character applies realistic gravity for satisfying jump arc
- Landing feels solid with appropriate animation and no sliding

### Visual Feedback and Animation

As a player, I want clear visual feedback for my character's actions, so that movement feels responsive and I can anticipate my character's behavior.

**Workflow:**
- Idle animation plays when standing still
- Run animation plays when moving horizontally
- Jump animation plays when airborne (rising vs falling states)
- Character sprite flips horizontally based on movement direction
- Smooth animation transitions between states
- Camera follows player smoothly without jarring movements

## Spec Scope

1. **Player Character Scene** - Create a reusable CharacterBody2D node with sprite, collision shape, and animation player configured for pixel-perfect rendering.

2. **Movement State Machine** - Implement a finite state machine managing idle, running, jumping, and falling states with clean transitions.

3. **Physics-Based Movement** - Apply velocity-based movement with gravity, acceleration, deceleration, jump force, and air control tuned for satisfying gameplay feel.

4. **Input Handling** - Support both keyboard (WASD/arrows) and gamepad input with configurable key bindings and dead zones.

5. **Camera System** - Implement a Camera2D that smoothly follows the player with boundaries to prevent showing areas outside the train car.

6. **Test Environment** - Create a simple train car scene with platforms and collision shapes to test movement and jumping.

7. **Placeholder Animations** - Create basic idle, run, and jump animation states using a simple placeholder sprite (can be replaced with final art later).

## Out of Scope

- Combat mechanics (attack, dodge, damage)
- Advanced movement (wall jump, dash, crouch, ledge grab)
- Stamina system
- Enemy interactions
- Multiple character states beyond basic movement
- Final pixel art sprites and animations (using placeholders)
- Sound effects and audio feedback
- UI elements (health bar, stamina bar)
- Save/load functionality
- Multiple train cars or level progression

## Expected Deliverable

1. **Playable Character Controller** - A player character in a test scene that responds to keyboard/gamepad input with smooth left/right movement, variable-height jumping, and appropriate gravity, feeling tight and responsive.

2. **Working Animation System** - Character displays idle, run, and jump animations that transition smoothly based on player state, with sprite flipping for directional movement.

3. **Test Train Car Environment** - A functional test scene representing a single train car interior with platforms, walls, and collision boundaries where the player can freely move and test jumping mechanics.
