///|
/// Storage Manager Demo - display storage estimate (usage/quota)
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Storage Manager Demo")

  let usage_div = doc.create_element("div")
  usage_div
  ..set_attribute("id", "usage")
  ..set_attribute(
    "style", "font-size: 1.2em; margin: 0.5em 0; font-family: monospace;",
  )
  .set_text_content("Usage: --")

  let quota_div = doc.create_element("div")
  quota_div
  ..set_attribute("id", "quota")
  ..set_attribute(
    "style", "font-size: 1.2em; margin: 0.5em 0; font-family: monospace;",
  )
  .set_text_content("Quota: --")

  let estimate_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  estimate_btn
  ..set_attribute("id", "estimate-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 1em 0;")
  .set_text_content("Get Estimate")

  estimate_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      @async.run_async_main(async fn() { do_estimate() })
    }),
  )

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, usage_div, quota_div, estimate_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn get_storage_estimate() -> @webapi.JsPromise[@webapi.JsValue] =
  #| () => navigator.storage.estimate()

///|
extern "js" fn get_estimate_usage(estimate : @webapi.JsValue) -> Double =
  #| (e) => e.usage || 0

///|
extern "js" fn get_estimate_quota(estimate : @webapi.JsValue) -> Double =
  #| (e) => e.quota || 0

///|
fn format_bytes(bytes : Double) -> String {
  if bytes < 1024.0 {
    bytes.to_string() + " B"
  } else if bytes < 1048576.0 {
    let kb = (bytes / 1024.0 * 10.0).to_int().to_double() / 10.0
    kb.to_string() + " KB"
  } else if bytes < 1073741824.0 {
    let mb = (bytes / 1048576.0 * 10.0).to_int().to_double() / 10.0
    mb.to_string() + " MB"
  } else {
    let gb = (bytes / 1073741824.0 * 10.0).to_int().to_double() / 10.0
    gb.to_string() + " GB"
  }
}

///|
async fn do_estimate() -> Unit {
  let doc = @webapi.document
  let usage_div = doc.get_element_by_id("usage").unwrap()
  let quota_div = doc.get_element_by_id("quota").unwrap()
  try {
    let estimate : @webapi.JsValue = @js_promise.to_async_promise(
      get_storage_estimate(),
    ).wait()
    let usage = get_estimate_usage(estimate)
    let quota = get_estimate_quota(estimate)
    usage_div.set_text_content("Usage: " + format_bytes(usage))
    quota_div.set_text_content("Quota: " + format_bytes(quota))
  } catch {
    err => usage_div.set_text_content("Error: " + err.to_string())
  }
}
