///|
fn create_item(text : String) -> @webapi.HTMLLIElement {
  let li : @webapi.HTMLLIElement = @webapi.document()
    .create_element("li")
    .into()
  li.class_list().add(["item"])
  li.set_text_content(text)
  li
}

///|
/// DOM manipulation example demonstrating createElement, querySelector,
/// querySelectorAll, classList, setAttribute, getAttribute, textContent,
/// appendChild, removeChild, and cloneNode.
/// All DOM elements are created programmatically in MoonBit.
fn main {
  // Mutable item counter
  let mut item_count = 3

  // Create heading
  let heading : @webapi.HTMLHeadingElement = @webapi.document()
    .create_element("h1")
    .into()
  heading..set_attribute("id", "heading").set_text_content("DOM Example")

  // Create the list
  let list : @webapi.HTMLUListElement = @webapi.document()
    .create_element("ul")
    .into()
  list.set_attribute("id", "item-list")

  // Add 3 initial items
  for i in 1..<=3 {
    let li = create_item("Item " + i.to_string())
    list.append_child(li) |> ignore
  }

  // Create status display
  let status : @webapi.HTMLDivElement = @webapi.document()
    .create_element("div")
    .into()
  status
  ..set_attribute("id", "status")
  ..set_attribute("style", "margin: 1em 0; font-weight: bold;")
  .set_text_content("Items: 3")

  // Update status helper
  let update_status = fn() {
    let items = @webapi.document().query_selector_all("#item-list .item")
    let count = items.length()
    status.set_text_content("Items: " + count.to_string())
  }

  // Create "Add Item" button
  let add_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .into()
  add_btn
  ..set_attribute("id", "add-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0 0.25em;")
  ..set_text_content("Add Item")
  .add_event_listener("click", fn(_event) {
    item_count = item_count + 1
    let li = create_item("Item " + item_count.to_string())
    list.append_child(li) |> ignore
    update_status()
  })

  // Create "Remove Last" button
  let remove_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .into()
  remove_btn
  ..set_attribute("id", "remove-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0 0.25em;")
  ..set_text_content("Remove Last")
  .add_event_listener("click", fn(_event) {
    if list.has_child_nodes() {
      let last = list.last_child()
      list.remove_child(last) |> ignore
      update_status()
    }
  })

  // Create "Clone First" button
  let clone_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .into()
  clone_btn
  ..set_attribute("id", "clone-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0 0.25em;")
  ..set_text_content("Clone First")
  .add_event_listener("click", fn(_event) {
    if list.has_child_nodes() {
      let first = list.first_child()
      let cloned = first.clone_node(subtree=true)
      list.append_child(cloned) |> ignore
      update_status()
    }
  })

  // Demonstrate getAttribute
  let heading_id = heading.get_attribute("id")
  guard heading_id is Some(id) else { () }
  let info : @webapi.HTMLDivElement = @webapi.document()
    .create_element("div")
    .into()
  info
  ..set_attribute("style", "margin: 0.5em 0; color: gray; font-size: 0.9em;")
  .set_text_content("Heading id attribute: " + id)

  // Build the DOM tree
  let app : @webapi.Element = @webapi.document().get_element_by_id("app")
  let container : @webapi.HTMLDivElement = @webapi.document()
    .create_element("div")
    .into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, info, list, status, add_btn, remove_btn, clone_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  let _ = app.append_child(container)
}
