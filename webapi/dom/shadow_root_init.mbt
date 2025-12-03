// Auto-generated MoonBit bindings for ShadowRootInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary ShadowRootInit {
//   required ShadowRootMode mode;
//   boolean delegatesFocus = false;
//   SlotAssignmentMode slotAssignment = "named";
//   boolean clonable = false;
//   boolean serializable = false;
//   CustomElementRegistry? customElementRegistry = null;
// };

///|
#external
pub type ShadowRootInit

///|
pub impl TJsValue for ShadowRootInit with to_js(self : ShadowRootInit) -> JsValue = "%identity"

///|
fn shadow_root_init_ffi(mode : JsValue, delegates_focus : JsValue, slot_assignment : JsValue, clonable : JsValue, serializable : JsValue, custom_element_registry : JsValue) -> ShadowRootInit = "webapi_ShadowRootInit" "new"

///|
pub fn ShadowRootInit::new(
  mode : JsValue,
  delegates_focus? : Bool = false,
  slot_assignment? : JsValue,
  clonable? : Bool = false,
  serializable? : Bool = false,
  custom_element_registry? : JsValue
) -> ShadowRootInit {
  let slot_assignment_js = opt_to_js(slot_assignment)
  let custom_element_registry_js = opt_to_js(custom_element_registry)
  shadow_root_init_ffi(mode, TJsValue::to_js(delegates_focus), slot_assignment_js, TJsValue::to_js(clonable), TJsValue::to_js(serializable), custom_element_registry_js)
}

///|
pub fn ShadowRootInit::empty() -> ShadowRootInit = "webapi_Dictionary" "empty"