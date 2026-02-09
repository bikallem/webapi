///|
using @webapi {
  document,
  type HTMLFormElement,
  type HTMLInputElement,
  type HTMLSelectElement,
  type HTMLOptionElement,
  type HTMLTextAreaElement,
  type HTMLButtonElement,
  type HTMLDivElement,
  type HTMLLabelElement,
  type EventListener,
}

///|
/// Forms Demo - Demonstrates form-related Web APIs
/// HTMLInputElement, HTMLSelectElement, HTMLTextAreaElement, ValidityState, checkValidity
fn main {
  let app = document.get_element_by_id("app").unwrap()

  // Create container
  let container : HTMLDivElement = document.create_element("div").into()
  container.set_attribute(
    "style", "max-width: 500px; margin: 2em auto; font-family: system-ui; padding: 1em;",
  )

  // Heading
  let heading = document.create_element("h1")
  heading.set_text_content("MoonBit Forms Demo")

  // Create form
  let form : HTMLFormElement = document.create_element("form").into()
  form.set_attribute("id", "form")

  // --- Name input ---
  let name_label : HTMLLabelElement = document.create_element("label").into()
  name_label
  ..set_text_content("Name: ")
  .set_attribute("style", "display: block; margin-top: 1em; font-weight: bold;")
  let name_input : HTMLInputElement = document.create_element("input").into()
  name_input
  ..set_type_("text")
  ..set_required(true)
  ..set_placeholder("Enter name")
  .set_attribute("id", "name-input")

  // --- Checkbox ---
  let agree_label : HTMLLabelElement = document.create_element("label").into()
  agree_label.set_attribute(
    "style", "display: block; margin-top: 1em; font-weight: bold;",
  )
  let checkbox : HTMLInputElement = document.create_element("input").into()
  checkbox..set_type_("checkbox").set_attribute("id", "agree-check")
  let agree_text = document.create_element("span")
  agree_text.set_text_content(" I agree to the terms")
  agree_label.append_child(checkbox) |> ignore
  agree_label.append_child(agree_text) |> ignore

  // --- Select dropdown ---
  let color_label : HTMLLabelElement = document.create_element("label").into()
  color_label
  ..set_text_content("Favorite Color: ")
  .set_attribute("style", "display: block; margin-top: 1em; font-weight: bold;")
  let select : HTMLSelectElement = document.create_element("select").into()
  select.set_attribute("id", "color-select")

  // Add options
  let colors = [("red", "Red"), ("green", "Green"), ("blue", "Blue")]
  for pair in colors {
    let (val, text) = pair
    let option : HTMLOptionElement = document.create_element("option").into()
    option.set_value(val)
    option.set_text(text)
    select.append_child(option) |> ignore
  }

  // --- Textarea ---
  let comment_label : HTMLLabelElement = document.create_element("label").into()
  comment_label
  ..set_text_content("Comment: ")
  .set_attribute("style", "display: block; margin-top: 1em; font-weight: bold;")
  let textarea : HTMLTextAreaElement = document
    .create_element("textarea")
    .into()
  textarea
  ..set_placeholder("Enter a comment...")
  .set_attribute("id", "comment-area")

  // --- Current values display (updated on input) ---
  let current_values : HTMLDivElement = document.create_element("div").into()
  current_values
  ..set_attribute("id", "current-values")
  ..set_attribute(
    "style", "margin-top: 1em; padding: 0.5em; background: #f0f0f0; border-radius: 4px; min-height: 1.5em;",
  )
  .set_text_content("")

  // Listen for input events on name input
  name_input.add_event_listener(
    "input",
    EventListener::new(fn(_event) {
      let val = name_input.value()
      current_values.set_text_content("Current input: " + val)
    }),
  )

  // --- Validity status display ---
  let validity_status : HTMLDivElement = document.create_element("div").into()
  validity_status
  ..set_attribute("id", "validity-status")
  ..set_attribute(
    "style", "margin-top: 1em; padding: 0.5em; font-weight: bold; min-height: 1.5em;",
  )
  .set_text_content("")

  // --- Output display ---
  let output : HTMLDivElement = document.create_element("div").into()
  output
  ..set_attribute("id", "output")
  ..set_attribute(
    "style", "margin-top: 1em; padding: 0.5em; background: #e8f5e9; border-radius: 4px; min-height: 1.5em;",
  )
  .set_text_content("")

  // --- Buttons ---
  let button_row : HTMLDivElement = document.create_element("div").into()
  button_row.set_attribute("style", "margin-top: 1.5em;")

  let validate_btn : HTMLButtonElement = document
    .create_element("button")
    .into()
  validate_btn
  ..set_text_content("Check Validity")
  ..set_attribute("id", "validate-btn")
  ..set_type_("button")
  .set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin-right: 0.5em;",
  )
  validate_btn.add_event_listener(
    "click",
    EventListener::new(fn(_event) {
      let valid = form.check_validity()
      if valid {
        validity_status
        ..set_text_content("Valid")
        .set_attribute(
          "style", "margin-top: 1em; padding: 0.5em; font-weight: bold; min-height: 1.5em; color: green;",
        )
      } else {
        validity_status
        ..set_text_content("Invalid")
        .set_attribute(
          "style", "margin-top: 1em; padding: 0.5em; font-weight: bold; min-height: 1.5em; color: red;",
        )
      }
    }),
  )

  let submit_btn : HTMLButtonElement = document.create_element("button").into()
  submit_btn
  ..set_text_content("Submit")
  ..set_attribute("id", "submit-btn")
  ..set_type_("button")
  .set_attribute("style", "padding: 0.5em 1em; font-size: 1em;")
  submit_btn.add_event_listener(
    "click",
    EventListener::new(fn(_event) {
      let name_val = name_input.value()
      let agreed = checkbox.checked()
      let color_val = select.value()
      let comment_val = textarea.value()
      let agreed_str = if agreed { "true" } else { "false" }
      output.set_text_content(
        "Name: " +
        name_val +
        ", Agreed: " +
        agreed_str +
        ", Color: " +
        color_val +
        ", Comment: " +
        comment_val,
      )
    }),
  )

  button_row.append_child(validate_btn) |> ignore
  button_row.append_child(submit_btn) |> ignore

  // Assemble form
  let form_children : Array[&@webapi.TNode] = [
    name_label, name_input, agree_label, color_label, select, comment_label, textarea,
    current_values, button_row, validity_status, output,
  ]
  for child in form_children {
    form.append_child(child) |> ignore
  }

  // Assemble page
  container.append_child(heading) |> ignore
  container.append_child(form) |> ignore
  app.append_child(container) |> ignore
}
