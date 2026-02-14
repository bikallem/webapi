///|
/// Trusted Types example demonstrating TrustedTypePolicyFactory and TrustedHTML.
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("Trusted Types API")

  let tt = @webapi.window.trusted_types()

  // Create a policy
  let policy = tt.create_policy(
    "myPolicy",
    policy_options=@webapi.TrustedTypePolicyOptions::new(
      create_html=@webapi.CreateHTMLCallback::new(fn(input, _args) {
        // Simple sanitizer: escape angle brackets
        input.replace(old="<", new="&lt;").replace(old=">", new="&gt;")
      }),
    ),
  )

  // Policy name
  let policy_name : @webapi.HTMLDivElement = doc.create_element("div").into()
  policy_name
  ..set_attribute("id", "policy-name")
  .set_text_content("Policy name: " + policy.name())

  // Create trusted HTML
  let trusted = policy.create_html("<b>Hello</b> World", [])
  let trusted_output : @webapi.HTMLDivElement = doc.create_element("div").into()
  trusted_output
  ..set_attribute("id", "trusted-output")
  .set_text_content("Trusted HTML: " + trusted.to_json())

  // isHTML check on trusted value
  let is_html_result : @webapi.HTMLDivElement = doc.create_element("div").into()
  let is_trusted = tt.is_html(@webapi.TJsValue::to_js(trusted))
  is_html_result
  ..set_attribute("id", "is-html-result")
  .set_text_content("isHTML(trusted): " + is_trusted.to_string())

  // isHTML check on plain string
  let is_html2_result : @webapi.HTMLDivElement = doc
    .create_element("div")
    .into()
  let is_plain = tt.is_html(@webapi.TJsValue::to_js("not trusted"))
  is_html2_result
  ..set_attribute("id", "is-html2-result")
  .set_text_content("isHTML(plain string): " + is_plain.to_string())

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, policy_name, trusted_output, is_html_result, is_html2_result,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
