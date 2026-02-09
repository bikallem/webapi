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
