///|
/// Permissions API Demo - query permission states for common APIs
using @webapi {
  document,
  navigator,
  type HTMLButtonElement,
  type HTMLDivElement,
  type PermissionDescriptor,
  type PermissionState,
  type PermissionStatus,
}

///|
let permission_names : Array[String] = [
  "geolocation", "notifications", "camera", "microphone",
]

///|
fn state_label(state : PermissionState) -> String {
  match state {
    Granted => "granted"
    Denied => "denied"
    Prompt => "prompt"
  }
}

///|
fn query_permission(name : String) -> Unit {
  let cell = document.get_element_by_id("perm-" + name).unwrap()
  cell.set_text_content("querying...")
  let desc = PermissionDescriptor::new(name)
  navigator
  .permissions()
  .query(desc.to_js())
  .then(fn(status : PermissionStatus) {
    cell.set_text_content(state_label(status.state()))
  })
  .catch_(fn(_err) { cell.set_text_content("unsupported") })
  |> ignore
}

///|
fn main {
  let app = document.get_element_by_id("app").unwrap()
  let container : HTMLDivElement = document.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  let heading = document.create_element("h1")
  heading.set_text_content("Permissions Demo")
  container.append_child(heading) |> ignore

  // Table
  let table = document.create_element("table")
  table.set_attribute("id", "perm-table")
  table.set_attribute(
    "style", "width: 100%; border-collapse: collapse; font-family: monospace; margin: 1em 0;",
  )

  // Header row
  let thead = document.create_element("thead")
  let hrow = document.create_element("tr")
  let th1 = document.create_element("th")
  th1
  ..set_text_content("Permission")
  .set_attribute(
    "style", "text-align: left; padding: 0.5em; border-bottom: 2px solid #4a90d9;",
  )
  let th2 = document.create_element("th")
  th2
  ..set_text_content("State")
  .set_attribute(
    "style", "text-align: left; padding: 0.5em; border-bottom: 2px solid #4a90d9;",
  )
  hrow.append_child(th1) |> ignore
  hrow.append_child(th2) |> ignore
  thead.append_child(hrow) |> ignore
  table.append_child(thead) |> ignore

  // Body rows
  let tbody = document.create_element("tbody")
  for i = 0; i < permission_names.length(); i = i + 1 {
    let name = permission_names[i]
    let tr = document.create_element("tr")
    let td_name = document.create_element("td")
    td_name
    ..set_text_content(name)
    .set_attribute("style", "padding: 0.5em; border-bottom: 1px solid #eee;")
    let td_state = document.create_element("td")
    td_state
    ..set_attribute("id", "perm-" + name)
    ..set_text_content("—")
    .set_attribute("style", "padding: 0.5em; border-bottom: 1px solid #eee;")
    tr.append_child(td_name) |> ignore
    tr.append_child(td_state) |> ignore
    tbody.append_child(tr) |> ignore
  }
  table.append_child(tbody) |> ignore
  container.append_child(table) |> ignore

  // Query all button
  let query_btn : HTMLButtonElement = document.create_element("button").into()
  query_btn
  ..set_attribute("id", "query-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1.2em; font-size: 1em; cursor: pointer; background: #4a90d9; color: white; border: none; border-radius: 4px;",
  )
  .set_text_content("Query All Permissions")

  query_btn.add_event_listener("click", fn(_event) {
    for i = 0; i < permission_names.length(); i = i + 1 {
      query_permission(permission_names[i])
    }
  })
  container.append_child(query_btn) |> ignore

  app.append_child(container) |> ignore

  // Auto-query on load
  for i = 0; i < permission_names.length(); i = i + 1 {
    query_permission(permission_names[i])
  }
}
