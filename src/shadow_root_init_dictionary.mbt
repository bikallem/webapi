///|
#external
pub type ShadowRootInit

///|
pub impl TJsValue for ShadowRootInit with to_js(self : ShadowRootInit) -> JsValue = "%identity"

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
pub fn ShadowRootInit::new(
  mode : ShadowRootMode,
  delegates_focus? : Bool = false,
  slot_assignment? : SlotAssignmentMode = SlotAssignmentMode::Named,
  clonable? : Bool = false,
  serializable? : Bool = false,
  custom_element_registry? : &TCustomElementRegistry = JsValue::null(),
) -> ShadowRootInit {
  shadow_root_init_ffi(
    TJsValue::to_js(mode),
    TJsValue::to_js(delegates_focus),
    TJsValue::to_js(slot_assignment),
    TJsValue::to_js(clonable),
    TJsValue::to_js(serializable),
    TJsValue::to_js(custom_element_registry),
  )
}

///|
extern "js" fn shadow_root_init_empty_ffi() -> ShadowRootInit = "() => {}"

///|
pub fn ShadowRootInit::empty() -> ShadowRootInit {
  shadow_root_init_empty_ffi()
}
