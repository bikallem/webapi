// Do not edit. This file is generated.
// MoonBit type: ShadowRootInit
// Specifications: dom.idl

/// [ShadowRootInit](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRootInit)
#external
pub type ShadowRootInit

pub impl TJsValue for ShadowRootInit with to_js(self: ShadowRootInit) -> JsValue = "%identity"

pub impl FromJsAny for ShadowRootInit with from_js_any(value : JsAny) -> ShadowRootInit = "%identity"

pub fn ShadowRootInit::new(mode : ShadowRootMode, 
delegates_focus? : Bool, 
slot_assignment? : SlotAssignmentMode, 
clonable? : Bool, 
serializable? : Bool, 
custom_element_registry? : &TCustomElementRegistry) -> ShadowRootInit {
  shadow_root_init_ffi(TJsValue::to_js(mode), opt_to_js(delegates_focus), opt_to_js(slot_assignment), opt_to_js(clonable), opt_to_js(serializable), opt_to_js(custom_element_registry))
}

pub fn ShadowRootInit::empty() -> ShadowRootInit { shadow_root_init_empty_ffi() }

pub fn ShadowRootInit::mode(self : ShadowRootInit) -> ShadowRootMode {
  shadow_root_init_get_mode_ffi(TJsValue::to_js(self))
}

pub fn ShadowRootInit::delegates_focus(self : ShadowRootInit) -> Bool? {
  shadow_root_init_get_delegates_focus_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ShadowRootInit::slot_assignment(self : ShadowRootInit) -> SlotAssignmentMode? {
  shadow_root_init_get_slot_assignment_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ShadowRootInit::clonable(self : ShadowRootInit) -> Bool? {
  shadow_root_init_get_clonable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ShadowRootInit::serializable(self : ShadowRootInit) -> Bool? {
  shadow_root_init_get_serializable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ShadowRootInit::custom_element_registry(self : ShadowRootInit) -> CustomElementRegistry? {
  shadow_root_init_get_custom_element_registry_ffi(TJsValue::to_js(self)).to_option()
}