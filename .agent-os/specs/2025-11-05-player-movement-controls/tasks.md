# Spec Tasks

## Tasks

- [x] 1. Configure Project Input Map
  - [x] 1.1 Open Project Settings → Input Map in Godot
  - [x] 1.2 Create `move_left` action (A, Left Arrow, Gamepad D-pad Left)
  - [x] 1.3 Create `move_right` action (D, Right Arrow, Gamepad D-pad Right)
  - [x] 1.4 Create `jump` action (Space, Gamepad A button)
  - [x] 1.5 Verify input actions are saved correctly

- [ ] 2. Create Player Character Scene
  - [ ] 2.1 Create new scene: `scenes/player.tscn` with CharacterBody2D as root
  - [ ] 2.2 Add Sprite2D node with placeholder 32x32 pixel sprite (colored rectangle)
  - [ ] 2.3 Add CollisionShape2D with RectangleShape2D matching sprite size
  - [ ] 2.4 Add AnimationPlayer node for future animations
  - [ ] 2.5 Add Camera2D node as child, enable position smoothing
  - [ ] 2.6 Save player scene

- [ ] 3. Implement Basic Movement Script
  - [ ] 3.1 Create `scripts/player_controller.gd` script
  - [ ] 3.2 Define movement constants (SPEED, ACCELERATION, FRICTION, GRAVITY)
  - [ ] 3.3 Implement `_physics_process(delta)` with gravity application
  - [ ] 3.4 Implement horizontal input handling with `Input.get_axis()`
  - [ ] 3.5 Apply acceleration/deceleration to velocity
  - [ ] 3.6 Call `move_and_slide()` to execute movement
  - [ ] 3.7 Attach script to Player CharacterBody2D
  - [ ] 3.8 Test basic left/right movement in a minimal test scene

- [ ] 4. Implement Jump Mechanics
  - [ ] 4.1 Add JUMP_VELOCITY constant to player script
  - [ ] 4.2 Detect jump input with `Input.is_action_just_pressed("jump")`
  - [ ] 4.3 Apply upward velocity when on ground and jump pressed
  - [ ] 4.4 Implement variable jump height (reduce upward velocity on early release)
  - [ ] 4.5 Add air control (reduce horizontal acceleration multiplier when airborne)
  - [ ] 4.6 Test jumping with different hold durations
  - [ ] 4.7 Tune jump feel (adjust JUMP_VELOCITY and GRAVITY values)

- [ ] 5. Implement State Machine
  - [ ] 5.1 Define State enum (IDLE, RUNNING, JUMPING, FALLING)
  - [ ] 5.2 Add `current_state` variable
  - [ ] 5.3 Create state transition logic based on velocity and floor detection
  - [ ] 5.4 Update state each physics frame
  - [ ] 5.5 Add debug print statements to verify state transitions
  - [ ] 5.6 Test state changes by moving, jumping, and landing

- [ ] 6. Create Placeholder Animations
  - [ ] 6.1 Create idle animation (2 frames, simple sprite variations)
  - [ ] 6.2 Create run animation (4-6 frames, simple movement cycle)
  - [ ] 6.3 Create jump animation (1-2 frames for rising)
  - [ ] 6.4 Create fall animation (1-2 frames for falling)
  - [ ] 6.5 Use AnimationPlayer to define animation tracks
  - [ ] 6.6 Set appropriate frame rates (8-12 FPS for pixel art)

- [ ] 7. Integrate Animations with State Machine
  - [ ] 7.1 Add animation playback logic to state machine
  - [ ] 7.2 Play "idle" animation when current_state is IDLE
  - [ ] 7.3 Play "run" animation when current_state is RUNNING
  - [ ] 7.4 Play "jump" animation when current_state is JUMPING
  - [ ] 7.5 Play "fall" animation when current_state is FALLING
  - [ ] 7.6 Implement sprite flipping based on velocity direction
  - [ ] 7.7 Test smooth animation transitions

- [ ] 8. Create Test Train Car Scene
  - [ ] 8.1 Create new scene: `scenes/test_train_car.tscn` (Node2D root)
  - [ ] 8.2 Add floor StaticBody2D with CollisionShape2D and visual ColorRect
  - [ ] 8.3 Add platform StaticBody2D at mid-height
  - [ ] 8.4 Add left and right wall StaticBody2D nodes
  - [ ] 8.5 Set collision layers (Layer 2 for environment)
  - [ ] 8.6 Instance player scene into train car
  - [ ] 8.7 Position player above floor at spawn point
  - [ ] 8.8 Add background color for train interior aesthetic

- [ ] 9. Configure Camera Boundaries
  - [ ] 9.1 Calculate train car bounds (left, right, top, bottom)
  - [ ] 9.2 Set Camera2D limit properties in player scene
  - [ ] 9.3 Test camera follows player within bounds
  - [ ] 9.4 Verify camera doesn't show empty space outside train car
  - [ ] 9.5 Adjust smoothing speed if needed

- [ ] 10. Implement Quality-of-Life Features
  - [ ] 10.1 Add jump buffering (store jump input for 0.1 seconds)
  - [ ] 10.2 Add coyote time (allow jump shortly after leaving platform)
  - [ ] 10.3 Test jump buffering by pressing jump before landing
  - [ ] 10.4 Test coyote time by walking off platform and jumping late
  - [ ] 10.5 Tune buffer and coyote time values for best feel

- [ ] 11. Polish and Tune Movement Feel
  - [ ] 11.1 Playtest movement extensively in test train car
  - [ ] 11.2 Adjust SPEED, ACCELERATION, FRICTION values for responsiveness
  - [ ] 11.3 Adjust JUMP_VELOCITY and GRAVITY for satisfying jump arc
  - [ ] 11.4 Adjust AIR_CONTROL for desired mid-air maneuverability
  - [ ] 11.5 Ensure movement feels tight and responsive (no floatiness)
  - [ ] 11.6 Document final tuned values in technical spec

- [ ] 12. Final Testing and Validation
  - [ ] 12.1 Test all movement directions (left, right, jump)
  - [ ] 12.2 Test edge cases (jumping into ceiling, running into walls)
  - [ ] 12.3 Test gamepad input (if available)
  - [ ] 12.4 Verify all animations play correctly
  - [ ] 12.5 Verify camera follows smoothly
  - [ ] 12.6 Verify 60 FPS performance in test scene
  - [ ] 12.7 Confirm all expected deliverables are met
  - [ ] 12.8 Document any issues or future improvements
