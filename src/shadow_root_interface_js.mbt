///|
extern "js" fn shadow_root_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
extern "js" fn shadow_root_delegates_focus_ffi(obj : JsValue) -> JsValue = "(obj) => obj.delegatesFocus"

///|
extern "js" fn shadow_root_slot_assignment_ffi(obj : JsValue) -> JsValue = "(obj) => obj.slotAssignment"

///|
extern "js" fn shadow_root_clonable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clonable"

///|
extern "js" fn shadow_root_serializable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.serializable"

///|
extern "js" fn shadow_root_host_ffi(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
extern "js" fn shadow_root_onslotchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

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
extern "js" fn shadow_root_get_html_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getHTML(options)"

///|
extern "js" fn shadow_root_inner_html_ffi(obj : JsValue) -> JsValue = "(obj) => obj.innerHTML"

///|
extern "js" fn shadow_root_set_inner_html_ffi(
  obj : JsValue,
  inner_html : JsValue,
) -> Unit = "(obj, innerHTML) => { obj.innerHTML = innerHTML; }"

///|
extern "js" fn shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
extern "js" fn shadow_root_active_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.activeElement"

///|
extern "js" fn shadow_root_style_sheets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.styleSheets"

///|
extern "js" fn shadow_root_adopted_style_sheets_ffi(obj : JsValue) -> JsValue = "(obj) => obj.adoptedStyleSheets"

///|
extern "js" fn shadow_root_set_adopted_style_sheets_ffi(
  obj : JsValue,
  adopted_style_sheets : JsValue,
) -> Unit = "(obj, adoptedStyleSheets) => { obj.adoptedStyleSheets = adoptedStyleSheets; }"
