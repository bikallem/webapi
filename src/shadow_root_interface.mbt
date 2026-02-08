// Do not edit. This file is generated.
// MoonBit type: ShadowRoot
// Specifications: dom.idl, html.idl

///|
/// [ShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot)
#external
pub type ShadowRoot

///|
pub impl TJsValue for ShadowRoot with to_js(self : ShadowRoot) -> JsValue = "%identity"

///|
pub fn[T : TShadowRoot] ShadowRoot::into(self : ShadowRoot) -> T = "%identity"

///|
pub impl TShadowRoot for ShadowRoot

///|
pub impl TDocumentFragment for ShadowRoot

///|
pub impl TNode for ShadowRoot

///|
pub impl TEventTarget for ShadowRoot

///|
pub(open) trait TShadowRootSetHTMLUnsafeHtml {
  to_js(self : Self) -> JsValue
}

///|
pub impl TShadowRootSetHTMLUnsafeHtml for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TShadowRootSetHTMLUnsafeHtml for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [ShadowRootInnerHTML](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRootInnerHTML)
#external
pub type ShadowRootInnerHTML

///|
pub fn[T : TShadowRootInnerHTML] ShadowRootInnerHTML::into(
  self : ShadowRootInnerHTML,
) -> T = "%identity"

///|
pub impl TShadowRootInnerHTML for ShadowRootInnerHTML with to_js(
  self : ShadowRootInnerHTML,
) -> JsValue = "%identity"

///|
pub(open) trait TShadowRootInnerHTML {
  to_js(self : Self) -> JsValue
}

///|
pub impl TShadowRootInnerHTML for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TShadowRootInnerHTML for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [ShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot) interface.
pub trait TShadowRoot: TDocumentFragment {
  mode(self : Self) -> ShadowRootMode = _
  delegates_focus(self : Self) -> Bool = _
  slot_assignment(self : Self) -> SlotAssignmentMode = _
  clonable(self : Self) -> Bool = _
  serializable(self : Self) -> Bool = _
  host(self : Self) -> Element = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit = _
  set_html_unsafe(self : Self, html : &TShadowRootSetHTMLUnsafeHtml) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
  inner_html(self : Self) -> ShadowRootInnerHTML = _
  set_inner_html(self : Self, inner_html : &TShadowRootInnerHTML) -> Unit = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  active_element(self : Self) -> Element = _
  style_sheets(self : Self) -> StyleSheetList = _
  adopted_style_sheets(self : Self) -> JsValue = _
  set_adopted_style_sheets(self : Self, adopted_style_sheets : JsValue) -> Unit = _
}

///|
/// [ShadowRoot.mode](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/mode)
impl TShadowRoot with mode(self : Self) -> ShadowRootMode {
  shadow_root_mode_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.delegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/delegatesFocus)
impl TShadowRoot with delegates_focus(self : Self) -> Bool {
  shadow_root_delegates_focus_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.slotAssignment](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/slotAssignment)
impl TShadowRoot with slot_assignment(self : Self) -> SlotAssignmentMode {
  shadow_root_slot_assignment_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.clonable](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/clonable)
impl TShadowRoot with clonable(self : Self) -> Bool {
  shadow_root_clonable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.serializable](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/serializable)
impl TShadowRoot with serializable(self : Self) -> Bool {
  shadow_root_serializable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.host](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/host)
impl TShadowRoot with host(self : Self) -> Element {
  shadow_root_host_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/onslotchange)
impl TShadowRoot with onslotchange(self : Self) -> EventHandler {
  shadow_root_onslotchange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/onslotchange)
impl TShadowRoot with set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit {
  shadow_root_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
/// [ShadowRoot.setHTMLUnsafe](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/setHTMLUnsafe)
impl TShadowRoot with set_html_unsafe(
  self : Self,
  html : &TShadowRootSetHTMLUnsafeHtml,
) -> Unit {
  shadow_root_set_html_unsafe_ffi(TJsValue::to_js(self), html.to_js())
}

///|
/// [ShadowRoot.getHTML](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/getHTML)
impl TShadowRoot with get_html(
  self : Self,
  options? : GetHTMLOptions = GetHTMLOptions::empty(),
) -> String {
  shadow_root_get_html_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
/// [ShadowRoot.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/innerHTML)
impl TShadowRoot with inner_html(self : Self) -> ShadowRootInnerHTML {
  shadow_root_inner_html_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/innerHTML)
impl TShadowRoot with set_inner_html(
  self : Self,
  inner_html : &TShadowRootInnerHTML,
) -> Unit {
  shadow_root_set_inner_html_ffi(TJsValue::to_js(self), inner_html.to_js())
}

///|
/// [ShadowRoot.customElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/customElementRegistry)
impl TShadowRoot with custom_element_registry(self : Self) -> CustomElementRegistry {
  shadow_root_custom_element_registry_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.activeElement](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/activeElement)
impl TShadowRoot with active_element(self : Self) -> Element {
  shadow_root_active_element_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.styleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/styleSheets)
impl TShadowRoot with style_sheets(self : Self) -> StyleSheetList {
  shadow_root_style_sheets_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/adoptedStyleSheets)
impl TShadowRoot with adopted_style_sheets(self : Self) -> JsValue {
  shadow_root_adopted_style_sheets_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ShadowRoot.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/adoptedStyleSheets)
impl TShadowRoot with set_adopted_style_sheets(
  self : Self,
  adopted_style_sheets : JsValue,
) -> Unit {
  shadow_root_set_adopted_style_sheets_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(adopted_style_sheets),
  )
}
