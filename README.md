
<img src="https://raw.githubusercontent.com/algonents/wilhelm_renderer/master/images/wr_logo_v3.svg" alt="Wilhelm Renderer" width="340">

# wilhelm_renderer_symbols

Symbol library for [wilhelm_renderer](https://crates.io/crates/wilhelm_renderer) — standard marker shapes organized by theme.

Each symbol generates polygon vertices centered at the origin for a given bounding radius. Symbols render through wilhelm_renderer's existing `Polygon` → triangulation → `GL_TRIANGLES` pipeline with no additional GPU setup required.

## Themes

| Theme | Symbols | Description |
|-------|---------|-------------|
| **core** | Circle, Cross, Diamond, Square, Star, Triangle, Wye | Basic geometric markers inspired by D3's symbol set |

## Quick Start

```toml
[dependencies]
wilhelm_renderer = "0.10"
wilhelm_renderer_symbols = "0.1"
```

```rust
use wilhelm_renderer::core::Color;
use wilhelm_renderer::graphics2d::shapes::{Polygon, ShapeKind, ShapeRenderable, ShapeStyle};
use wilhelm_renderer_symbols::core::SymbolType;

// Create a star marker with a 20-pixel bounding radius
let mut star = ShapeRenderable::from_shape(
    ShapeKind::Polygon(Polygon::new(SymbolType::Star.vertices(20.0))),
    ShapeStyle::fill(Color::from_rgb(1.0, 0.78, 0.20)),
);
star.set_position(400.0, 300.0);
```

## Bounding Radius

All symbols are parameterized by a **bounding radius** — the distance from the center to the outermost vertex. A Star and a Square with the same radius both fit inside the same bounding circle, making sizing predictable across different symbol types.

## Issues

Report issues on [GitHub](https://github.com/algonents/wilhelm_renderer_symbols/issues).
