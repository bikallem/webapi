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
pub impl FromJsAny for ShadowRoot with from_js_any(value : JsAny) -> ShadowRoot = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TShadowRoot] ShadowRoot::into(self : ShadowRoot) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TShadowRoot] ShadowRoot::unsafe_into(self : ShadowRoot) -> T = "%identity"

///|
pub impl HasConstructor for ShadowRoot with constructor_name() {
  "ShadowRoot"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TShadowRoot + HasConstructor] ShadowRoot::try_into(
  self : ShadowRoot,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TShadowRoot for ShadowRoot

///|
pub impl TDocumentFragment for ShadowRoot

///|
pub impl TNode for ShadowRoot

///|
pub impl TEventTarget for ShadowRoot

///|
pub(open) trait TShadowRootSetHTMLUnsafeHtml: TJsValue {}

///|
pub impl TShadowRootSetHTMLUnsafeHtml for TrustedHTML

///|
pub impl TShadowRootSetHTMLUnsafeHtml for String

///|
pub(open) trait TShadowRootInnerHTML: TJsValue {}

///|
pub impl TShadowRootInnerHTML for TrustedHTML

///|
pub impl TShadowRootInnerHTML for String

///|
#external
pub type ShadowRootInnerHTML

///|
pub impl TJsValue for ShadowRootInnerHTML with to_js(self : ShadowRootInnerHTML) -> JsValue = "%identity"

///|
pub impl FromJsAny for ShadowRootInnerHTML with from_js_any(value : JsAny) -> ShadowRootInnerHTML = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TShadowRootInnerHTML + FromJsAny] ShadowRootInnerHTML::into(
  self : ShadowRootInnerHTML,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TShadowRootInnerHTML + FromJsAny] ShadowRootInnerHTML::unsafe_into(
  self : ShadowRootInnerHTML,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TShadowRootInnerHTML] ShadowRootInnerHTML::from(
  value : T,
) -> ShadowRootInnerHTML = "%identity"

///|
pub impl TShadowRootInnerHTML for ShadowRootInnerHTML

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
  set_onslotchange(self : Self, onslotchange : (Event) -> JsValue) -> Unit = _
  set_html_unsafe(self : Self, html : &TShadowRootSetHTMLUnsafeHtml) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
  inner_html(self : Self) -> ShadowRootInnerHTML = _
  set_inner_html(self : Self, inner_html : &TShadowRootInnerHTML) -> Unit = _
  custom_element_registry(self : Self) -> CustomElementRegistry = _
  active_element(self : Self) -> Element = _
  style_sheets(self : Self) -> StyleSheetList = _
  adopted_style_sheets(self : Self) -> Array[CSSStyleSheet] = _
  set_adopted_style_sheets(
    self : Self,
    adopted_style_sheets : Array[CSSStyleSheet],
  ) -> Unit = _
  fullscreen_element(self : Self) -> Element = _
  get_animations(self : Self) -> Array[Animation] = _
}

///|
/// [ShadowRoot.mode](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/mode)
impl TShadowRoot with mode(self : Self) -> ShadowRootMode {
  shadow_root_mode_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.delegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/delegatesFocus)
impl TShadowRoot with delegates_focus(self : Self) -> Bool {
  shadow_root_delegates_focus_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.slotAssignment](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/slotAssignment)
impl TShadowRoot with slot_assignment(self : Self) -> SlotAssignmentMode {
  shadow_root_slot_assignment_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.clonable](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/clonable)
impl TShadowRoot with clonable(self : Self) -> Bool {
  shadow_root_clonable_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.serializable](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/serializable)
impl TShadowRoot with serializable(self : Self) -> Bool {
  shadow_root_serializable_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.host](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/host)
impl TShadowRoot with host(self : Self) -> Element {
  shadow_root_host_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/onslotchange)
impl TShadowRoot with onslotchange(self : Self) -> EventHandler {
  shadow_root_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/onslotchange)
