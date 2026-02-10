///|
/// Notifications API Demo - show permission status and create notifications
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Notifications Demo")

  // Permission status
  let permission_status = doc.create_element("div")
  permission_status
  ..set_attribute("id", "permission-status")
  ..set_attribute("style", "font-family: monospace; font-size: 1.2em; margin: 1em 0; padding: 0.5em; background: #f5f5f5; border-radius: 4px;")
  .set_text_content("Permission: " + get_notification_permission())

  // Request permission button
  let request_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  request_btn
  ..set_attribute("id", "request-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em 0.5em 0;")
  .set_text_content("Request Permission")

  // Notify button
  let notify_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  notify_btn
  ..set_attribute("id", "notify-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em;")
  .set_text_content("Show Notification")

  request_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      request_notification_permission(fn(perm) {
        permission_status.set_text_content("Permission: " + perm)
      })
    }),
  )

  notify_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      show_notification("Hello from MoonBit!", "This notification was created using the Notifications API.")
    }),
  )

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, permission_status, request_btn, notify_btn]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn get_notification_permission() -> String =
  #| () => typeof Notification !== 'undefined' ? Notification.permission : 'unsupported'

///|
extern "js" fn request_notification_permission(callback : (String) -> Unit) =
  #| (cb) => { if (typeof Notification !== 'undefined') { Notification.requestPermission().then(p => cb(p)); } else { cb('unsupported'); } }

///|
extern "js" fn show_notification(title : String, body : String) =
  #| (title, body) => { if (typeof Notification !== 'undefined' && Notification.permission === 'granted') { new Notification(title, { body }); } }
