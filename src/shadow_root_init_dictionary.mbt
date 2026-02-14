// Do not edit. This file is generated.
// MoonBit type: ShadowRootInit
// Specifications: dom.idl

///|
/// [ShadowRootInit](https://developer.mozilla.org/en-US/docs/Web/API/ShadowRootInit)
#external
pub type ShadowRootInit

///|
pub impl TJsValue for ShadowRootInit with to_js(self : ShadowRootInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ShadowRootInit with from_js_any(value : JsAny) -> ShadowRootInit = "%identity"

///|
pub fn ShadowRootInit::new(
  mode : ShadowRootMode,
  delegates_focus? : Bool = false,
  slot_assignment? : SlotAssignmentMode = SlotAssignmentMode::Named,
  clonable? : Bool = false,
  serializable? : Bool = false,
  custom_element_registry? : &TCustomElementRegistry,
) -> ShadowRootInit {
  shadow_root_init_ffi(
    TJsValue::to_js(mode),
    TJsValue::to_js(delegates_focus),
    TJsValue::to_js(slot_assignment),
    TJsValue::to_js(clonable),
    TJsValue::to_js(serializable),
    opt_to_js(custom_element_registry),
  )
}

///|
pub fn ShadowRootInit::empty() -> ShadowRootInit {
  shadow_root_init_empty_ffi()
}

///|
pub fn ShadowRootInit::mode(self : ShadowRootInit) -> ShadowRootMode {
  shadow_root_init_get_mode_ffi(TJsValue::to_js(self))
}

///|
pub fn ShadowRootInit::delegates_focus(self : ShadowRootInit) -> Bool? {
  let result = shadow_root_init_get_delegates_focus_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ShadowRootInit::slot_assignment(
  self : ShadowRootInit,
) -> SlotAssignmentMode? {
  let result = shadow_root_init_get_slot_assignment_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ShadowRootInit::clonable(self : ShadowRootInit) -> Bool? {
  let result = shadow_root_init_get_clonable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ShadowRootInit::serializable(self : ShadowRootInit) -> Bool? {
  let result = shadow_root_init_get_serializable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ShadowRootInit::custom_element_registry(
  self : ShadowRootInit,
) -> CustomElementRegistry? {
  let result = shadow_root_init_get_custom_element_registry_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
