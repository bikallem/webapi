///|
/// Encoding API Demo - TextEncoder/TextDecoder roundtrip
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Encoding API Demo")

  // Input
  let input : @webapi.HTMLInputElement = doc.create_element("input").into()
  input
  ..set_attribute("id", "input-text")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Enter text to encode...")
  ..set_attribute(
    "style", "width: 100%; padding: 0.5em; font-size: 1em; box-sizing: border-box;",
  )
  .set_value("Hello, World! \u{1F30D}")

  // Encode button
  let encode_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  encode_btn
  ..set_attribute("id", "encode-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 1em 0;")
  .set_text_content("Encode / Decode")

  // Byte length display
  let byte_length_div = doc.create_element("div")
  byte_length_div
  ..set_attribute("id", "byte-length")
  ..set_attribute(
    "style", "font-family: monospace; font-size: 1.2em; margin: 0.5em 0;",
  )
  .set_text_content("Byte length: --")

  // Decoded text display
  let decoded_text = doc.create_element("div")
  decoded_text
  ..set_attribute("id", "decoded-text")
  ..set_attribute(
    "style", "font-family: monospace; font-size: 1.2em; margin: 0.5em 0; padding: 0.5em; background: #f5f5f5; border-radius: 4px;",
  )
  .set_text_content("Decoded: --")

  let encoder = @webapi.TextEncoder::new()
  let decoder = @webapi.TextDecoder::new()

  encode_btn.add_event_listener("click", fn(_event) {
    let text = input.value()
    let encoded = encoder.encode(input=text)
    let len = utf8_byte_length(text)
    let buf : @webapi.AllowSharedBufferSource = @webapi.TJsValue::to_js(encoded).into()
    let decoded = decoder.decode(input=buf)
    byte_length_div.set_text_content("Byte length: " + len.to_string())
    decoded_text.set_text_content("Decoded: " + decoded)
  })

  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, input, encode_btn, byte_length_div, decoded_text,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
/// Compute UTF-8 byte length of a string
fn utf8_byte_length(s : String) -> Int {
  let mut len = 0
  for ch in s {
    let cp = ch.to_int()
    if cp <= 0x7F {
      len += 1
    } else if cp <= 0x7FF {
      len += 2
    } else if cp <= 0xFFFF {
      len += 3
    } else {
      len += 4
    }
  }
  len
}
