///|
/// Referrer Policy example demonstrating the ReferrerPolicy enum.
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("Referrer Policy")

  // Table of all variants
  let table : @webapi.HTMLTableElement = doc.create_element("table").into()
  table
  ..set_attribute("id", "policy-table")
  .set_attribute(
    "style", "border-collapse: collapse; width: 100%; margin: 1em 0;",
  )

  // Table header
  let thead : @webapi.HTMLTableSectionElement = doc
    .create_element("thead")
    .into()
  let header_row : @webapi.HTMLTableRowElement = doc.create_element("tr").into()
  let th1 : @webapi.HTMLTableCellElement = doc.create_element("th").into()
  th1
  ..set_attribute(
    "style", "border: 1px solid #ddd; padding: 0.5em; text-align: left;",
  )
  .set_text_content("Variant")
  let th2 : @webapi.HTMLTableCellElement = doc.create_element("th").into()
  th2
  ..set_attribute(
    "style", "border: 1px solid #ddd; padding: 0.5em; text-align: left;",
  )
  .set_text_content("String Value")
  header_row.append_child(th1) |> ignore
  header_row.append_child(th2) |> ignore
  thead.append_child(header_row) |> ignore
  table.append_child(thead) |> ignore

  // Table body with all 9 variants
  let tbody : @webapi.HTMLTableSectionElement = doc
    .create_element("tbody")
    .into()
  let policies : Array[(String, @webapi.ReferrerPolicy)] = [
    ("Empty", @webapi.ReferrerPolicy::Empty),
    ("NoReferrer", @webapi.ReferrerPolicy::NoReferrer),
    ("NoReferrerWhenDowngrade", @webapi.ReferrerPolicy::NoReferrerWhenDowngrade),
    ("SameOrigin", @webapi.ReferrerPolicy::SameOrigin),
    ("Origin", @webapi.ReferrerPolicy::Origin),
    ("StrictOrigin", @webapi.ReferrerPolicy::StrictOrigin),
    ("OriginWhenCrossOrigin", @webapi.ReferrerPolicy::OriginWhenCrossOrigin),
    (
      "StrictOriginWhenCrossOrigin",
      @webapi.ReferrerPolicy::StrictOriginWhenCrossOrigin,
    ),
    ("UnsafeUrl", @webapi.ReferrerPolicy::UnsafeUrl),
  ]
  for i = 0; i < policies.length(); i = i + 1 {
    let (name, policy) = policies[i]
    let row : @webapi.HTMLTableRowElement = doc.create_element("tr").into()
    let td1 : @webapi.HTMLTableCellElement = doc.create_element("td").into()
    td1
    ..set_attribute("style", "border: 1px solid #ddd; padding: 0.5em;")
    .set_text_content(name)
    let td2 : @webapi.HTMLTableCellElement = doc.create_element("td").into()
    let val = policy.value()
    td2
    ..set_attribute("style", "border: 1px solid #ddd; padding: 0.5em;")
    .set_text_content(if val == "" { "(empty string)" } else { val })
    row.append_child(td1) |> ignore
    row.append_child(td2) |> ignore
    tbody.append_child(row) |> ignore
  }
  table.append_child(tbody) |> ignore

  // Parse section
  let parse_label : @webapi.HTMLDivElement = doc.create_element("div").into()
  parse_label
  ..set_attribute("style", "margin-top: 1em;")
  .set_text_content("Parse a referrer policy string:")
  let parse_input : @webapi.HTMLInputElement = doc
    .create_element("input")
    .into()
  parse_input
  ..set_attribute("id", "parse-input")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "e.g. no-referrer")
  .set_attribute("style", "padding: 0.5em; margin: 0.5em 0;")
  let parse_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  parse_btn..set_attribute("id", "parse-btn").set_text_content("Parse")
  let parse_output : @webapi.HTMLDivElement = doc.create_element("div").into()
  parse_output.set_attribute("id", "parse-output")
  parse_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let input_val = parse_input.value()
      match @webapi.ReferrerPolicy::from(input_val) {
        Some(policy) =>
          parse_output.set_text_content("Parsed: " + policy.value())
        None => parse_output.set_text_content("Invalid policy string")
      }
    }),
  )

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, table, parse_label, parse_input, parse_btn, parse_output,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
