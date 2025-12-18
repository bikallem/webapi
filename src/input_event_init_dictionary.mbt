// Auto-generated MoonBit bindings for InputEventInit dictionary
// Do not edit manually

#external
pub type InputEventInit

pub impl TJsValue for InputEventInit with to_js(self: InputEventInit) -> JsValue = "%identity"


fn input_event_init_ffi(view : JsValue, detail : JsValue, which : JsValue, data : JsValue, is_composing : JsValue, input_type : JsValue) -> InputEventInit = "webapi_InputEventInit" "new"


pub fn InputEventInit::new(
  view? : &TWindow? : &TWindow = &TWindow::null(),
  detail? : Int? : Int = 0,
  which? : UInt? : UInt = 0,
  data? : String? : String = String::null(),
  is_composing? : Bool? : Bool = false,
  input_type? : String? : String = "") -> InputEventInit {
    input_event_init_ffi(
      TJsValue::to_js(view)
     ,TJsValue::to_js(detail)
     ,TJsValue::to_js(which)
     ,TJsValue::to_js(data)
     ,TJsValue::to_js(is_composing)
     ,TJsValue::to_js(input_type)
    )
}


pub fn InputEventInit::empty() -> InputEventInit = "webapi_Dictionary" "empty"