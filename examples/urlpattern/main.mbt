///|
/// URLPattern API Demo - create patterns, test URLs, and inspect match results
using @webapi {
  document,
  type HTMLButtonElement,
  type HTMLDivElement,
  type HTMLInputElement,
  type URLPattern,
  type URLPatternInit,
  type Element,
}

///|
/// Create a URLPattern matching only the pathname component.
fn make_pathname_pattern(pathname : String) -> URLPattern {
  URLPattern::new_2(input=URLPatternInit::new(pathname~))
}

///|
fn create_row(label : String, id : String) -> (HTMLDivElement, HTMLDivElement) {
  let row : HTMLDivElement = document().create_element("div").into()
  row.set_attribute(
    "style", "display: flex; align-items: baseline; margin: 0.3em 0; font-family: monospace;",
  )
  let lbl = document().create_element("span")
  lbl
  ..set_text_content(label)
  .set_attribute(
    "style", "font-weight: bold; min-width: 120px; color: #555; font-size: 0.9em;",
  )
  let value : HTMLDivElement = document().create_element("div").into()
  value
  ..set_attribute("id", id)
  .set_attribute(
    "style", "background: #f4f4f4; padding: 0.25em 0.5em; border-radius: 4px; word-break: break-all;",
  )
  row.append_child(lbl) |> ignore
  row.append_child(value) |> ignore
  (row, value)
}

///|
fn main {
  let app : Element = document().get_element_by_id("app")
  let container : HTMLDivElement = document().create_element("div").into()
  container.set_attribute(
    "style", "max-width: 700px; margin: 2em auto; padding: 1.5em; font-family: system-ui;",
  )

  let heading = document().create_element("h1")
  heading
  ..set_text_content("URLPattern Demo")
  .set_attribute("style", "color: #2c3e50; margin-bottom: 0.5em;")
  container.append_child(heading) |> ignore

  // Section 1: Static pattern demo
  let section1 = document().create_element("h2")
  section1
  ..set_text_content("Pattern: /users/:id")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.5em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.3em;",
  )
  container.append_child(section1) |> ignore

  let pattern = make_pathname_pattern("/users/:id")

  // Test a matching URL
  let test_url = "https://example.com/users/42"
  let matches = pattern.test_(input=test_url)

  let (row, val) = create_row("test URL:", "test-url")
  val.set_text_content(test_url)
  container.append_child(row) |> ignore

  let (row, val) = create_row("matches:", "test-result")
  val.set_text_content(matches.to_string())
  container.append_child(row) |> ignore

  // Show exec result
  let result = pattern.exec(input=test_url)
  match result {
    Some(r) =>
      match r.pathname() {
        Some(component) => {
          let (row, val) = create_row("pathname.input:", "pathname-input")
          match component.input() {
            Some(input) => val.set_text_content(input)
            None => val.set_text_content("—")
          }
          container.append_child(row) |> ignore
        }
        None => ()
      }
    None => ()
  }

  // Test a non-matching URL
  let no_match_url = "https://example.com/posts/hello"
  let no_match = pattern.test_(input=no_match_url)

  let (row, val) = create_row("test URL:", "nomatch-url")
  val.set_text_content(no_match_url)
  container.append_child(row) |> ignore

  let (row, val) = create_row("matches:", "nomatch-result")
  val.set_text_content(no_match.to_string())
  container.append_child(row) |> ignore

  // Section 2: Interactive pattern tester
  let section2 = document().create_element("h2")
  section2
  ..set_text_content("Interactive Tester")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1.5em 0 0.5em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.3em;",
  )
  container.append_child(section2) |> ignore

  // Pattern input
  let pattern_label = document().create_element("label")
  pattern_label
  ..set_text_content("Pathname pattern:")
  .set_attribute(
    "style", "display: block; margin-bottom: 0.25em; font-weight: bold;",
  )
  container.append_child(pattern_label) |> ignore

  let pattern_input : HTMLInputElement = document()
    .create_element("input")
    .into()
  pattern_input
  ..set_attribute("id", "pattern-input")
  ..set_attribute("type", "text")
  ..set_value("/api/:version/*")
  .set_attribute(
    "style", "width: 100%; padding: 0.4em; font-family: monospace; font-size: 1em; box-sizing: border-box; margin-bottom: 0.75em;",
  )
  container.append_child(pattern_input) |> ignore

  // URL input
  let url_label = document().create_element("label")
  url_label
  ..set_text_content("Test URL:")
  .set_attribute(
    "style", "display: block; margin-bottom: 0.25em; font-weight: bold;",
  )
  container.append_child(url_label) |> ignore

  let url_input : HTMLInputElement = document().create_element("input").into()
  url_input
  ..set_attribute("id", "url-input")
  ..set_attribute("type", "text")
  ..set_value("https://example.com/api/v2/users")
  .set_attribute(
    "style", "width: 100%; padding: 0.4em; font-family: monospace; font-size: 1em; box-sizing: border-box; margin-bottom: 0.75em;",
  )
  container.append_child(url_input) |> ignore

  // Test button
  let test_btn : HTMLButtonElement = document().create_element("button").into()
  test_btn
  ..set_attribute("id", "test-btn")
  ..set_text_content("Test Pattern")
  .set_attribute(
    "style", "padding: 0.5em 1.2em; font-size: 1em; cursor: pointer; background: #4a90d9; color: white; border: none; border-radius: 4px; margin-bottom: 1em;",
  )
  container.append_child(test_btn) |> ignore

  // Result area
  let result_div : HTMLDivElement = document().create_element("div").into()
  result_div
  ..set_attribute("id", "interactive-result")
  .set_attribute(
    "style", "font-family: monospace; padding: 0.75em; background: #f5f5f5; border-radius: 4px; white-space: pre-wrap; min-height: 1.5em;",
  )
  container.append_child(result_div) |> ignore

  test_btn.add_event_listener("click", fn(_event) {
    let pat_str = pattern_input.value()
    let url_str = url_input.value()
    let p = make_pathname_pattern(pat_str)
    let matched = p.test_(input=url_str)
    if matched {
      let exec_result = p.exec(input=url_str)
      match exec_result {
        Some(r) => {
          let mut text = "Match: true"
          match r.pathname() {
            Some(component) =>
              match component.input() {
                Some(input) => text = text + "\npathname.input: " + input
                None => ()
              }
            None => ()
          }
          result_div.set_text_content(text)
        }
        None => result_div.set_text_content("Match: true (no exec result)")
      }
    } else {
      result_div.set_text_content("Match: false")
    }
  })

  app.append_child(container) |> ignore
}
