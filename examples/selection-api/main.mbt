///|
/// Selection API Demo - select text and display selection info
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Selection API Demo")

  let text_content = doc.create_element("p")
  text_content
  ..set_attribute("id", "text-content")
  ..set_attribute(
    "style", "padding: 1em; background: #f0f0f0; border-radius: 4px; line-height: 1.6; user-select: text;",
  )
  .set_text_content(
    "Select some of this text to see the Selection API in action. You can also click the button below to select all text in this paragraph.",
  )

  let select_all_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  select_all_btn
  ..set_attribute("id", "select-all-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 1em 0;")
  .set_text_content("Select All")

  let selection_info = doc.create_element("div")
  selection_info
  ..set_attribute("id", "selection-info")
  ..set_attribute(
    "style", "font-family: monospace; padding: 1em; background: #e8f4fd; border-radius: 4px; white-space: pre-line;",
  )
  .set_text_content("No selection")

  // Update selection info
  let update_info = fn() {
    match @webapi.window.get_selection() {
      Some(sel) => {
        let sel_type = sel.type_()
        let range_count = sel.range_count()
        let collapsed = sel.is_collapsed()
        let sel_text = if range_count > 0 {
          sel.get_range_at(0U).clone_contents().text_content()
        } else {
          ""
        }
        selection_info.set_text_content(
          "Type: " +
          sel_type +
          "\nRanges: " +
          range_count.to_string() +
          "\nCollapsed: " +
          collapsed.to_string() +
          "\nText: \"" +
          sel_text +
          "\"",
        )
      }
      None => selection_info.set_text_content("No selection")
    }
  }

  doc.add_event_listener("selectionchange", fn(_event) { update_info() })

  select_all_btn.add_event_listener("click", fn(_event) {
    match @webapi.window.get_selection() {
      Some(sel) => {
        sel.select_all_children(text_content)
        update_info()
      }
      None => ()
    }
  })

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, text_content, select_all_btn, selection_info,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
