///|
extern "js" fn shadow_root_init_ffi(
  mode : JsValue,
  delegates_focus : JsValue,
  slot_assignment : JsValue,
  clonable : JsValue,
  serializable : JsValue,
  custom_element_registry : JsValue,
) -> ShadowRootInit =
  #|(mode, delegatesFocus, slotAssignment, clonable, serializable, customElementRegistry) => {
  #|  const obj = {};
  #|  if (mode !== undefined) obj.mode = mode;
  #|  if (delegatesFocus !== undefined) obj.delegatesFocus = delegatesFocus;
  #|  if (slotAssignment !== undefined) obj.slotAssignment = slotAssignment;
  #|  if (clonable !== undefined) obj.clonable = clonable;
  #|  if (serializable !== undefined) obj.serializable = serializable;
  #|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
  #|  return obj;
  #|}

///|
extern "js" fn shadow_root_init_empty_ffi() -> ShadowRootInit = "() => {}"

///|
extern "js" fn shadow_root_init_get_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
fn shadow_root_init_get_mode_ffi(obj : JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(
    shadow_root_init_get_mode_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn shadow_root_init_get_delegates_focus_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.delegatesFocus"

///|
extern "js" fn shadow_root_init_get_slot_assignment_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.slotAssignment"

///|
extern "js" fn shadow_root_init_get_clonable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clonable"

///|
extern "js" fn shadow_root_init_get_serializable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.serializable"

///|
extern "js" fn shadow_root_init_get_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"
