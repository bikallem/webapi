///|
/// SVG example demonstrating create_element_ns, SVG shapes, and getBBox.
fn main {
  let doc = @webapi.document()
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let ns = "http://www.w3.org/2000/svg"

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc
    .create_element("h1")
    .unsafe_into()
  heading.set_text_content("SVG API")

  // Create SVG canvas
  let svg : @webapi.SVGSVGElement = doc
    .create_element_ns(ns, "svg")
    .unsafe_into()
  svg
  ..set_attribute("id", "svg-canvas")
  ..set_attribute("width", "400")
  ..set_attribute("height", "300")
  .set_attribute("style", "border: 1px solid #ccc; background: #fafafa;")

  // Circle
  let circle : @webapi.SVGCircleElement = doc
    .create_element_ns(ns, "circle")
    .unsafe_into()
  circle
  ..set_attribute("id", "my-circle")
  ..set_attribute("cx", "100")
  ..set_attribute("cy", "100")
  ..set_attribute("r", "50")
  .set_attribute("fill", "#4a90d9")
  svg.append_child(circle) |> ignore

  // Rectangle
  let rect : @webapi.SVGRectElement = doc
    .create_element_ns(ns, "rect")
    .unsafe_into()
  rect
  ..set_attribute("id", "my-rect")
  ..set_attribute("x", "200")
  ..set_attribute("y", "50")
  ..set_attribute("width", "120")
  ..set_attribute("height", "80")
  .set_attribute("fill", "#e74c3c")
  svg.append_child(rect) |> ignore

  // Text
  let text : @webapi.SVGTextElement = doc
    .create_element_ns(ns, "text")
    .unsafe_into()
  text
  ..set_attribute("id", "my-text")
  ..set_attribute("x", "100")
  ..set_attribute("y", "250")
  ..set_attribute("text-anchor", "middle")
  ..set_attribute("font-size", "20")
  .set_text_content("MoonBit SVG")
  svg.append_child(text) |> ignore

  // BBox button
  let bbox_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  bbox_btn..set_attribute("id", "bbox-btn").set_text_content("Get Circle BBox")
  let bbox_output : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  bbox_output.set_attribute("id", "bbox-output")
  bbox_btn.add_event_listener("click", fn(_event) {
    let bbox = circle.get_b_box()
    let bx = @webapi.TDOMRectReadOnly::x(bbox).to_string()
    let by = @webapi.TDOMRectReadOnly::y(bbox).to_string()
    let bw = @webapi.TDOMRectReadOnly::width(bbox).to_string()
    let bh = @webapi.TDOMRectReadOnly::height(bbox).to_string()
    bbox_output.set_text_content(
      "BBox: x=" + bx + ", y=" + by + ", w=" + bw + ", h=" + bh,
    )
  })

  // Color button
  let color_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  color_btn..set_attribute("id", "color-btn").set_text_content("Change Colors")
  color_btn.add_event_listener("click", fn(_event) {
    circle.set_attribute("fill", "#2ecc71")
    rect.set_attribute("fill", "#9b59b6")
  })

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, svg, bbox_btn, bbox_output, color_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
