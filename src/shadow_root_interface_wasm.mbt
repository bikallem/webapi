fn shadow_root_mode_ffi(obj: JsValue) -> ShadowRootMode = "webapi_ShadowRoot" "get_mode"

fn shadow_root_delegates_focus_ffi(obj: JsValue) -> Bool = "webapi_ShadowRoot" "get_delegatesFocus"

fn shadow_root_slot_assignment_ffi(obj: JsValue) -> SlotAssignmentMode = "webapi_ShadowRoot" "get_slotAssignment"

fn shadow_root_clonable_ffi(obj: JsValue) -> Bool = "webapi_ShadowRoot" "get_clonable"

fn shadow_root_serializable_ffi(obj: JsValue) -> Bool = "webapi_ShadowRoot" "get_serializable"

fn shadow_root_host_ffi(obj: JsValue) -> Element = "webapi_ShadowRoot" "get_host"

fn shadow_root_onslotchange_ffi(obj: JsValue) -> EventHandler = "webapi_ShadowRoot" "get_onslotchange"

fn shadow_root_set_onslotchange_ffi(obj: JsValue, onslotchange: JsValue) -> Unit = "webapi_ShadowRoot" "set_onslotchange"

fn shadow_root_set_html_unsafe_ffi(obj: JsValue, html: JsValue) -> Unit = "webapi_ShadowRoot" "setHTMLUnsafe"

fn shadow_root_get_html_ffi_wasm(obj: JsValue, options: JsValue) -> JsValue = "webapi_ShadowRoot" "getHTML"

///|
fn shadow_root_get_html_ffi(obj: JsValue, options: JsValue) -> String {
  jsvalue_to_string(shadow_root_get_html_ffi_wasm(obj, options))
}

fn shadow_root_inner_html_ffi(obj: JsValue) -> ShadowRootInnerHTML = "webapi_ShadowRoot" "get_innerHTML"

fn shadow_root_set_inner_html_ffi(obj: JsValue, inner_html: JsValue) -> Unit = "webapi_ShadowRoot" "set_innerHTML"

fn shadow_root_custom_element_registry_ffi(obj: JsValue) -> CustomElementRegistry = "webapi_ShadowRoot" "get_customElementRegistry"

fn shadow_root_active_element_ffi(obj: JsValue) -> Element = "webapi_ShadowRoot" "get_activeElement"

fn shadow_root_style_sheets_ffi(obj: JsValue) -> StyleSheetList = "webapi_ShadowRoot" "get_styleSheets"

fn shadow_root_adopted_style_sheets_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRoot" "get_adoptedStyleSheets"

fn shadow_root_set_adopted_style_sheets_ffi(obj: JsValue, adopted_style_sheets: JsValue) -> Unit = "webapi_ShadowRoot" "set_adoptedStyleSheets"

fn shadow_root_fullscreen_element_ffi(obj: JsValue) -> Element = "webapi_ShadowRoot" "get_fullscreenElement"