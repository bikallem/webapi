// Auto-generated MoonBit bindings for ShadowRootInit dictionary
// Do not edit manually

#external
pub type ShadowRootInit

pub impl TJsValue for ShadowRootInit with to_js(self: ShadowRootInit) -> JsValue = "%identity"


fn shadow_root_init_ffi(mode : JsValue, delegates_focus : JsValue, slot_assignment : JsValue, clonable : JsValue, serializable : JsValue, custom_element_registry : JsValue) -> ShadowRootInit = "webapi_ShadowRootInit" "new"


pub fn ShadowRootInit::new(
  mode : ShadowRootMode,
  delegates_focus? : Bool? : Bool = false,
  slot_assignment? : SlotAssignmentMode? : SlotAssignmentMode = "named",
  clonable? : Bool? : Bool = false,
  serializable? : Bool? : Bool = false,
  custom_element_registry? : CustomElementRegistry? : CustomElementRegistry = CustomElementRegistry::null()) -> ShadowRootInit {
    shadow_root_init_ffi(
      TJsValue::to_js(mode)
     ,TJsValue::to_js(delegates_focus)
     ,TJsValue::to_js(slot_assignment)
     ,TJsValue::to_js(clonable)
     ,TJsValue::to_js(serializable)
     ,TJsValue::to_js(custom_element_registry)
    )
}


pub fn ShadowRootInit::empty() -> ShadowRootInit = "webapi_Dictionary" "empty"