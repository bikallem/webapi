///|
/// Define and register a custom element (Web Component).
///
/// `tag_name` must contain a hyphen (e.g. "my-counter").
/// `on_create` is called once when the element is created — attach shadow DOM,
/// clone templates, and wire up events here.
///
/// Optional lifecycle callbacks:
/// - `on_connected` — called each time the element is added to the DOM
/// - `on_disconnected` — called each time the element is removed from the DOM
/// - `on_adopted` — called when the element is moved to a new document
/// - `on_attribute_changed` — called when an observed attribute changes (name, oldValue, newValue)
/// - `observed_attributes` — list of attribute names to observe
pub fn define_custom_element(
  tag_name : String,
  on_create : (HTMLElement) -> Unit,
  on_connected? : (HTMLElement) -> Unit,
  on_disconnected? : (HTMLElement) -> Unit,
  on_adopted? : (HTMLElement) -> Unit,
  on_attribute_changed? : (HTMLElement, String, JsValue, JsValue) -> Unit,
  observed_attributes? : Array[String] = [],
) -> Unit {
  let on_create_js = web_component_wrap_cb(on_create)
  let on_connected_js = match on_connected {
    Some(f) => web_component_wrap_cb(f)
    None => JsValue::undefined()
  }
  let on_disconnected_js = match on_disconnected {
    Some(f) => web_component_wrap_cb(f)
    None => JsValue::undefined()
  }
  let on_adopted_js = match on_adopted {
    Some(f) => web_component_wrap_cb(f)
    None => JsValue::undefined()
  }
  let on_attribute_changed_js = match on_attribute_changed {
    Some(f) => web_component_wrap_attr_cb(f)
    None => JsValue::undefined()
  }
  let observed_attributes_js = TJsValue::to_js(observed_attributes)
  define_custom_element_ffi(
    tag_name,
    on_create_js,
    on_connected_js,
    on_disconnected_js,
    on_adopted_js,
    on_attribute_changed_js,
    observed_attributes_js,
  )
}

///|
#cfg(target="js")
fn web_component_wrap_cb(f : (HTMLElement) -> Unit) -> JsValue = "%identity"

///|
#cfg(target="js")
fn web_component_wrap_attr_cb(
  f : (HTMLElement, String, JsValue, JsValue) -> Unit,
) -> JsValue = "%identity"

///|
#cfg(target="js")
extern "js" fn define_custom_element_ffi(
  tag_name : String,
  on_create : JsValue,
  on_connected : JsValue,
  on_disconnected : JsValue,
  on_adopted : JsValue,
  on_attribute_changed : JsValue,
  observed_attributes : JsValue,
) -> Unit =
  #|(tag_name, ctor, onConn, onDisconn, onAdopt, onAttr, obsAttrs) => {
  #|  class C extends HTMLElement {
  #|    constructor() { super(); ctor(this); }
  #|  }
  #|  if (onConn !== undefined) C.prototype.connectedCallback = function() { onConn(this); };
  #|  if (onDisconn !== undefined) C.prototype.disconnectedCallback = function() { onDisconn(this); };
  #|  if (onAdopt !== undefined) C.prototype.adoptedCallback = function() { onAdopt(this); };
  #|  if (onAttr !== undefined) {
  #|    C.prototype.attributeChangedCallback = function(n, o, v) { onAttr(this, n, o, v); };
  #|    if (obsAttrs.length > 0) Object.defineProperty(C, 'observedAttributes', { get: () => obsAttrs });
  #|  }
  #|  customElements.define(tag_name, C);
  #|}

///|
#cfg(target="wasm-gc")
fn web_component_wrap_cb(
  f : (HTMLElement) -> Unit,
) -> JsValue = "webapi_WebComponent" "wrapCb"

///|
#cfg(target="wasm-gc")
fn web_component_wrap_attr_cb(
  f : (HTMLElement, String, JsValue, JsValue) -> Unit,
) -> JsValue = "webapi_WebComponent" "wrapCb"

///|
#cfg(target="wasm-gc")
fn define_custom_element_ffi(
  tag_name : String,
  on_create : JsValue,
  on_connected : JsValue,
  on_disconnected : JsValue,
  on_adopted : JsValue,
  on_attribute_changed : JsValue,
  observed_attributes : JsValue,
) -> Unit = "webapi_WebComponent" "define"