impl TShadowRoot with set_onslotchange(
  self : Self,
  onslotchange : (Event) -> JsValue,
) -> Unit {
  shadow_root_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onslotchange)),
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
impl TShadowRoot with get_html(self : Self, options? : GetHTMLOptions) -> String {
  shadow_root_get_html_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [ShadowRoot.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/innerHTML)
impl TShadowRoot with inner_html(self : Self) -> ShadowRootInnerHTML {
  shadow_root_inner_html_ffi(TJsValue::to_js(self))
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
  shadow_root_custom_element_registry_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.activeElement](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/activeElement)
impl TShadowRoot with active_element(self : Self) -> Element {
  shadow_root_active_element_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.styleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/styleSheets)
impl TShadowRoot with style_sheets(self : Self) -> StyleSheetList {
  shadow_root_style_sheets_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/adoptedStyleSheets)
impl TShadowRoot with adopted_style_sheets(self : Self) -> Array[CSSStyleSheet] {
  shadow_root_adopted_style_sheets_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.adoptedStyleSheets](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/adoptedStyleSheets)
impl TShadowRoot with set_adopted_style_sheets(
  self : Self,
  adopted_style_sheets : Array[CSSStyleSheet],
) -> Unit {
  shadow_root_set_adopted_style_sheets_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(adopted_style_sheets),
  )
}

///|
/// [ShadowRoot.fullscreenElement](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/fullscreenElement)
impl TShadowRoot with fullscreen_element(self : Self) -> Element {
  shadow_root_fullscreen_element_ffi(TJsValue::to_js(self))
}

