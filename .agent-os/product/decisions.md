# Product Decisions

This file tracks significant technical, product, and business decisions made during development. Each decision includes context, rationale, and alternatives considered.

---

## 2025-11-05: Choose Godot 4.3 as Game Engine

**ID:** DEC-001
**Status:** Accepted
**Category:** Technical

### Decision

Use Godot 4.3 as the primary game engine with GDScript for development.

### Context

First-time game developer needs an accessible, well-documented engine suitable for 2D pixel-art action games with complex combat systems. The game requires tight controls, state machines, animation systems, and save/load functionality.

### Rationale

- **Free & Open Source:** No licensing costs, full control
- **2D-Focused:** Excellent 2D tooling, pixel-perfect rendering built-in
- **Beginner-Friendly:** GDScript is Python-like, gentle learning curve
- **Community:** Strong tutorials, forums, and asset ecosystem
- **Node System:** Intuitive scene/node architecture for game objects
- **Built-in Tools:** Animation editor, tilemap system, state machines, signals
- **Cross-Platform:** Easy exports to Windows, macOS, Linux, and consoles later

### Alternatives Considered

- **Unity:** More resources/tutorials but overkill for 2D, steeper learning curve, recent licensing controversies
- **GameMaker Studio:** Good for 2D but proprietary scripting language, limited flexibility
- **Custom Engine:** Too ambitious for first game project
- **Unreal Engine:** Overkill for 2D pixel art, performance overhead

### Implications

- Learn GDScript and Godot's node-based architecture
- Follow Godot best practices for 2D games
- Leverage Godot's built-in physics, animation, and scene management
- Future porting to consoles may require additional work but is feasible

---

## 2025-11-05: Start with Phase 0 → Phase 2 (Foundation → Combat)

**ID:** DEC-002
**Status:** Accepted
**Category:** Process

### Decision

Focus development on Phase 0 (setup), Phase 1 (player movement), and Phase 2 (core combat) before expanding to other systems.

### Context

First-time game developer with comprehensive design documentation but no code yet. Need to establish a solid foundation and prove core gameplay mechanics work before building out time-loop, progression, or narrative systems.

### Rationale

- **Validate Core Feel:** Player movement and combat are the foundation—if these don't feel good, nothing else matters
- **Learn by Doing:** Build familiarity with Godot by implementing fundamental systems first
- **Reduce Risk:** Prove the game is fun to play before investing in complex meta-systems
- **Iterative Development:** Can refine combat and movement based on playtesting before locking in progression mechanics
- **Motivation:** Playable prototype early keeps motivation high

### Alternatives Considered

- **Full Feature Development:** Build all systems in parallel (rejected: too complex, high risk of burnout)
- **Narrative First:** Start with story/dialogue systems (rejected: combat is the core experience)
- **Asset Creation First:** Create all art/audio before coding (rejected: hard to iterate without gameplay feedback)

### Implications

- Time-loop, progression, and narrative systems come later (Phase 4+)
- Early prototype will be "combat demo" without meta-progression
- May need to refactor some systems when integrating time-loop mechanics
- Focus playtest feedback on "does this feel good to play?" before worrying about content depth

---

## Future Decisions

As development progresses, document major decisions here:
- Pixel art resolution choices
- Combat system architecture (hitbox approach, damage calculation)
- Save system design
- Difficulty balancing philosophy
- Scope cuts or feature additions
- Technical pivots

---

**Decision Template for Future Entries:**

```markdown
## YYYY-MM-DD: [Decision Title]

**ID:** DEC-XXX
**Status:** [Proposed/Accepted/Deprecated]
**Category:** [technical/product/business/process]

### Decision

[One sentence summary]

### Context

[Why this decision was needed]

### Rationale

[Why this approach was chosen]

### Alternatives Considered

[What else was evaluated]

### Implications

[What this means for development]
```
