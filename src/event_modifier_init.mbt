// Auto-generated MoonBit bindings for EventModifierInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary EventModifierInit : UIEventInit {
//   boolean ctrlKey = false;
//   boolean shiftKey = false;
//   boolean altKey = false;
//   boolean metaKey = false;
// 
//   boolean modifierAltGraph = false;
//   boolean modifierCapsLock = false;
//   boolean modifierFn = false;
//   boolean modifierFnLock = false;
//   boolean modifierHyper = false;
//   boolean modifierNumLock = false;
//   boolean modifierScrollLock = false;
//   boolean modifierSuper = false;
//   boolean modifierSymbol = false;
//   boolean modifierSymbolLock = false;
// };

///|
#external
pub type EventModifierInit

///|
pub impl TJsValue for EventModifierInit with to_js(self : EventModifierInit) -> JsValue = "%identity"

///|
fn event_modifier_init_ffi(
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
) -> EventModifierInit = "webapi_EventModifierInit" "new"

///|
pub fn EventModifierInit::new(
  ctrl_key? : Bool = false,
  shift_key? : Bool = false,
  alt_key? : Bool = false,
  meta_key? : Bool = false,
  modifier_alt_graph? : Bool = false,
  modifier_caps_lock? : Bool = false,
  modifier_fn? : Bool = false,
  modifier_fn_lock? : Bool = false,
  modifier_hyper? : Bool = false,
  modifier_num_lock? : Bool = false,
  modifier_scroll_lock? : Bool = false,
  modifier_super? : Bool = false,
  modifier_symbol? : Bool = false,
  modifier_symbol_lock? : Bool = false,
) -> EventModifierInit {
  event_modifier_init_ffi(
    TJsValue::to_js(ctrl_key),
    TJsValue::to_js(shift_key),
    TJsValue::to_js(alt_key),
    TJsValue::to_js(meta_key),
    TJsValue::to_js(modifier_alt_graph),
    TJsValue::to_js(modifier_caps_lock),
    TJsValue::to_js(modifier_fn),
    TJsValue::to_js(modifier_fn_lock),
    TJsValue::to_js(modifier_hyper),
    TJsValue::to_js(modifier_num_lock),
    TJsValue::to_js(modifier_scroll_lock),
    TJsValue::to_js(modifier_super),
    TJsValue::to_js(modifier_symbol),
    TJsValue::to_js(modifier_symbol_lock),
  )
}

///|
pub fn EventModifierInit::empty() -> EventModifierInit = "webapi_Dictionary" "empty"
