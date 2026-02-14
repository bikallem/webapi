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
pub impl FromJsAny for DragEventInit with from_js_any(value : JsAny) -> DragEventInit = "%identity"

///|
pub fn DragEventInit::new(
  bubbles? : Bool,
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
  data_transfer? : &TDataTransfer,
) -> DragEventInit {
  drag_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
    opt_to_js(ctrl_key),
    opt_to_js(shift_key),
    opt_to_js(alt_key),
    opt_to_js(meta_key),
    opt_to_js(modifier_alt_graph),
    opt_to_js(modifier_caps_lock),
    opt_to_js(modifier_fn),
    opt_to_js(modifier_fn_lock),
    opt_to_js(modifier_hyper),
    opt_to_js(modifier_num_lock),
    opt_to_js(modifier_scroll_lock),
    opt_to_js(modifier_super),
    opt_to_js(modifier_symbol),
    opt_to_js(modifier_symbol_lock),
    opt_to_js(screen_x),
    opt_to_js(screen_y),
    opt_to_js(client_x),
    opt_to_js(client_y),
    opt_to_js(button),
    opt_to_js(buttons),
    opt_to_js(related_target),
    opt_to_js(data_transfer),
  )
}

///|
pub fn DragEventInit::empty() -> DragEventInit {
  drag_event_init_empty_ffi()
}

///|
pub fn DragEventInit::bubbles(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::cancelable(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::composed(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::view(self : DragEventInit) -> Window? {
  let result = drag_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DragEventInit::detail(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::which(self : DragEventInit) -> UInt? {
  let result = drag_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::ctrl_key(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_ctrl_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::shift_key(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_shift_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::alt_key(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_alt_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::meta_key(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_meta_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_alt_graph(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_caps_lock(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_fn(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_fn_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_fn_lock(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_hyper(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_num_lock(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_scroll_lock(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_scroll_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_super(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_super_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_symbol(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::modifier_symbol_lock(self : DragEventInit) -> Bool? {
  let result = drag_event_init_get_modifier_symbol_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::screen_x(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_screen_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::screen_y(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_screen_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::client_x(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_client_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::client_y(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_client_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::button(self : DragEventInit) -> Int? {
  let result = drag_event_init_get_button_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::buttons(self : DragEventInit) -> UInt? {
  let result = drag_event_init_get_buttons_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DragEventInit::related_target(self : DragEventInit) -> EventTarget? {
  let result = drag_event_init_get_related_target_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DragEventInit::data_transfer(self : DragEventInit) -> DataTransfer? {
  let result = drag_event_init_get_data_transfer_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