///|
/// [ShadowRoot.getAnimations](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot/getAnimations)
impl TShadowRoot with get_animations(self : Self) -> Array[Animation] {
  shadow_root_get_animations_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn shadow_root_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
fn shadow_root_mode_ffi(obj : JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(shadow_root_mode_ffi_js(obj).unsafe_cast())
}

///|
#cfg(target="js")
extern "js" fn shadow_root_delegates_focus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.delegatesFocus"

///|
#cfg(target="js")
fn shadow_root_delegates_focus_ffi(obj : JsValue) -> Bool {
  shadow_root_delegates_focus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_slot_assignment_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.slotAssignment"

///|
#cfg(target="js")
fn shadow_root_slot_assignment_ffi(obj : JsValue) -> SlotAssignmentMode {
  SlotAssignmentMode::from_unchecked(
    shadow_root_slot_assignment_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn shadow_root_clonable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clonable"

///|
#cfg(target="js")
fn shadow_root_clonable_ffi(obj : JsValue) -> Bool {
  shadow_root_clonable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_serializable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.serializable"

///|
#cfg(target="js")
fn shadow_root_serializable_ffi(obj : JsValue) -> Bool {
  shadow_root_serializable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn shadow_root_host_ffi(obj : JsValue) -> Element {
  shadow_root_host_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
#cfg(target="js")
fn shadow_root_onslotchange_ffi(obj : JsValue) -> EventHandler {
  shadow_root_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
#cfg(target="js")
extern "js" fn shadow_root_set_html_unsafe_ffi(
  obj : JsValue,
  html : JsValue,
) -> Unit = "(obj, html) => obj.setHTMLUnsafe(html)"

///|
#cfg(target="js")
extern "js" fn shadow_root_get_html_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getHTML(options)"

///|
#cfg(target="js")
fn shadow_root_get_html_ffi(obj : JsValue, options : JsValue) -> String {
  shadow_root_get_html_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_inner_html_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerHTML"

///|
#cfg(target="js")
fn shadow_root_inner_html_ffi(obj : JsValue) -> ShadowRootInnerHTML {
  shadow_root_inner_html_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_set_inner_html_ffi(
  obj : JsValue,
  inner_html : JsValue,
) -> Unit = "(obj, innerHTML) => { obj.innerHTML = innerHTML; }"

///|
#cfg(target="js")
extern "js" fn shadow_root_custom_element_registry_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
#cfg(target="js")
fn shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> CustomElementRegistry {
  shadow_root_custom_element_registry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_active_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
#cfg(target="js")
fn shadow_root_active_element_ffi(obj : JsValue) -> Element {
  shadow_root_active_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
#cfg(target="js")
fn shadow_root_style_sheets_ffi(obj : JsValue) -> StyleSheetList {
  shadow_root_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_adopted_style_sheets_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
#cfg(target="js")
fn shadow_root_adopted_style_sheets_ffi(obj : JsValue) -> Array[CSSStyleSheet] {
  shadow_root_adopted_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
#cfg(target="js")
extern "js" fn shadow_root_fullscreen_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenElement"

///|
#cfg(target="js")
fn shadow_root_fullscreen_element_ffi(obj : JsValue) -> Element {
  shadow_root_fullscreen_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shadow_root_get_animations_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getAnimations()"

///|
#cfg(target="js")
fn shadow_root_get_animations_ffi(obj : JsValue) -> Array[Animation] {
  shadow_root_get_animations_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn shadow_root_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "get_mode"

///|
#cfg(target="wasm-gc")
fn shadow_root_mode_ffi(obj : JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(
    jsvalue_to_string(shadow_root_mode_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn shadow_root_delegates_focus_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "get_delegatesFocus"

///|
#cfg(target="wasm-gc")
fn shadow_root_slot_assignment_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "get_slotAssignment"

///|
#cfg(target="wasm-gc")
fn shadow_root_slot_assignment_ffi(obj : JsValue) -> SlotAssignmentMode {
  SlotAssignmentMode::from_unchecked(
    jsvalue_to_string(shadow_root_slot_assignment_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn shadow_root_clonable_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "get_clonable"

///|
#cfg(target="wasm-gc")
fn shadow_root_serializable_ffi(obj : JsValue) -> Bool = "webapi_ShadowRoot" "get_serializable"

///|
#cfg(target="wasm-gc")
fn shadow_root_host_ffi(obj : JsValue) -> Element = "webapi_ShadowRoot" "get_host"

///|
#cfg(target="wasm-gc")
fn shadow_root_onslotchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "get_onslotchange"

///|
#cfg(target="wasm-gc")
fn shadow_root_onslotchange_ffi(obj : JsValue) -> EventHandler {
  shadow_root_onslotchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn shadow_root_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "webapi_ShadowRoot" "set_onslotchange"

///|
#cfg(target="wasm-gc")
fn shadow_root_set_html_unsafe_ffi(obj : JsValue, html : JsValue) -> Unit = "webapi_ShadowRoot" "setHTMLUnsafe"

///|
#cfg(target="wasm-gc")
fn shadow_root_get_html_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_ShadowRoot" "getHTML"

///|
#cfg(target="wasm-gc")
fn shadow_root_get_html_ffi(obj : JsValue, options : JsValue) -> String {
  jsvalue_to_string(shadow_root_get_html_ffi_wasm(obj, options))
}

///|
#cfg(target="wasm-gc")
fn shadow_root_inner_html_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ShadowRoot" "get_innerHTML"

///|
#cfg(target="wasm-gc")
fn shadow_root_inner_html_ffi(obj : JsValue) -> ShadowRootInnerHTML {
  shadow_root_inner_html_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn shadow_root_set_inner_html_ffi(obj : JsValue, inner_html : JsValue) -> Unit = "webapi_ShadowRoot" "set_innerHTML"

///|
#cfg(target="wasm-gc")
fn shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> CustomElementRegistry = "webapi_ShadowRoot" "get_customElementRegistry"

///|
#cfg(target="wasm-gc")
fn shadow_root_active_element_ffi(obj : JsValue) -> Element = "webapi_ShadowRoot" "get_activeElement"

///|
#cfg(target="wasm-gc")
fn shadow_root_style_sheets_ffi(obj : JsValue) -> StyleSheetList = "webapi_ShadowRoot" "get_styleSheets"

///|
#cfg(target="wasm-gc")
fn shadow_root_adopted_style_sheets_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ShadowRoot" "get_adoptedStyleSheets"

///|
#cfg(target="wasm-gc")
fn shadow_root_adopted_style_sheets_ffi(obj : JsValue) -> Array[CSSStyleSheet] {
  shadow_root_adopted_style_sheets_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn shadow_root_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "webapi_ShadowRoot" "set_adoptedStyleSheets"

///|
#cfg(target="wasm-gc")
fn shadow_root_fullscreen_element_ffi(obj : JsValue) -> Element = "webapi_ShadowRoot" "get_fullscreenElement"

///|
#cfg(target="wasm-gc")
fn shadow_root_get_animations_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ShadowRoot" "getAnimations"

///|
#cfg(target="wasm-gc")
fn shadow_root_get_animations_ffi(obj : JsValue) -> Array[Animation] {
  shadow_root_get_animations_ffi_wasm(obj).to_array()
}
