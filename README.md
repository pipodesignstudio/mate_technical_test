# mate_technical_test

A lightweight Flutter take-home built with a minimalist, stateless widget approach. The goal was to mirror the provided Figma screens closely while leaning on native Flutter components to keep the UI feeling consistent and responsive.

## Highlights
- Stateless-first structure: most widgets are stateless and composed for clarity and reuse.
- Figma fidelity: layout, spacing, and styling aim to match the design without over-custom widgets.
- Native components: prefers stock Flutter widgets over heavy custom solutions to stay predictable.
- Few dependencies: relies on a small set of external packages to keep the project lean and easy to maintain.
- Simple theming: colors and typography are organized to make future tweaks straightforward.

## Project structure
- `lib/main.dart`: app entry point and top-level setup.
- `lib/features/`: feature-specific screens and widgets.
- `lib/shared/`: shared UI elements and utilities.

## Known problems
- A more formal theme system (colors, text styles, spacing) would help standardize the UI with more time.
- Some shapes (e.g., the arcs) could be made more responsive and adaptive across devices specially with the avatars.
- Prioritized speed of delivery over a fully consistent architecture; refactoring for stronger structure is a future goal.

## Notes
- The code favors readability over cleverness; components are intentionally small.
- External deps are minimal; add-ons are chosen only when they improve DX or match the design.
