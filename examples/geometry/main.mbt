///|
/// Geometry API example demonstrating DOMPoint, DOMRect, DOMMatrix, and DOMQuad.
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("Geometry API")

  // Helper to read DOMPoint properties (avoids ambiguity between TDOMPoint and TDOMPointReadOnly)
  let px = fn(p : @webapi.DOMPoint) -> String {
    @webapi.TDOMPointReadOnly::x(p).to_string()
  }
  let py = fn(p : @webapi.DOMPoint) -> String {
    @webapi.TDOMPointReadOnly::y(p).to_string()
  }
  let pz = fn(p : @webapi.DOMPoint) -> String {
    @webapi.TDOMPointReadOnly::z(p).to_string()
  }
  let pw = fn(p : @webapi.DOMPoint) -> String {
    @webapi.TDOMPointReadOnly::w(p).to_string()
  }

  // Helper to read DOMRect properties
  let rx = fn(r : @webapi.DOMRect) -> String {
    @webapi.TDOMRectReadOnly::x(r).to_string()
  }
  let ry = fn(r : @webapi.DOMRect) -> String {
    @webapi.TDOMRectReadOnly::y(r).to_string()
  }
  let rw = fn(r : @webapi.DOMRect) -> String {
    @webapi.TDOMRectReadOnly::width(r).to_string()
  }
  let rh = fn(r : @webapi.DOMRect) -> String {
    @webapi.TDOMRectReadOnly::height(r).to_string()
  }

  // DOMPoint
  let point = @webapi.DOMPoint::new(x=10.0, y=20.0, z=5.0, w=1.0)
  let point_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  point_info
  ..set_attribute("id", "point-info")
  .set_text_content(
    "Point: x=" +
    px(point) +
    ", y=" +
    py(point) +
    ", z=" +
    pz(point) +
    ", w=" +
    pw(point),
  )

  // DOMRect
  let rect = @webapi.DOMRect::new(x=50.0, y=100.0, width=200.0, height=150.0)
  let rect_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  rect_info
  ..set_attribute("id", "rect-info")
  .set_text_content(
    "Rect: x=" +
    rx(rect) +
    ", y=" +
    ry(rect) +
    ", w=" +
    rw(rect) +
    ", h=" +
    rh(rect) +
    " (top=" +
    rect.top().to_string() +
    ", right=" +
    rect.right().to_string() +
    ", bottom=" +
    rect.bottom().to_string() +
    ", left=" +
    rect.left().to_string() +
    ")",
  )

  // DOMMatrix (identity)
  let matrix = @webapi.DOMMatrix::from_matrix()
  let ma = @webapi.TDOMMatrixReadOnly::a(matrix).to_string()
  let mb = @webapi.TDOMMatrixReadOnly::b(matrix).to_string()
  let mc = @webapi.TDOMMatrixReadOnly::c(matrix).to_string()
  let md = @webapi.TDOMMatrixReadOnly::d(matrix).to_string()
  let me_ = @webapi.TDOMMatrixReadOnly::e(matrix).to_string()
  let mf = @webapi.TDOMMatrixReadOnly::f(matrix).to_string()
  let is2d = @webapi.TDOMMatrixReadOnly::is2d(matrix).to_string()
  let is_id = @webapi.TDOMMatrixReadOnly::is_identity(matrix).to_string()
  let matrix_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  matrix_info
  ..set_attribute("id", "matrix-info")
  .set_text_content(
    "Matrix: a=" +
    ma +
    ", b=" +
    mb +
    ", c=" +
    mc +
    ", d=" +
    md +
    ", e=" +
    me_ +
    ", f=" +
    mf +
    ", is2D=" +
    is2d +
    ", isIdentity=" +
    is_id,
  )

  // DOMQuad
  let quad = @webapi.DOMQuad::new(
    p1=@webapi.DOMPointInit::new(x=0.0, y=0.0),
    p2=@webapi.DOMPointInit::new(x=100.0, y=0.0),
    p3=@webapi.DOMPointInit::new(x=100.0, y=100.0),
    p4=@webapi.DOMPointInit::new(x=0.0, y=100.0),
  )
  let bounds = quad.get_bounds()
  let quad_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  quad_info
  ..set_attribute("id", "quad-info")
  .set_text_content(
    "Quad bounds: x=" +
    rx(bounds) +
    ", y=" +
    ry(bounds) +
    ", w=" +
    rw(bounds) +
    ", h=" +
    rh(bounds),
  )

  // Transform button
  let transform_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  transform_btn
  ..set_attribute("id", "transform-btn")
  .set_text_content("Transform Point")
  let transform_output : @webapi.HTMLDivElement = doc
    .create_element("div")
    .into()
  transform_output.set_attribute("id", "transform-output")
  transform_btn.add_event_listener("click", fn(_event) {
    let translated = point.matrix_transform(
      matrix=@webapi.DOMMatrixInit::new(e=100.0, f=200.0),
    )
    transform_output.set_text_content(
      "Transformed: x=" + px(translated) + ", y=" + py(translated),
    )
  })

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, point_info, rect_info, matrix_info, quad_info, transform_btn, transform_output,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
