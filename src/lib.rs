//! Symbol library for [`wilhelm_renderer`](https://crates.io/crates/wilhelm_renderer).
//!
//! Provides a collection of standard marker shapes organized by theme. Each
//! symbol generates polygon vertices centered at the origin for a given
//! bounding radius, and renders through wilhelm_renderer's existing
//! `Polygon` → triangulation → `GL_TRIANGLES` pipeline.
//!
//! # Themes
//!
//! - [`core`] — Basic geometric markers (circle, cross, diamond, square, star, triangle, wye)
//!
//! # Usage
//!
//! ```ignore
//! use wilhelm_renderer::core::Color;
//! use wilhelm_renderer::graphics2d::shapes::{Polygon, ShapeKind, ShapeRenderable, ShapeStyle};
//! use wilhelm_renderer_symbols::core::SymbolType;
//!
//! let star = ShapeRenderable::from_shape(
//!     ShapeKind::Polygon(Polygon::new(SymbolType::Star.vertices(20.0))),
//!     ShapeStyle::fill(Color::from_rgb(1.0, 0.78, 0.20)),
//! );
//! ```

pub mod core;
