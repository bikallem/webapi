// Auto-generated MoonBit bindings for ShadowRoot

// Do not edit manually

///|
#external
pub type ShadowRoot

///|
pub trait TShadowRoot: TJsValue + TDocumentFragment {
  mode(self : Self) -> ShadowRootMode = _
  delegates_focus(self : Self) -> Bool = _
  slot_assignment(self : Self) -> SlotAssignmentMode = _
  clonable(self : Self) -> Bool = _
  serializable(self : Self) -> Bool = _
  host(self : Self) -> Element = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, value : EventHandler) -> Unit = _
  inner_html(self : Self) -> InnerHTML = _
  set_inner_html(self : Self, value : &TInnerHTML) -> Unit = _
  style_sheets(self : Self) -> JsValue = _
  adopted_style_sheets(self : Self) -> Array[JsValue] = _
  set_adopted_style_sheets(self : Self, value : Array[JsValue]) -> Unit = _
  custom_element_registry(self : Self) -> JsValue? = _
  active_element(self : Self) -> Element? = _
  set_html_unsafe(self : Self, html : &TSetHTMLUnsafeHtmlArg) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
}

///|
pub impl TEventTarget for ShadowRoot

///|
pub impl TNode for ShadowRoot

///|
pub impl TDocumentFragment for ShadowRoot

///|
pub impl TShadowRoot for ShadowRoot

///|
pub impl TJsValue for ShadowRoot with to_js(self : ShadowRoot) -> JsValue = "%identity"

///|
fn shadow_root_set_html_unsafe_ffi(obj : JsValue, html : JsValue) -> Unit = "webapi_ShadowRoot" "setHTMLUnsafe"

///|
impl TShadowRoot with set_html_unsafe(
  self : Self,
  html : &TSetHTMLUnsafeHtmlArg,
) -> Unit {
  shadow_root_set_html_unsafe_ffi(TJsValue::to_js(self), html.to_js())
}

///|
fn shadow_root_get_html_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_ShadowRoot" "getHTML"

///|
impl TShadowRoot with get_html(
  self : Self,
  options? : GetHTMLOptions = GetHTMLOptions::empty(),
) -> String {
  shadow_root_get_html_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn shadow_root_mode_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "mode"

///|
impl TShadowRoot with mode(self : Self) -> ShadowRootMode {
  ShadowRootMode::from(shadow_root_mode_ffi(self.to_js()).unsafe_cast()).unwrap()
}

///|
fn shadow_root_delegates_focus_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "delegatesFocus"

///|
impl TShadowRoot with delegates_focus(self : Self) -> Bool {
  shadow_root_delegates_focus_ffi(self.to_js())
}

///|
fn shadow_root_slot_assignment_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "slotAssignment"

///|
impl TShadowRoot with slot_assignment(self : Self) -> SlotAssignmentMode {
  SlotAssignmentMode::from(
    shadow_root_slot_assignment_ffi(self.to_js()).unsafe_cast(),
  ).unwrap()
}

///|
fn shadow_root_clonable_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "clonable"

///|
impl TShadowRoot with clonable(self : Self) -> Bool {
  shadow_root_clonable_ffi(self.to_js())
}

///|
fn shadow_root_serializable_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "serializable"

///|
impl TShadowRoot with serializable(self : Self) -> Bool {
  shadow_root_serializable_ffi(self.to_js())
}

///|
fn shadow_root_host_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "host"

///|
impl TShadowRoot with host(self : Self) -> Element {
  shadow_root_host_ffi(self.to_js()).unsafe_cast()
}

///|
fn shadow_root_onslotchange_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "onslotchange"

///|
impl TShadowRoot with onslotchange(self : Self) -> EventHandler {
  shadow_root_onslotchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn shadow_root_set_onslotchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_ShadowRoot" "set_onslotchange"

///|
impl TShadowRoot with set_onslotchange(self : Self, value : EventHandler) -> Unit {
  shadow_root_set_onslotchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn shadow_root_inner_html_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "innerHTML"

///|
impl TShadowRoot with inner_html(self : Self) -> InnerHTML {
  shadow_root_inner_html_ffi(self.to_js()).unsafe_cast()
}

///|
fn shadow_root_set_inner_html_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_ShadowRoot" "set_innerHTML"

///|
impl TShadowRoot with set_inner_html(self : Self, value : &TInnerHTML) -> Unit {
  shadow_root_set_inner_html_ffi(self.to_js(), TInnerHTML::to_js(value))
}

///|
fn shadow_root_style_sheets_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "styleSheets"

///|
impl TShadowRoot with style_sheets(self : Self) -> JsValue {
  shadow_root_style_sheets_ffi(self.to_js())
}

///|
fn shadow_root_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "adoptedStyleSheets"

///|
impl TShadowRoot with adopted_style_sheets(self : Self) -> Array[JsValue] {
  shadow_root_adopted_style_sheets_ffi(self.to_js()).unsafe_cast()
}

///|
fn shadow_root_set_adopted_style_sheets_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_ShadowRoot" "set_adoptedStyleSheets"

///|
impl TShadowRoot with set_adopted_style_sheets(
  self : Self,
  value : Array[JsValue],
) -> Unit {
  shadow_root_set_adopted_style_sheets_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn shadow_root_custom_element_registry_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "customElementRegistry"

///|
impl TShadowRoot with custom_element_registry(self : Self) -> JsValue? {
  shadow_root_custom_element_registry_ffi(self.to_js()).as_option()
}

///|
fn shadow_root_active_element_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "activeElement"

///|
impl TShadowRoot with active_element(self : Self) -> Element? {
  shadow_root_active_element_ffi(self.to_js()).as_option()
}
