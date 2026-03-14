///|
/// ClassList Demo - Demonstrates DOMTokenList APIs
/// add, remove, toggle, contains, replace, and value
using @webapi {
  document,
  type HTMLDivElement,
  type HTMLButtonElement,
  type DOMTokenList,
  type Element,
}

///|
fn update_status(cl : DOMTokenList, status : HTMLDivElement) -> Unit {
  status.set_text_content("Classes: " + cl.value())
}

///|
fn main {
  let app : Element = document().get_element_by_id("app")

  // Create style element with CSS classes
  let style = document().create_element("style")
  style.set_text_content(
    ".highlight { background: yellow; } .active { border: 2px solid blue; } .hidden { opacity: 0.3; } .box { padding: 20px; margin: 10px; border: 1px solid #ccc; }",
  )
  app.append_child(style) |> ignore

  // Create heading
  let heading = document().create_element("h1")
  heading.set_text_content("ClassList Demo")
  app.append_child(heading) |> ignore

  // Create target div
  let target : HTMLDivElement = document().create_element("div").into()
  target
  ..set_attribute("id", "target")
  ..set_attribute("class", "box")
  .set_text_content("Target Element")
  app.append_child(target) |> ignore

  // Create status display
  let status : HTMLDivElement = document().create_element("div").into()
  status
  ..set_attribute("id", "class-status")
  .set_attribute(
    "style", "margin: 10px 0; padding: 8px; background: #f0f0f0; font-family: monospace;",
  )
  update_status(target.class_list(), status)
  app.append_child(status) |> ignore

  // Create has-result display
  let has_result : HTMLDivElement = document().create_element("div").into()
  has_result
  ..set_attribute("id", "has-result")
  .set_attribute(
    "style", "margin: 10px 0; padding: 8px; background: #e8e8e8; font-family: monospace;",
  )
  app.append_child(has_result) |> ignore

  // Create button container
  let btn_container : HTMLDivElement = document().create_element("div").into()
  btn_container.set_attribute("style", "margin: 10px 0;")
  app.append_child(btn_container) |> ignore

  // "Add highlight" button
  let add_btn : HTMLButtonElement = document().create_element("button").into()
  add_btn
  ..set_attribute("id", "add-btn")
  ..set_attribute("style", "padding: 8px 16px; margin: 4px; font-size: 1em;")
  ..set_text_content("Add highlight")
  .add_event_listener("click", fn(_event) {
    let cl = target.class_list()
    cl.add(["highlight"])
    update_status(cl, status)
  })
  btn_container.append_child(add_btn) |> ignore

  // "Remove highlight" button
  let remove_btn : HTMLButtonElement = document()
    .create_element("button")
    .into()
  remove_btn
  ..set_attribute("id", "remove-btn")
  ..set_attribute("style", "padding: 8px 16px; margin: 4px; font-size: 1em;")
  ..set_text_content("Remove highlight")
  .add_event_listener("click", fn(_event) {
    let cl = target.class_list()
    cl.remove(["highlight"])
    update_status(cl, status)
  })
  btn_container.append_child(remove_btn) |> ignore

  // "Toggle active" button
  let toggle_btn : HTMLButtonElement = document()
    .create_element("button")
    .into()
  toggle_btn
  ..set_attribute("id", "toggle-btn")
  ..set_attribute("style", "padding: 8px 16px; margin: 4px; font-size: 1em;")
  ..set_text_content("Toggle active")
  .add_event_listener("click", fn(_event) {
    let cl = target.class_list()
    let _ = cl.toggle("active")
    update_status(cl, status)
  })
  btn_container.append_child(toggle_btn) |> ignore

  // "Replace box->hidden" button
  let replace_btn : HTMLButtonElement = document()
    .create_element("button")
    .into()
  replace_btn
  ..set_attribute("id", "replace-btn")
  ..set_attribute("style", "padding: 8px 16px; margin: 4px; font-size: 1em;")
  ..set_text_content("Replace box\u{2192}hidden")
  .add_event_listener("click", fn(_event) {
    let cl = target.class_list()
    let _ = cl.replace("box", "hidden")
    update_status(cl, status)
  })
  btn_container.append_child(replace_btn) |> ignore

  // "Has highlight?" button
  let has_btn : HTMLButtonElement = document().create_element("button").into()
  has_btn
  ..set_attribute("id", "has-btn")
  ..set_attribute("style", "padding: 8px 16px; margin: 4px; font-size: 1em;")
  ..set_text_content("Has highlight?")
  .add_event_listener("click", fn(_event) {
    let cl = target.class_list()
    let result = cl.contains("highlight")
    has_result.set_text_content(result.to_string())
  })
  btn_container.append_child(has_btn) |> ignore
}
