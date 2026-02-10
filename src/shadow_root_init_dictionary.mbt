// Do not edit. This file is generated.
// MoonBit type: ShadowRootInit
// Specifications: dom.idl

/// [ShadowRootInit](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRootInit)
#external
pub type ShadowRootInit

pub impl TJsValue for ShadowRootInit with to_js(self: ShadowRootInit) -> JsValue = "%identity"

pub fn ShadowRootInit::new(mode : ShadowRootMode, 
delegates_focus? : Bool = false, 
slot_assignment? : SlotAssignmentMode = SlotAssignmentMode::Named, 
clonable? : Bool = false, 
serializable? : Bool = false, 
custom_element_registry? : &TCustomElementRegistry) -> ShadowRootInit {
  shadow_root_init_ffi(TJsValue::to_js(mode), TJsValue::to_js(delegates_focus), TJsValue::to_js(slot_assignment), TJsValue::to_js(clonable), TJsValue::to_js(serializable), opt_to_js(custom_element_registry))
}

pub fn ShadowRootInit::empty() -> ShadowRootInit { shadow_root_init_empty_ffi() }