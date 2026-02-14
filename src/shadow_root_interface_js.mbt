///|
extern "js" fn shadow_root_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
fn shadow_root_mode_ffi(obj : JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(shadow_root_mode_ffi_js(obj).unsafe_cast())
}

///|
extern "js" fn shadow_root_delegates_focus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.delegatesFocus"

///|
fn shadow_root_delegates_focus_ffi(obj : JsValue) -> Bool {
  shadow_root_delegates_focus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_slot_assignment_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.slotAssignment"

///|
fn shadow_root_slot_assignment_ffi(obj : JsValue) -> SlotAssignmentMode {
  SlotAssignmentMode::from_unchecked(
    shadow_root_slot_assignment_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn shadow_root_clonable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clonable"

///|
fn shadow_root_clonable_ffi(obj : JsValue) -> Bool {
  shadow_root_clonable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_serializable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.serializable"

///|
fn shadow_root_serializable_ffi(obj : JsValue) -> Bool {
  shadow_root_serializable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
fn shadow_root_host_ffi(obj : JsValue) -> Element {
  shadow_root_host_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
fn shadow_root_onslotchange_ffi(obj : JsValue) -> EventHandler {
  shadow_root_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn shadow_root_set_html_unsafe_ffi(
  obj : JsValue,
  html : JsValue,
) -> Unit = "(obj, html) => obj.setHTMLUnsafe(html)"

///|
extern "js" fn shadow_root_get_html_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getHTML(options)"

///|
fn shadow_root_get_html_ffi(obj : JsValue, options : JsValue) -> String {
  shadow_root_get_html_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn shadow_root_inner_html_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerHTML"

///|
fn shadow_root_inner_html_ffi(obj : JsValue) -> ShadowRootInnerHTML {
  shadow_root_inner_html_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_set_inner_html_ffi(
  obj : JsValue,
  inner_html : JsValue,
) -> Unit = "(obj, innerHTML) => { obj.innerHTML = innerHTML; }"

///|
extern "js" fn shadow_root_custom_element_registry_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
fn shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> CustomElementRegistry {
  shadow_root_custom_element_registry_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_active_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
fn shadow_root_active_element_ffi(obj : JsValue) -> Element {
  shadow_root_active_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_style_sheets_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
fn shadow_root_style_sheets_ffi(obj : JsValue) -> StyleSheetList {
  shadow_root_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_adopted_style_sheets_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
fn shadow_root_adopted_style_sheets_ffi(obj : JsValue) -> JsValue {
  shadow_root_adopted_style_sheets_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"

///|
extern "js" fn shadow_root_fullscreen_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fullscreenElement"

///|
fn shadow_root_fullscreen_element_ffi(obj : JsValue) -> Element {
  shadow_root_fullscreen_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shadow_root_get_animations_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getAnimations()"

///|
fn shadow_root_get_animations_ffi(obj : JsValue) -> Array[Animation] {
  shadow_root_get_animations_ffi_js(obj).unsafe_cast()
}
