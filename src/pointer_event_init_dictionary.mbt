// Do not edit. This file is generated.
// MoonBit type: PointerEventInit
// Specifications: pointerevents.idl, uievents.idl, dom.idl

/// [PointerEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PointerEventInit)
#external
pub type PointerEventInit

pub impl TJsValue for PointerEventInit with to_js(self: PointerEventInit) -> JsValue = "%identity"

pub impl FromJsAny for PointerEventInit with from_js_any(value : JsAny) -> PointerEventInit = "%identity"

pub fn PointerEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
view? : &TWindow, 
detail? : Int, 
which? : UInt, 
ctrl_key? : Bool, 
shift_key? : Bool, 
alt_key? : Bool, 
meta_key? : Bool, 
modifier_alt_graph? : Bool, 
modifier_caps_lock? : Bool, 
modifier_fn? : Bool, 
modifier_fn_lock? : Bool, 
modifier_hyper? : Bool, 
modifier_num_lock? : Bool, 
modifier_scroll_lock? : Bool, 
modifier_super? : Bool, 
modifier_symbol? : Bool, 
modifier_symbol_lock? : Bool, 
screen_x? : Int, 
screen_y? : Int, 
client_x? : Int, 
client_y? : Int, 
button? : Int, 
buttons? : UInt, 
related_target? : &TEventTarget, 
pointer_id? : Int, 
width? : Double, 
height? : Double, 
pressure? : Float, 
tangential_pressure? : Float, 
tilt_x? : Int, 
tilt_y? : Int, 
twist? : Int, 
altitude_angle? : Double, 
azimuth_angle? : Double, 
pointer_type? : String, 
is_primary? : Bool, 
persistent_device_id? : Int, 
coalesced_events? : Array[PointerEvent], 
predicted_events? : Array[PointerEvent]) -> PointerEventInit {
  pointer_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(view), opt_to_js(detail), opt_to_js(which), opt_to_js(ctrl_key), opt_to_js(shift_key), opt_to_js(alt_key), opt_to_js(meta_key), opt_to_js(modifier_alt_graph), opt_to_js(modifier_caps_lock), opt_to_js(modifier_fn), opt_to_js(modifier_fn_lock), opt_to_js(modifier_hyper), opt_to_js(modifier_num_lock), opt_to_js(modifier_scroll_lock), opt_to_js(modifier_super), opt_to_js(modifier_symbol), opt_to_js(modifier_symbol_lock), opt_to_js(screen_x), opt_to_js(screen_y), opt_to_js(client_x), opt_to_js(client_y), opt_to_js(button), opt_to_js(buttons), opt_to_js(related_target), opt_to_js(pointer_id), opt_to_js(width), opt_to_js(height), opt_to_js(pressure), opt_to_js(tangential_pressure), opt_to_js(tilt_x), opt_to_js(tilt_y), opt_to_js(twist), opt_to_js(altitude_angle), opt_to_js(azimuth_angle), opt_to_js(pointer_type), opt_to_js(is_primary), opt_to_js(persistent_device_id), opt_to_js(coalesced_events), opt_to_js(predicted_events))
}

pub fn PointerEventInit::empty() -> PointerEventInit { pointer_event_init_empty_ffi() }

