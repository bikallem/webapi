///|
fn web_component_wrap_cb(f : (HTMLElement) -> Unit) -> JsValue = "%identity"

///|
fn web_component_wrap_attr_cb(
  f : (HTMLElement, String, JsValue, JsValue) -> Unit,
) -> JsValue = "%identity"

///|
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
