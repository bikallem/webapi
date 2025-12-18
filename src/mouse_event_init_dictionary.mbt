// Auto-generated MoonBit bindings for MouseEventInit dictionary
// Do not edit manually

#external
pub type MouseEventInit

pub impl TJsValue for MouseEventInit with to_js(self: MouseEventInit) -> JsValue = "%identity"


fn mouse_event_init_ffi(ctrl_key : JsValue, shift_key : JsValue, alt_key : JsValue, meta_key : JsValue, modifier_alt_graph : JsValue, modifier_caps_lock : JsValue, modifier_fn : JsValue, modifier_fn_lock : JsValue, modifier_hyper : JsValue, modifier_num_lock : JsValue, modifier_scroll_lock : JsValue, modifier_super : JsValue, modifier_symbol : JsValue, modifier_symbol_lock : JsValue, screen_x : JsValue, screen_y : JsValue, client_x : JsValue, client_y : JsValue, button : JsValue, buttons : JsValue, related_target : JsValue) -> MouseEventInit = "webapi_MouseEventInit" "new"


pub fn MouseEventInit::new(
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
  modifier_symbol_lock? : Bool? : Bool = false,
  screen_x? : Int? : Int = 0,
  screen_y? : Int? : Int = 0,
  client_x? : Int? : Int = 0,
  client_y? : Int? : Int = 0,
  button? : Int? : Int = 0,
  buttons? : UInt? : UInt = 0,
  related_target? : &TEventTarget? : &TEventTarget = &TEventTarget::null()) -> MouseEventInit {
    mouse_event_init_ffi(
      TJsValue::to_js(ctrl_key)
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
     ,TJsValue::to_js(screen_x)
     ,TJsValue::to_js(screen_y)
     ,TJsValue::to_js(client_x)
     ,TJsValue::to_js(client_y)
     ,TJsValue::to_js(button)
     ,TJsValue::to_js(buttons)
     ,TJsValue::to_js(related_target)
    )
}


pub fn MouseEventInit::empty() -> MouseEventInit = "webapi_Dictionary" "empty"