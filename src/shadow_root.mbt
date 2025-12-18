// Auto-generated MoonBit bindings for ShadowRoot interface
// Do not edit manually

#external
pub type ShadowRoot

pub impl TJsValue for ShadowRoot with to_js(self: ShadowRoot) -> JsValue = "%identity"


pub fn[T: TShadowRoot] ShadowRoot::into(self : ShadowRoot) -> T = "%identity"
pub impl TShadowRoot for ShadowRoot

pub trait TShadowRoot: TJsValue + TTDocumentFragment {
  mode(self: Self) -> ShadowRootMode = _
  delegates_focus(self: Self) -> Bool = _
  slot_assignment(self: Self) -> SlotAssignmentMode = _
  clonable(self: Self) -> Bool = _
  serializable(self: Self) -> Bool = _
  host(self: Self) -> &TElement = _
  onslotchange(self: Self) -> EventHandler = _
  set_onslotchange(self: Self, value : EventHandler) -> Unit = _
  set_h_t_m_l_unsafe(self: Self, html : String) -> Unit = _
  get_h_t_m_l(self: Self, options? : GetHTMLOptions) -> String = _
  inner_h_t_m_l(self: Self) -> JsValue = _
  set_inner_h_t_m_l(self: Self, value : JsValue) -> Unit = _
}

///|
fn shadow_root_mode_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "mode"

///|
impl TShadowRoot with mode(self : Self) -> ShadowRootMode {
  shadow_root_mode_ffi(self.to_js()).unsafe_cast()
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
  shadow_root_slot_assignment_ffi(self.to_js()).unsafe_cast()
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
impl TShadowRoot with host(self : Self) -> &TElement {
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
fn shadow_root_inner_h_t_m_l_ffi(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "innerHTML"

///|
impl TShadowRoot with inner_h_t_m_l(self : Self) -> JsValue {
  shadow_root_inner_h_t_m_l_ffi(self.to_js())
}

///|
fn shadow_root_set_inner_h_t_m_l_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_ShadowRoot" "set_innerHTML"

///|
impl TShadowRoot with set_inner_h_t_m_l(self : Self, value : JsValue) -> Unit {
  shadow_root_set_inner_h_t_m_l_ffi(self.to_js(), value)
}

///|
fn shadow_root_set_h_t_m_l_unsafe_ffi(obj : JsValue, html : JsValue) -> Unit = "webapi_ShadowRoot" "setHTMLUnsafe"

///|
impl TShadowRoot with set_h_t_m_l_unsafe(self : Self, html : String) -> Unit {
  shadow_root_set_h_t_m_l_unsafe_ffi(self.to_js(), TJsValue::to_js(html))
}

///|
fn shadow_root_get_h_t_m_l_ffi(obj : JsValue, options : JsValue) -> String = "webapi_ShadowRoot" "getHTML"

///|
impl TShadowRoot with get_h_t_m_l(self : Self, options? : GetHTMLOptions) -> String {
  shadow_root_get_h_t_m_l_ffi(self.to_js(), TJsValue::to_js(options))
}