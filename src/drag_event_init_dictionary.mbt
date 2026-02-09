// Do not edit. This file is generated.
// MoonBit type: DragEventInit
// Specifications: uievents.idl, dom.idl, html.idl

///|
/// [DragEventInit](https://developer.mozilla.org/en-US/docs/Web/API/DragEventInit)
#external
pub type DragEventInit

///|
pub impl TJsValue for DragEventInit with to_js(self : DragEventInit) -> JsValue = "%identity"

///|
pub fn DragEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
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
  screen_x? : Int = (0 : Int),
  screen_y? : Int = (0 : Int),
  client_x? : Int = (0 : Int),
  client_y? : Int = (0 : Int),
  button? : Int = (0 : Int),
  buttons? : UInt = (0 : UInt),
  related_target? : &TEventTarget = JsValue::null(),
  data_transfer? : &TDataTransfer = JsValue::null(),
) -> DragEventInit {
  drag_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
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
    TJsValue::to_js(screen_x),
    TJsValue::to_js(screen_y),
    TJsValue::to_js(client_x),
    TJsValue::to_js(client_y),
    TJsValue::to_js(button),
    TJsValue::to_js(buttons),
    TJsValue::to_js(related_target),
    TJsValue::to_js(data_transfer),
  )
}

///|
pub fn DragEventInit::empty() -> DragEventInit {
  drag_event_init_empty_ffi()
}
