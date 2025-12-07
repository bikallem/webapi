///|
/// Canvas Drawing Demo - Beautiful Scenery
/// Demonstrates gradients, shapes, paths, and text using the Canvas 2D API
fn main {
  // Create and append canvas
  let canvas : HTMLCanvasElement = document.create_element("canvas").into()
  canvas
  ..set_width(800)
  ..set_height(500)
  .set_attribute(
    "style", "border: 2px solid #333; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);",
  )
  document.get_element_by_id("app").unwrap().append_child(canvas) |> ignore

  // Get 2D context
  let ctx : CanvasRenderingContext2D = canvas.get_context("2d").unwrap().into()

  // Draw sky gradient
  let sky_gradient = ctx.create_linear_gradient(0.0, 0.0, 0.0, 300.0)
  sky_gradient
  ..add_color_stop(0.0, "#1e3c72")
  ..add_color_stop(0.5, "#2a5298")
  .add_color_stop(1.0, "#87CEEB")
  ctx..set_fill_style(sky_gradient).fill_rect(0.0, 0.0, 800.0, 300.0)

  // Draw sun with radial gradient
  let sun_gradient = ctx.create_radial_gradient(
    650.0, 80.0, 10.0, 650.0, 80.0, 60.0,
  )
  sun_gradient
  ..add_color_stop(0.0, "#FFE87C")
  ..add_color_stop(0.4, "#FFCC00")
  .add_color_stop(1.0, "#FF9900")
  ctx
  ..set_fill_style(sun_gradient)
  ..begin_path()
  ..arc(650.0, 80.0, 50.0, 0.0, 6.283185)
  .fill()

  // Sun rays
  ctx..set_stroke_style("#FFE87C").set_line_width(2.0)
  for i = 0; i < 12; i = i + 1 {
    let angle = i.to_double() * 0.523599 // 30 degrees in radians
    let x1 = 650.0 + 60.0 * @math.cos(angle)
    let y1 = 80.0 + 60.0 * @math.sin(angle)
    let x2 = 650.0 + 80.0 * @math.cos(angle)
    let y2 = 80.0 + 80.0 * @math.sin(angle)
    ctx..begin_path()..move_to(x1, y1)..line_to(x2, y2).stroke()
  }

  // Draw mountains
  ctx
  ..set_fill_style("#6B8E23")
  ..begin_path()
  ..move_to(0.0, 300.0)
  ..line_to(150.0, 180.0)
  ..line_to(300.0, 300.0)
  ..fill()
  ..set_fill_style("#556B2F")
  ..begin_path()
  ..move_to(200.0, 300.0)
  ..line_to(400.0, 150.0)
  ..line_to(600.0, 300.0)
  ..fill()
  ..set_fill_style("#4A5D23")
  ..begin_path()
  ..move_to(500.0, 300.0)
  ..line_to(700.0, 200.0)
  ..line_to(800.0, 300.0)
  .fill()

  // Draw grass with gradient
  let grass_gradient = ctx.create_linear_gradient(0.0, 300.0, 0.0, 500.0)
  grass_gradient
  ..add_color_stop(0.0, "#228B22")
  ..add_color_stop(0.5, "#32CD32")
  .add_color_stop(1.0, "#90EE90")
  ctx..set_fill_style(grass_gradient).fill_rect(0.0, 300.0, 800.0, 200.0)

  // Draw trees
  draw_tree(ctx, 100.0, 350.0, 1.0)
  draw_tree(ctx, 250.0, 380.0, 0.8)
  draw_tree(ctx, 450.0, 360.0, 1.2)
  draw_tree(ctx, 700.0, 370.0, 0.9)

  // Draw clouds
  draw_cloud(ctx, 150.0, 60.0, 1.0)
  draw_cloud(ctx, 400.0, 40.0, 0.8)
  draw_cloud(ctx, 550.0, 80.0, 0.6)

  // Draw a path/road
  ctx
  ..set_fill_style("#8B7355")
  ..begin_path()
  ..move_to(350.0, 500.0)
  ..line_to(450.0, 500.0)
  ..line_to(430.0, 300.0)
  ..line_to(370.0, 300.0)
  .fill()

  // Title text with shadow
  ctx
  ..set_font("bold 36px 'Georgia', serif")
  ..set_fill_style("rgba(0,0,0,0.3)")
  ..fill_text("MoonBit WebAPI Canvas Demo", 203.0, 463.0)
  ..set_fill_style("#FFFFFF")
  .fill_text("MoonBit WebAPI Canvas Demo", 200.0, 460.0)
}

///|
/// Draw a simple tree at the given position with scale
fn draw_tree(
  ctx : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  scale : Double,
) -> Unit {
  // Tree trunk
  ctx
  ..set_fill_style("#8B4513")
  .fill_rect(x - 10.0 * scale, y, 20.0 * scale, 60.0 * scale)

  // Tree foliage (three circles)
  ctx
  ..set_fill_style("#228B22")
  ..begin_path()
  ..arc(x, y - 20.0 * scale, 35.0 * scale, 0.0, 6.283185)
  ..fill()
  ..begin_path()
  ..arc(x - 25.0 * scale, y + 5.0 * scale, 30.0 * scale, 0.0, 6.283185)
  ..fill()
  ..begin_path()
  ..arc(x + 25.0 * scale, y + 5.0 * scale, 30.0 * scale, 0.0, 6.283185)
  ..fill()
}

///|
/// Draw a fluffy cloud at the given position with scale
fn draw_cloud(
  ctx : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  scale : Double,
) -> Unit {
  ctx
  ..set_fill_style("rgba(255, 255, 255, 0.9)")
  ..begin_path()
  ..arc(x, y, 30.0 * scale, 0.0, 6.283185)
  ..fill()
  ..begin_path()
  ..arc(x + 25.0 * scale, y - 10.0 * scale, 25.0 * scale, 0.0, 6.283185)
  ..fill()
  ..begin_path()
  ..arc(x + 50.0 * scale, y, 30.0 * scale, 0.0, 6.283185)
  ..fill()
  ..begin_path()
  ..arc(x + 25.0 * scale, y + 10.0 * scale, 20.0 * scale, 0.0, 6.283185)
  ..fill()
}
