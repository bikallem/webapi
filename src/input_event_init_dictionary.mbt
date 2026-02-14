// Do not edit. This file is generated.
// MoonBit type: InputEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [InputEventInit](https://developer.mozilla.org/en-US/docs/Web/API/InputEventInit)
#external
pub type InputEventInit

///|
pub impl TJsValue for InputEventInit with to_js(self : InputEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for InputEventInit with from_js_any(value : JsAny) -> InputEventInit = "%identity"

///|
pub fn InputEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow,
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  data? : String,
  is_composing? : Bool = false,
  input_type? : String = "",
) -> InputEventInit {
  input_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    opt_to_js(data),
    TJsValue::to_js(is_composing),
    TJsValue::to_js(input_type),
  )
}

///|
pub fn InputEventInit::empty() -> InputEventInit {
  input_event_init_empty_ffi()
}

///|
pub fn InputEventInit::bubbles(self : InputEventInit) -> Bool? {
  let result = input_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::cancelable(self : InputEventInit) -> Bool? {
  let result = input_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::composed(self : InputEventInit) -> Bool? {
  let result = input_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::view(self : InputEventInit) -> Window? {
  let result = input_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn InputEventInit::detail(self : InputEventInit) -> Int? {
  let result = input_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::which(self : InputEventInit) -> UInt? {
  let result = input_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::data(self : InputEventInit) -> String? {
  let result = input_event_init_get_data_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::is_composing(self : InputEventInit) -> Bool? {
  let result = input_event_init_get_is_composing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn InputEventInit::input_type(self : InputEventInit) -> String? {
  let result = input_event_init_get_input_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