pub fn PointerEventInit::bubbles(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::cancelable(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::composed(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::view(self : PointerEventInit) -> Window? {
  pointer_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

pub fn PointerEventInit::detail(self : PointerEventInit) -> Int? {
  pointer_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::which(self : PointerEventInit) -> UInt? {
  pointer_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::ctrl_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::shift_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::alt_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::meta_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_alt_graph(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_caps_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_fn(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_fn_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_hyper(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_num_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_scroll_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_super(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_symbol(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::modifier_symbol_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::screen_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_screen_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::screen_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_screen_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::client_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_client_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::client_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_client_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::button(self : PointerEventInit) -> Int? {
  pointer_event_init_get_button_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::buttons(self : PointerEventInit) -> UInt? {
  pointer_event_init_get_buttons_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::related_target(self : PointerEventInit) -> EventTarget? {
  pointer_event_init_get_related_target_ffi(TJsValue::to_js(self)).to_option()
}

pub fn PointerEventInit::pointer_id(self : PointerEventInit) -> Int? {
  pointer_event_init_get_pointer_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::width(self : PointerEventInit) -> Double? {
  pointer_event_init_get_width_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::height(self : PointerEventInit) -> Double? {
  pointer_event_init_get_height_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::pressure(self : PointerEventInit) -> Float? {
  pointer_event_init_get_pressure_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::tangential_pressure(self : PointerEventInit) -> Float? {
  pointer_event_init_get_tangential_pressure_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::tilt_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_tilt_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::tilt_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_tilt_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::twist(self : PointerEventInit) -> Int? {
  pointer_event_init_get_twist_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::altitude_angle(self : PointerEventInit) -> Double? {
  pointer_event_init_get_altitude_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::azimuth_angle(self : PointerEventInit) -> Double? {
  pointer_event_init_get_azimuth_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::pointer_type(self : PointerEventInit) -> String? {
  pointer_event_init_get_pointer_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::is_primary(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_is_primary_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::persistent_device_id(self : PointerEventInit) -> Int? {
  pointer_event_init_get_persistent_device_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PointerEventInit::coalesced_events(self : PointerEventInit) -> Array[PointerEvent]? {
  pointer_event_init_get_coalesced_events_ffi(TJsValue::to_js(self)).to_option()
}

pub fn PointerEventInit::predicted_events(self : PointerEventInit) -> Array[PointerEvent]? {
  pointer_event_init_get_predicted_events_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn pointer_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue, screen_x: JsValue, screen_y: JsValue, client_x: JsValue, client_y: JsValue, button: JsValue, buttons: JsValue, related_target: JsValue, pointer_id: JsValue, width: JsValue, height: JsValue, pressure: JsValue, tangential_pressure: JsValue, tilt_x: JsValue, tilt_y: JsValue, twist: JsValue, altitude_angle: JsValue, azimuth_angle: JsValue, pointer_type: JsValue, is_primary: JsValue, persistent_device_id: JsValue, coalesced_events: JsValue, predicted_events: JsValue) -> PointerEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget, pointerId, width, height, pressure, tangentialPressure, tiltX, tiltY, twist, altitudeAngle, azimuthAngle, pointerType, isPrimary, persistentDeviceId, coalescedEvents, predictedEvents) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
#|  if (shiftKey !== undefined) obj.shiftKey = shiftKey;
#|  if (altKey !== undefined) obj.altKey = altKey;
#|  if (metaKey !== undefined) obj.metaKey = metaKey;
#|  if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
#|  if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
#|  if (modifierFn !== undefined) obj.modifierFn = modifierFn;
#|  if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
#|  if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
#|  if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
#|  if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
#|  if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
#|  if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
#|  if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
#|  if (screenX !== undefined) obj.screenX = screenX;
#|  if (screenY !== undefined) obj.screenY = screenY;
#|  if (clientX !== undefined) obj.clientX = clientX;
#|  if (clientY !== undefined) obj.clientY = clientY;
#|  if (button !== undefined) obj.button = button;
#|  if (buttons !== undefined) obj.buttons = buttons;
#|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
#|  if (pointerId !== undefined) obj.pointerId = pointerId;
#|  if (width !== undefined) obj.width = width;
#|  if (height !== undefined) obj.height = height;
#|  if (pressure !== undefined) obj.pressure = pressure;
#|  if (tangentialPressure !== undefined) obj.tangentialPressure = tangentialPressure;
#|  if (tiltX !== undefined) obj.tiltX = tiltX;
#|  if (tiltY !== undefined) obj.tiltY = tiltY;
#|  if (twist !== undefined) obj.twist = twist;
#|  if (altitudeAngle !== undefined) obj.altitudeAngle = altitudeAngle;
#|  if (azimuthAngle !== undefined) obj.azimuthAngle = azimuthAngle;
#|  if (pointerType !== undefined) obj.pointerType = pointerType;
#|  if (isPrimary !== undefined) obj.isPrimary = isPrimary;
#|  if (persistentDeviceId !== undefined) obj.persistentDeviceId = persistentDeviceId;
#|  if (coalescedEvents !== undefined) obj.coalescedEvents = coalescedEvents;
#|  if (predictedEvents !== undefined) obj.predictedEvents = predictedEvents;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn pointer_event_init_empty_ffi() -> PointerEventInit = "() => {}"

#cfg(target="js")
extern "js" fn pointer_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn pointer_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn pointer_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn pointer_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

#cfg(target="js")
extern "js" fn pointer_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

#cfg(target="js")
extern "js" fn pointer_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

#cfg(target="js")
extern "js" fn pointer_event_init_get_ctrl_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ctrlKey"

#cfg(target="js")
extern "js" fn pointer_event_init_get_shift_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shiftKey"

#cfg(target="js")
extern "js" fn pointer_event_init_get_alt_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altKey"

#cfg(target="js")
extern "js" fn pointer_event_init_get_meta_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.metaKey"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_alt_graph_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierAltGraph"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_caps_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierCapsLock"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_fn_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierFn"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_fn_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierFnLock"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_hyper_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierHyper"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_num_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierNumLock"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_scroll_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierScrollLock"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_super_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSuper"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_symbol_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSymbol"

#cfg(target="js")
extern "js" fn pointer_event_init_get_modifier_symbol_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSymbolLock"

#cfg(target="js")
extern "js" fn pointer_event_init_get_screen_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenX"

#cfg(target="js")
extern "js" fn pointer_event_init_get_screen_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenY"

#cfg(target="js")
extern "js" fn pointer_event_init_get_client_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientX"

#cfg(target="js")
extern "js" fn pointer_event_init_get_client_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientY"

#cfg(target="js")
extern "js" fn pointer_event_init_get_button_ffi(obj: JsValue) -> JsValue = "(obj) => obj.button"

#cfg(target="js")
extern "js" fn pointer_event_init_get_buttons_ffi(obj: JsValue) -> JsValue = "(obj) => obj.buttons"

#cfg(target="js")
extern "js" fn pointer_event_init_get_related_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.relatedTarget"

#cfg(target="js")
extern "js" fn pointer_event_init_get_pointer_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pointerId"

#cfg(target="js")
extern "js" fn pointer_event_init_get_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

#cfg(target="js")
extern "js" fn pointer_event_init_get_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

#cfg(target="js")
extern "js" fn pointer_event_init_get_pressure_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pressure"

#cfg(target="js")
extern "js" fn pointer_event_init_get_tangential_pressure_ffi(obj: JsValue) -> JsValue = "(obj) => obj.tangentialPressure"

#cfg(target="js")
extern "js" fn pointer_event_init_get_tilt_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.tiltX"

#cfg(target="js")
extern "js" fn pointer_event_init_get_tilt_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.tiltY"

#cfg(target="js")
extern "js" fn pointer_event_init_get_twist_ffi(obj: JsValue) -> JsValue = "(obj) => obj.twist"

#cfg(target="js")
extern "js" fn pointer_event_init_get_altitude_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altitudeAngle"

#cfg(target="js")
extern "js" fn pointer_event_init_get_azimuth_angle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.azimuthAngle"

#cfg(target="js")
extern "js" fn pointer_event_init_get_pointer_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pointerType"

#cfg(target="js")
extern "js" fn pointer_event_init_get_is_primary_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isPrimary"

#cfg(target="js")
extern "js" fn pointer_event_init_get_persistent_device_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.persistentDeviceId"

#cfg(target="js")
extern "js" fn pointer_event_init_get_coalesced_events_ffi(obj: JsValue) -> JsValue = "(obj) => obj.coalescedEvents"

#cfg(target="js")
extern "js" fn pointer_event_init_get_predicted_events_ffi(obj: JsValue) -> JsValue = "(obj) => obj.predictedEvents"

#cfg(target="wasm-gc")
fn pointer_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue, screen_x: JsValue, screen_y: JsValue, client_x: JsValue, client_y: JsValue, button: JsValue, buttons: JsValue, related_target: JsValue, pointer_id: JsValue, width: JsValue, height: JsValue, pressure: JsValue, tangential_pressure: JsValue, tilt_x: JsValue, tilt_y: JsValue, twist: JsValue, altitude_angle: JsValue, azimuth_angle: JsValue, pointer_type: JsValue, is_primary: JsValue, persistent_device_id: JsValue, coalesced_events: JsValue, predicted_events: JsValue) -> PointerEventInit = "webapi_PointerEventInit" "new"

#cfg(target="wasm-gc")
fn pointer_event_init_empty_ffi() -> PointerEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn pointer_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn pointer_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn pointer_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_composed"

#cfg(target="wasm-gc")
fn pointer_event_init_get_view_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_view"

#cfg(target="wasm-gc")
fn pointer_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_detail"

#cfg(target="wasm-gc")
fn pointer_event_init_get_which_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_which"

#cfg(target="wasm-gc")
fn pointer_event_init_get_ctrl_key_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_ctrlKey"

#cfg(target="wasm-gc")
fn pointer_event_init_get_shift_key_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_shiftKey"

#cfg(target="wasm-gc")
fn pointer_event_init_get_alt_key_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_altKey"

#cfg(target="wasm-gc")
fn pointer_event_init_get_meta_key_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_metaKey"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_alt_graph_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierAltGraph"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_caps_lock_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierCapsLock"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_fn_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierFn"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_fn_lock_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierFnLock"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_hyper_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierHyper"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_num_lock_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierNumLock"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_scroll_lock_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierScrollLock"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_super_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierSuper"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_symbol_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierSymbol"

#cfg(target="wasm-gc")
fn pointer_event_init_get_modifier_symbol_lock_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_modifierSymbolLock"

#cfg(target="wasm-gc")
fn pointer_event_init_get_screen_x_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_screenX"

#cfg(target="wasm-gc")
fn pointer_event_init_get_screen_y_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_screenY"

#cfg(target="wasm-gc")
fn pointer_event_init_get_client_x_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_clientX"

#cfg(target="wasm-gc")
fn pointer_event_init_get_client_y_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_clientY"

#cfg(target="wasm-gc")
fn pointer_event_init_get_button_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_button"

#cfg(target="wasm-gc")
fn pointer_event_init_get_buttons_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_buttons"

#cfg(target="wasm-gc")
fn pointer_event_init_get_related_target_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_relatedTarget"

#cfg(target="wasm-gc")
fn pointer_event_init_get_pointer_id_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_pointerId"

#cfg(target="wasm-gc")
fn pointer_event_init_get_width_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_width"

#cfg(target="wasm-gc")
fn pointer_event_init_get_height_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_height"

#cfg(target="wasm-gc")
fn pointer_event_init_get_pressure_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_pressure"

#cfg(target="wasm-gc")
fn pointer_event_init_get_tangential_pressure_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_tangentialPressure"

#cfg(target="wasm-gc")
fn pointer_event_init_get_tilt_x_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_tiltX"

#cfg(target="wasm-gc")
fn pointer_event_init_get_tilt_y_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_tiltY"

#cfg(target="wasm-gc")
fn pointer_event_init_get_twist_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_twist"

#cfg(target="wasm-gc")
fn pointer_event_init_get_altitude_angle_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_altitudeAngle"

#cfg(target="wasm-gc")
fn pointer_event_init_get_azimuth_angle_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_azimuthAngle"

#cfg(target="wasm-gc")
fn pointer_event_init_get_pointer_type_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_pointerType"

#cfg(target="wasm-gc")
fn pointer_event_init_get_is_primary_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_isPrimary"

#cfg(target="wasm-gc")
fn pointer_event_init_get_persistent_device_id_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_persistentDeviceId"

#cfg(target="wasm-gc")
fn pointer_event_init_get_coalesced_events_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_coalescedEvents"

#cfg(target="wasm-gc")
fn pointer_event_init_get_predicted_events_ffi(obj: JsValue) -> JsValue = "webapi_PointerEventInit" "get_predictedEvents"