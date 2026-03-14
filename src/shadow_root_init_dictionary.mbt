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

#cfg(target="js")
extern "js" fn shadow_root_init_ffi(mode: JsValue, delegates_focus: JsValue, slot_assignment: JsValue, clonable: JsValue, serializable: JsValue, custom_element_registry: JsValue) -> ShadowRootInit = 
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

#cfg(target="js")
extern "js" fn shadow_root_init_empty_ffi() -> ShadowRootInit = "() => {}"

#cfg(target="js")
extern "js" fn shadow_root_init_get_mode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
fn shadow_root_init_get_mode_ffi(obj: JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(shadow_root_init_get_mode_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn shadow_root_init_get_delegates_focus_ffi(obj: JsValue) -> JsValue = "(obj) => obj.delegatesFocus"

#cfg(target="js")
extern "js" fn shadow_root_init_get_slot_assignment_ffi(obj: JsValue) -> JsValue = "(obj) => obj.slotAssignment"

#cfg(target="js")
extern "js" fn shadow_root_init_get_clonable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clonable"

#cfg(target="js")
extern "js" fn shadow_root_init_get_serializable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.serializable"

#cfg(target="js")
extern "js" fn shadow_root_init_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

#cfg(target="wasm-gc")
fn shadow_root_init_ffi(mode: JsValue, delegates_focus: JsValue, slot_assignment: JsValue, clonable: JsValue, serializable: JsValue, custom_element_registry: JsValue) -> ShadowRootInit = "webapi_ShadowRootInit" "new"

#cfg(target="wasm-gc")
fn shadow_root_init_empty_ffi() -> ShadowRootInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn shadow_root_init_get_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_mode"

///|
#cfg(target="wasm-gc")
fn shadow_root_init_get_mode_ffi(obj: JsValue) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(jsvalue_to_string(shadow_root_init_get_mode_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn shadow_root_init_get_delegates_focus_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_delegatesFocus"

#cfg(target="wasm-gc")
fn shadow_root_init_get_slot_assignment_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_slotAssignment"

#cfg(target="wasm-gc")
fn shadow_root_init_get_clonable_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_clonable"

#cfg(target="wasm-gc")
fn shadow_root_init_get_serializable_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_serializable"

#cfg(target="wasm-gc")
fn shadow_root_init_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "webapi_ShadowRootInit" "get_customElementRegistry"