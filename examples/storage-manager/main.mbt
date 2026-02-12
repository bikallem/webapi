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
      do_estimate(usage_div, quota_div)
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
extern "js" fn do_estimate(
  usage_div : @webapi.Element,
  quota_div : @webapi.Element,
) -> Unit =
  #| async (usageDiv, quotaDiv) => {
  #|   const formatBytes = (bytes) => {
  #|     if (bytes < 1024) return `${bytes} B`;
  #|     if (bytes < 1048576) return `${Math.floor((bytes / 1024) * 10) / 10} KB`;
  #|     if (bytes < 1073741824) return `${Math.floor((bytes / 1048576) * 10) / 10} MB`;
  #|     return `${Math.floor((bytes / 1073741824) * 10) / 10} GB`;
  #|   };
  #|   try {
  #|     const estimate = await navigator.storage.estimate();
  #|     const usage = estimate.usage || 0;
  #|     const quota = estimate.quota || 0;
  #|     usageDiv.textContent = `Usage: ${formatBytes(usage)}`;
  #|     quotaDiv.textContent = `Quota: ${formatBytes(quota)}`;
  #|   } catch (err) {
  #|     usageDiv.textContent = `Error: ${String(err)}`;
  #|   }
  #| }
