# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

wilhelm_renderer_symbols is a companion crate for [wilhelm_renderer](https://github.com/algonents/wilhelm_renderer) that provides a library of standard marker shapes organized by theme. It is pure Rust with no native code, no build.rs, and no C/C++ dependencies.

Symbols generate polygon vertices centered at the origin for a given bounding radius. They render through wilhelm_renderer's existing `Polygon` → ear-clipping triangulation → `GL_TRIANGLES` pipeline.

## Relationship to wilhelm_renderer

- **Depends on** `wilhelm_renderer` (published on crates.io) for `Polygon`, `ShapeKind`, `ShapeRenderable`, `ShapeStyle`
- **Does not** modify or extend wilhelm_renderer's `ShapeKind` enum — symbols produce `ShapeKind::Polygon(Polygon::new(vertices))`, keeping the coupling minimal
- **Independent release cadence** — version is not locked to wilhelm_renderer
- For local development against an unpublished wilhelm_renderer, use `[patch.crates-io]` in Cargo.toml:
  ```toml
  [patch.crates-io]
  wilhelm_renderer = { path = "../wilhelm_renderer" }
  ```

## Build Commands

```bash
# Build the library
cargo build

# Run the example
cargo run --example symbols

# Run tests
cargo test
```

### Build Requirements

Same as wilhelm_renderer (C/C++ compiler, CMake, platform GL libraries) since this crate depends on it transitively.

## Crate Structure

```
src/
├── lib.rs      # Crate root, re-exports theme modules
└── core.rs     # Core geometric markers (Circle, Cross, Diamond, Square, Star, Triangle, Wye)
```

### Planned themes (not yet implemented)

- `aviation` — Aircraft symbols, waypoint markers, NAVAID symbols (VOR, NDB), airport markers
- `weather` — Weather station symbols, front markers, precipitation types

New themes are added as modules under `src/` and exported from `lib.rs`.

## Design Decisions

- **Bounding radius, not area.** Symbols are parameterized by the distance from center to outermost vertex (pixels). This is more intuitive for operational displays where operators think "10-pixel marker" rather than "100-square-pixel marker." D3 uses area; we chose radius for the radar/ATM context.

- **Pure vertex generators.** Each `SymbolType::vertices(radius)` returns `Vec<(f32, f32)>`. No GPU code, no shader references, no rendering dependencies beyond the type signature. This keeps the crate testable without a GPU context and makes future extraction or reuse trivial.

- **Concave symbols work automatically.** Cross, Star, and Wye produce concave polygons that triangulate correctly through wilhelm_renderer's ear-clipping algorithm. No special handling needed on the consumer side.

- **Scaling invariant.** All symbol vertices fit within a circle of the given radius. The bounding-radius contract is tested: every vertex distance ≤ radius, and at least one vertex touches the radius.

## Key Files

- `src/lib.rs` — Crate root, theme module exports
- `src/core.rs` — `SymbolType` enum, vertex generation functions, and 9 unit tests
- `examples/symbols.rs` — Visual demo of all 7 core symbols at two sizes

## Testing

```bash
cargo test
```

9 tests covering:
- Vertex count per symbol type (7 tests)
- All vertices within bounding radius
- At least one vertex touches bounding radius
