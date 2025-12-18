// Auto-generated MoonBit bindings for EventModifierInit dictionary
// Do not edit manually

#external
pub type EventModifierInit

pub impl TJsValue for EventModifierInit with to_js(self: EventModifierInit) -> JsValue = "%identity"


fn event_modifier_init_ffi(view : JsValue, detail : JsValue, which : JsValue, ctrl_key : JsValue, shift_key : JsValue, alt_key : JsValue, meta_key : JsValue, modifier_alt_graph : JsValue, modifier_caps_lock : JsValue, modifier_fn : JsValue, modifier_fn_lock : JsValue, modifier_hyper : JsValue, modifier_num_lock : JsValue, modifier_scroll_lock : JsValue, modifier_super : JsValue, modifier_symbol : JsValue, modifier_symbol_lock : JsValue) -> EventModifierInit = "webapi_EventModifierInit" "new"


pub fn EventModifierInit::new(
  view? : &TWindow? : &TWindow = &TWindow::null(),
  detail? : Int? : Int = 0,
  which? : UInt? : UInt = 0,
  ctrl_key? : Bool? : Bool = false,
  shift_key? : Bool? : Bool = false,
  alt_key? : Bool? : Bool = false,
  meta_key? : Bool? : Bool = false,
  modifier_alt_graph? : Bool? : Bool = false,
  modifier_caps_lock? : Bool? : Bool = false,
  modifier_fn? : Bool? : Bool = false,
  modifier_fn_lock? : Bool? : Bool = false,
  modifier_hyper? : Bool? : Bool = false,
  modifier_num_lock? : Bool? : Bool = false,
  modifier_scroll_lock? : Bool? : Bool = false,
  modifier_super? : Bool? : Bool = false,
  modifier_symbol? : Bool? : Bool = false,
  modifier_symbol_lock? : Bool? : Bool = false) -> EventModifierInit {
    event_modifier_init_ffi(
      TJsValue::to_js(view)
     ,TJsValue::to_js(detail)
     ,TJsValue::to_js(which)
     ,TJsValue::to_js(ctrl_key)
     ,TJsValue::to_js(shift_key)
     ,TJsValue::to_js(alt_key)
     ,TJsValue::to_js(meta_key)
     ,TJsValue::to_js(modifier_alt_graph)
     ,TJsValue::to_js(modifier_caps_lock)
     ,TJsValue::to_js(modifier_fn)
     ,TJsValue::to_js(modifier_fn_lock)
     ,TJsValue::to_js(modifier_hyper)
     ,TJsValue::to_js(modifier_num_lock)
     ,TJsValue::to_js(modifier_scroll_lock)
     ,TJsValue::to_js(modifier_super)
     ,TJsValue::to_js(modifier_symbol)
     ,TJsValue::to_js(modifier_symbol_lock)
    )
}


pub fn EventModifierInit::empty() -> EventModifierInit = "webapi_Dictionary" "empty"