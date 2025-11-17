# Technical Specification

This is the technical specification for the spec detailed in @.agent-os/specs/2025-11-05-player-movement-controls/spec.md

## Technical Requirements

### Player Character Architecture

**Node Structure:**
- `Player` (CharacterBody2D)
  - `Sprite2D` - Visual representation with placeholder sprite
  - `CollisionShape2D` - Rectangular collision box matching sprite bounds
  - `AnimationPlayer` - Controls sprite frame animations
  - `Camera2D` - Follows player with smooth interpolation
  - `PlayerController` (GDScript) - Main controller script

**Script Components:**
- `player_controller.gd` - Main player logic, state machine, input handling
- Constants for tuning: speed, acceleration, jump force, gravity, air control

### Physics Parameters

**Movement Constants (Tunable):**
```gdscript
const SPEED = 120.0              # Max horizontal speed (pixels/sec)
const ACCELERATION = 800.0        # Horizontal acceleration
const FRICTION = 1000.0          # Deceleration when no input
const JUMP_VELOCITY = -300.0     # Initial jump force (negative = up)
const GRAVITY = 980.0            # Gravity force (pixels/sec²)
const AIR_CONTROL = 0.8          # Air movement multiplier (0.0-1.0)
const JUMP_BUFFER_TIME = 0.1     # Seconds to buffer jump input
const COYOTE_TIME = 0.1          # Seconds of grace after leaving platform
```

**Physics Behavior:**
- Use `CharacterBody2D.velocity` for movement
- Call `move_and_slide()` every physics frame
- Apply gravity when not on floor: `velocity.y += GRAVITY * delta`
- Ground detection via `is_on_floor()` method
- Variable jump height: release jump button early to apply negative force

### State Machine Implementation

**States:**
1. **IDLE** - No input, on ground, velocity near zero
2. **RUNNING** - Horizontal input, on ground
3. **JUMPING** - Upward velocity, not on ground
4. **FALLING** - Downward velocity, not on ground

**Transitions:**
- IDLE → RUNNING: Horizontal input detected
- IDLE/RUNNING → JUMPING: Jump input + on ground
- JUMPING → FALLING: Velocity.y > 0
- JUMPING/FALLING → IDLE/RUNNING: Land on ground

**Implementation:**
- Use enum for state tracking: `enum State { IDLE, RUNNING, JUMPING, FALLING }`
- Current state variable: `var current_state: State = State.IDLE`
- State transition logic in `_physics_process(delta)`

### Input Handling

**Input Actions (Configure in Project Settings → Input Map):**
- `move_left` - A, Left Arrow, Gamepad D-pad Left
- `move_right` - D, Right Arrow, Gamepad D-pad Right
- `jump` - Space, Gamepad A button

**Input Processing:**
```gdscript
var input_direction = Input.get_axis("move_left", "move_right")
var jump_pressed = Input.is_action_just_pressed("jump")
var jump_released = Input.is_action_just_released("jump")
```

**Jump Buffering:**
- Store jump input for JUMP_BUFFER_TIME seconds
- Execute jump if player lands within buffer window
- Improves responsiveness for fast-paced gameplay

**Coyote Time:**
- Track time since leaving ground
- Allow jump input for COYOTE_TIME seconds after walking off platform
- Makes platforming more forgiving

### Animation System

**Animation States:**
- `idle` - 2-4 frame loop, subtle breathing motion
- `run` - 6-8 frame loop, fast cycle for running
- `jump` - 1-2 frames for rising
- `fall` - 1-2 frames for falling

**Animation Triggers:**
- Check `current_state` each frame
- Play corresponding animation via `$AnimationPlayer.play("animation_name")`
- Flip sprite horizontally based on velocity direction: `$Sprite2D.flip_h = velocity.x < 0`

**Placeholder Sprite:**
- 16x16 or 32x32 pixel simple rectangle/stick figure
- Use Godot's built-in shapes or create simple PNG
- Color-coded for visibility: bright color against dark background

### Camera System

**Camera Configuration:**
- `Camera2D` as child of Player node
- `position_smoothing_enabled = true`
- `position_smoothing_speed = 5.0` (tunable)
- `limit_left`, `limit_right`, `limit_top`, `limit_bottom` set to train car bounds

**Camera Behavior:**
- Follows player automatically (no extra code needed)
- Smoothing prevents jarring movement
- Limits prevent showing empty space outside train car

### Test Environment Scene

**Train Car Layout:**
- Static floor: 320 pixels wide, 16 pixels tall
- Platform at mid-height for testing jump height
- Walls on left/right edges (16 pixels tall, full height)
- Background color: dark sepia/brown for train interior aesthetic

**Node Structure:**
- `TestTrainCar` (Node2D)
  - `Floor` (StaticBody2D + CollisionShape2D + ColorRect)
  - `Platform` (StaticBody2D + CollisionShape2D + ColorRect)
  - `WallLeft` (StaticBody2D + CollisionShape2D + ColorRect)
  - `WallRight` (StaticBody2D + CollisionShape2D + ColorRect)
  - `Player` (instanced Player scene)

**Collision Layers:**
- Layer 1: Player
- Layer 2: Environment (floor, platforms, walls)
- Player collides with Layer 2
- Environment doesn't collide with itself

## Performance Criteria

- Target: 60 FPS on modest hardware
- Player physics updates every `_physics_process(delta)` call (60 times/sec)
- Minimal draw calls (simple sprites, no complex shaders yet)
- No performance issues expected at this stage

## Testing Approach

**Manual Testing Checklist:**
1. Player moves left/right smoothly
2. Player accelerates/decelerates naturally
3. Jump height varies with button hold duration
4. Player can control movement in mid-air
5. Landing feels responsive, no sliding
6. Animations transition correctly between states
7. Sprite flips direction based on movement
8. Camera follows smoothly without jitter
9. Player cannot pass through walls/floor
10. Controls feel responsive with no input lag

**Future Automated Testing:**
- Unit tests for state transitions (Phase 19: Testing & QA)
- Input simulation tests (later phase)
