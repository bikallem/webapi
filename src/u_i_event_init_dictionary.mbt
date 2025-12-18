// Auto-generated MoonBit bindings for UIEventInit dictionary
// Do not edit manually

#external
pub type UIEventInit

pub impl TJsValue for UIEventInit with to_js(self: UIEventInit) -> JsValue = "%identity"


fn u_i_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, view : JsValue, detail : JsValue, which : JsValue) -> UIEventInit = "webapi_UIEventInit" "new"


pub fn UIEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  view? : &TWindow? : &TWindow = &TWindow::null(),
  detail? : Int? : Int = 0,
  which? : UInt? : UInt = 0) -> UIEventInit {
    u_i_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(view)
     ,TJsValue::to_js(detail)
     ,TJsValue::to_js(which)
    )
}


pub fn UIEventInit::empty() -> UIEventInit = "webapi_Dictionary" "empty"