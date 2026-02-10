///|
/// Notifications API Demo - show permission status and create notifications
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Notifications Demo")

  let perm_str = fn() -> String {
    let s : String = @webapi.Notification::permission().to_js().into()
    s
  }

  // Permission status
  let permission_status = doc.create_element("div")
  permission_status
  ..set_attribute("id", "permission-status")
  ..set_attribute(
    "style", "font-family: monospace; font-size: 1.2em; margin: 1em 0; padding: 0.5em; background: #f5f5f5; border-radius: 4px;",
  )
  .set_text_content("Permission: " + perm_str())

  // Request permission button
  let request_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  request_btn
  ..set_attribute("id", "request-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em 0.5em 0;",
  )
  .set_text_content("Request Permission")

  // Notify button
  let notify_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  notify_btn
  ..set_attribute("id", "notify-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em;",
  )
  .set_text_content("Show Notification")

  request_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let cb = @webapi.NotificationPermissionCallback::new(fn(_perm) {
        permission_status.set_text_content("Permission: " + perm_str())
      })
      @webapi.Notification::request_permission(deprecated_callback=cb) |> ignore
    }),
  )

  notify_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      if @webapi.Notification::permission() ==
        @webapi.NotificationPermission::Granted {
        let options = @webapi.NotificationOptions::new(
          body="This notification was created using the Notifications API.",
        )
        @webapi.Notification::new("Hello from MoonBit!", options~) |> ignore
      }
    }),
  )

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, permission_status, request_btn, notify_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
