///|
/// Examples gallery with hash-based URL routing.
using @webapi {document, type Element, type HTMLIFrameElement}

///|
/// (display_name, dir_name, has_wasm)
let examples : Array[(String, String, Bool)] = [
  ("Canvas", "canvas", true),
  ("Calculator", "calculator", true),
  ("ClassList", "classlist", true),
  ("Clipboard APIs", "clipboard-apis", true),
  ("Console", "console", true),
  ("Counter", "counter", true),
  ("DOM", "dom", true),
  ("Element Operations", "element-ops", true),
  ("Encoding", "encoding", true),
  ("Events", "events", true),
  ("File API", "file-api", true),
  ("File System Access", "file-system-access", true),
  ("IndexedDB", "indexeddb", true),
  ("Fetch", "fetch", true),
  ("Fetch (async)", "fetch-async", false),
  ("Forms", "forms", true),
  ("Fullscreen", "fullscreen", true),
  ("Geometry", "geometry", true),
  ("Intersection Observer", "intersection-observer", true),
  ("JsArray Callback", "jsarray-callback", true),
  ("Notifications", "notifications", true),
  ("Performance", "performance", true),
  ("Permissions", "permissions", true),
  ("Pointer Events", "pointerevents", true),
  ("Request Idle Callback", "requestidlecallback", true),
  ("Referrer Policy", "referrer-policy", true),
  ("Resize Observer", "resize-observer", true),
  ("Screen Orientation", "screen-orientation", true),
  ("Selection API", "selection-api", true),
  ("Storage", "storage", true),
  ("Storage Manager", "storage-manager", true),
  ("Streams", "streams", true),
  ("SVG", "svg", true),
  ("Timers", "timers", true),
  ("Todo", "todo", true),
  ("Touch Events", "touch-events", true),
  ("Trusted Types", "trusted-types", true),
  ("URL", "url", true),
  ("URLPattern", "urlpattern", true),
  ("Vibration", "vibration", true),
  ("Web Animations", "web-animations", true),
  ("WC: Edit Word", "wc-edit-word", true),
  ("WC: Counter", "wc-counter", true),
  ("WebSockets", "websockets", true),
  ("XMLHttpRequest", "xhr", true),
]

///|
let github_base : String = "https://github.com/bikallem/webapi/tree/main/examples/"

///|
fn parse_hash(hash : String) -> (String, String) {
  let h = if hash.length() > 0 && hash[0] == '#' {
    hash.view(start_offset=1).to_string()
  } else {
    hash
  }
  if h.is_empty() {
    return ("canvas", "js")
  }
  // Split on last '.'
  let mut last_dot = -1
  for i = h.length() - 1; i >= 0; i = i - 1 {
    if h[i] == '.' {
      last_dot = i
      break
    }
  }
  if last_dot <= 0 || last_dot >= h.length() - 1 {
    return (h, "js")
  }
  let name = h.view(end_offset=last_dot).to_string()
  let target = h.view(start_offset=last_dot + 1).to_string()
  if target == "js" || target == "wasm" {
    (name, target)
  } else {
    (h, "js")
  }
}

///|
fn link_id(dir : String, target : String) -> String {
  "link-" + dir + "." + target
}

///|
fn main {
  let app = document.get_element_by_id("app").unwrap()

  // Build sidebar
  let nav = document.create_element("nav")
  nav.class_list().add(["sidebar"])

  let brand = document.create_element("div")
  brand.class_list().add(["brand"])

  let h1 = document.create_element("h1")
  h1.set_text_content("MoonBit")

  let title = document.create_element("div")
  title.class_list().add(["title"])
  title.set_text_content("WebAPI Examples")

  brand.append_child(h1) |> ignore
  brand.append_child(title) |> ignore
  nav.append_child(brand) |> ignore

  let ul = document.create_element("ul")

  for i = 0; i < examples.length(); i = i + 1 {
    let (display_name, dir, has_wasm) = examples[i]
    let li = document.create_element("li")

    let name_span = document.create_element("span")
    name_span.class_list().add(["name"])
    name_span.set_text_content(display_name)

    let targets = document.create_element("span")
    targets.class_list().add(["targets"])

    // JS link
    let js_link = document.create_element("a")
    js_link.class_list().add(["t-js"])
    js_link.set_attribute("href", "#" + dir + ".js")
    js_link.set_attribute("id", link_id(dir, "js"))
    js_link.set_text_content("js")
    targets.append_child(js_link) |> ignore

    // Wasm link (only if has_wasm)
    if has_wasm {
      let wasm_link = document.create_element("a")
      wasm_link.class_list().add(["t-wasm"])
      wasm_link.set_attribute("href", "#" + dir + ".wasm")
      wasm_link.set_attribute("id", link_id(dir, "wasm"))
      wasm_link.set_text_content("wasm")
      targets.append_child(wasm_link) |> ignore
    }

    // Source link
    let src_link = document.create_element("a")
    src_link.class_list().add(["t-src"])
    src_link.set_attribute("href", github_base + dir)
    src_link.set_attribute("target", "_blank")
    src_link.set_text_content("src")
    targets.append_child(src_link) |> ignore

    li.append_child(name_span) |> ignore
    li.append_child(targets) |> ignore
    ul.append_child(li) |> ignore
  }

  nav.append_child(ul) |> ignore

  // Build main content area
  let main = document.create_element("main")
  main.class_list().add(["content"])

  let iframe : HTMLIFrameElement = document.create_element("iframe").into()
  iframe.set_attribute("id", "demo")
  main.append_child(iframe) |> ignore

  app.append_child(nav) |> ignore
  app.append_child(main) |> ignore

  // Track previously active link for class removal
  let prev_active : Array[Element?] = [None]

  // Navigate based on current hash
  let navigate = fn() {
    let hash = @webapi.window.location().hash()
    let (name, target) = parse_hash(hash)
    iframe.set_src(name + "/" + name + "." + target + ".html")

    // Remove active class from previous link
    if prev_active[0] is Some(el) {
      el.class_list().remove(["active"])
    }

    // Add active class to current link
    match document.get_element_by_id(link_id(name, target)) {
      Some(el) => {
        el.class_list().add(["active"])
        prev_active[0] = Some(el)
      }
      None => prev_active[0] = None
    }
  }

  // Initial navigation
  navigate()

  // Listen for hash changes (back/forward)
  @webapi.window.add_event_listener("hashchange", fn(_event) { navigate() })
}
