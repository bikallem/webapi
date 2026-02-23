///|
fn edit_word(host : @webapi.HTMLElement) -> Unit {
  let doc = @webapi.document
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )

  let style = doc.create_element("style")
  style.set_text_content("span { background-color: #eef; padding: 0 2px }")

  let form : @webapi.HTMLFormElement = doc.create_element("form").into()
  let input : @webapi.HTMLInputElement = doc.create_element("input").into()
  let span : @webapi.HTMLSpanElement = doc.create_element("span").into()

  shadow.append_child(style) |> ignore
  shadow.append_child(form) |> ignore
  shadow.append_child(span) |> ignore

  // Initialize from host text content
  let text = host.text_content()
  span.set_text_content(text)
  input.set_value(text)

  form.append_child(input) |> ignore
  form.style().set_property("display", "none")
  span.style().set_property("display", "inline-block")
  input.style().set_property("width", span.client_width().to_string() + "px")

  host.set_tab_index(0)
  input.set_attribute("required", "required")
  host.style().set_property("display", "inline-block")

  // Update display helper
  let update_display = fn() {
    span.style().set_property("display", "inline-block")
    form.style().set_property("display", "none")
    span.set_text_content(input.value())
    input.style().set_property("width", span.client_width().to_string() + "px")
  }

  // Click to edit
  host.add_event_listener("click", fn(_e) {
    span.style().set_property("display", "none")
    form.style().set_property("display", "inline-block")
    input.focus()
    let len = input.value().length().reinterpret_as_uint()
    input.set_selection_range(0U, len)
  })

  // Submit form to confirm
  form.add_event_listener("submit", fn(e) {
    e.prevent_default()
    update_display()
  })

  // Blur input to confirm
  input.add_event_listener("blur", fn(_e) { update_display() })
}

///|
fn person_details(host : @webapi.HTMLElement) -> Unit {
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )
  let tmpl : @webapi.HTMLTemplateElement = @webapi.document
    .get_element_by_id("person-template")
    .unwrap()
    .into()
  shadow.append_child(tmpl.content().clone_node(subtree=true)) |> ignore
}

///|
/// Port of MDN's edit-word web component example.
/// MoonBit registers the custom elements; HTML uses them declaratively.
fn main {
  // Register <edit-word> custom element
  @webapi.define_custom_element("edit-word", edit_word)

  // Register <person-details> custom element (template lives in HTML)
  @webapi.define_custom_element("person-details", person_details)
}
