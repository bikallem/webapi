///|
/// Element Operations Demo
/// Demonstrates cloneNode, getAttribute/setAttribute, remove,
/// insertBefore, and hasAttribute using the WebAPI bindings.
/// All DOM elements are created programmatically in MoonBit.
fn main {
  let document = @webapi.document()

  // Mutable clone counter
  let mut counter = 0

  // Helper to update the clone count display
  fn update_count(
    container : @webapi.Element,
    count_display : @webapi.Element,
  ) -> Unit {
    count_display.set_text_content(
      "Children: " + container.child_element_count().to_string(),
    )
  }

  // --- Create template div ---
  let template = document.create_element("div")
  template
  ..set_attribute("id", "template")
  ..set_attribute("data-type", "item")
  ..set_attribute("data-index", "0")
  ..set_attribute(
    "style", "padding: 0.5em; margin: 0.5em 0; background: #e0e7ff; border: 1px solid #6366f1; border-radius: 4px;",
  )
  .set_text_content("Template Item")

  // --- Create container for cloned items ---
  let container = document.create_element("div")
  container
  ..set_attribute("id", "container")
  .set_attribute(
    "style", "min-height: 2em; padding: 0.5em; margin: 0.5em 0; background: #f1f5f9; border: 2px dashed #94a3b8; border-radius: 4px;",
  )

  // --- Create attribute display ---
  let attr_display = document.create_element("div")
  attr_display
  ..set_attribute("id", "attr-display")
  .set_attribute(
    "style", "padding: 0.5em; margin: 0.5em 0; background: #fef3c7; border-radius: 4px; font-family: monospace;",
  )

  // --- Create has-attribute result display ---
  let has_result = document.create_element("div")
  has_result
  ..set_attribute("id", "has-result")
  .set_attribute(
    "style", "padding: 0.5em; margin: 0.5em 0; background: #fce7f3; border-radius: 4px; font-family: monospace;",
  )

  // --- Create clone count display ---
  let clone_count = document.create_element("div")
  clone_count
  ..set_attribute("id", "clone-count")
  .set_attribute("style", "padding: 0.5em; margin: 0.5em 0; font-weight: bold;")
  update_count(container, clone_count)

  // --- Button style ---
  let btn_style = "padding: 0.5em 1em; font-size: 1em; margin: 0.25em; cursor: pointer; border: 1px solid #ccc; border-radius: 4px; background: #fff;"

  // --- Clone button ---
  let clone_btn = document.create_element("button")
  clone_btn
  ..set_attribute("id", "clone-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Clone")
  .add_event_listener("click", fn(_event) {
    counter = counter + 1
    let clone : @webapi.Element = template.clone_node(subtree=true).into()
    clone.set_text_content("Clone " + counter.to_string())
    clone.set_attribute("data-index", counter.to_string())
    container.append_child(clone) |> ignore
    update_count(container, clone_count)
  })

  // --- Read Attrs button ---
  let read_attrs_btn = document.create_element("button")
  read_attrs_btn
  ..set_attribute("id", "read-attrs-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Read Attrs")
  .add_event_listener("click", fn(_event) {
    let type_val = match template.get_attribute("data-type") {
      Some(v) => v
      None => "(none)"
    }
    let index_val = match template.get_attribute("data-index") {
      Some(v) => v
      None => "(none)"
    }
    attr_display.set_text_content("type=" + type_val + ", index=" + index_val)
  })

  // --- Set Attr button ---
  let set_attr_btn = document.create_element("button")
  set_attr_btn
  ..set_attribute("id", "set-attr-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Set Attr")
  .add_event_listener("click", fn(_event) {
    template.set_attribute("data-status", "modified")
    attr_display.set_text_content("data-status set to \"modified\"")
  })

  // --- Has Attr? button ---
  let has_attr_btn = document.create_element("button")
  has_attr_btn
  ..set_attribute("id", "has-attr-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Has Attr?")
  .add_event_listener("click", fn(_event) {
    let result = template.has_attribute("data-status")
    has_result.set_text_content(result.to_string())
  })

  // --- Insert Before button ---
  let insert_btn = document.create_element("button")
  insert_btn
  ..set_attribute("id", "insert-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Insert Before")
  .add_event_listener("click", fn(_event) {
    let new_elem = document.create_element("div")
    new_elem.set_text_content("Inserted")
    new_elem.class_list().add(["inserted"])
    new_elem.set_attribute(
      "style", "padding: 0.5em; margin: 0.5em 0; background: #d1fae5; border: 1px solid #10b981; border-radius: 4px;",
    )
    if container.has_child_nodes() {
      let first = container.first_child()
      container.insert_before(new_elem, first) |> ignore
    } else {
      container.append_child(new_elem) |> ignore
    }
    update_count(container, clone_count)
  })

  // --- Remove Last button ---
  let remove_last_btn = document.create_element("button")
  remove_last_btn
  ..set_attribute("id", "remove-last-btn")
  ..set_attribute("style", btn_style)
  ..set_text_content("Remove Last")
  .add_event_listener("click", fn(_event) {
    if container.has_child_nodes() {
      let last : @webapi.Element = container.last_child().into()
      last.remove()
      update_count(container, clone_count)
    }
  })

  // --- Build the DOM tree ---
  let app : @webapi.Element = document.get_element_by_id("app")
  let wrapper = document.create_element("div")
  wrapper.set_attribute(
    "style", "max-width: 600px; margin: 2em auto; font-family: system-ui; padding: 1em;",
  )

  // Heading
  let heading = document.create_element("h1")
  heading.set_text_content("Element Operations")

  // Label for template
  let template_label = document.create_element("h3")
  template_label.set_text_content("Template:")

  // Label for container
  let container_label = document.create_element("h3")
  container_label.set_text_content("Container:")

  // Button row
  let button_row = document.create_element("div")
  button_row.set_attribute("style", "margin: 1em 0;")
  let buttons : Array[&@webapi.TNode] = [
    clone_btn, read_attrs_btn, set_attr_btn, has_attr_btn, insert_btn, remove_last_btn,
  ]
  for btn in buttons {
    button_row.append_child(btn) |> ignore
  }

  // Assemble
  let children : Array[&@webapi.TNode] = [
    heading, template_label, template, button_row, attr_display, has_result, container_label,
    container, clone_count,
  ]
  for child in children {
    wrapper.append_child(child) |> ignore
  }
  app.append_child(wrapper) |> ignore
}
