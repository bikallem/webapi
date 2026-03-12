fn shadow_root_init_ffi(mode: JsValue, delegates_focus: JsValue, slot_assignment: JsValue, clonable: JsValue, serializable: JsValue, custom_element_registry: JsValue) -> ShadowRootInit = "webapi_ShadowRootInit" "new"

fn shadow_root_init_empty_ffi() -> ShadowRootInit = "webapi_Dictionary" "empty"

fn shadow_root_init_get_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_mode"

///|
fn shadow_root_init_get_mode_ffi(obj: JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(jsvalue_to_string(shadow_root_init_get_mode_ffi_wasm(obj)))
}

fn shadow_root_init_get_delegates_focus_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_delegatesFocus"

fn shadow_root_init_get_slot_assignment_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_slotAssignment"

fn shadow_root_init_get_clonable_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_clonable"

fn shadow_root_init_get_serializable_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_serializable"

fn shadow_root_init_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_customElementRegistry"