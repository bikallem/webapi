// Auto-generated MoonBit bindings for FocusEventInit dictionary
// Do not edit manually

#external
pub type FocusEventInit

pub impl TJsValue for FocusEventInit with to_js(self: FocusEventInit) -> JsValue = "%identity"


fn focus_event_init_ffi(view : JsValue, detail : JsValue, which : JsValue, related_target : JsValue) -> FocusEventInit = "webapi_FocusEventInit" "new"


pub fn FocusEventInit::new(
  view? : &TWindow? : &TWindow = &TWindow::null(),
  detail? : Int? : Int = 0,
  which? : UInt? : UInt = 0,
  related_target? : &TEventTarget? : &TEventTarget = &TEventTarget::null()) -> FocusEventInit {
    focus_event_init_ffi(
      TJsValue::to_js(view)
     ,TJsValue::to_js(detail)
     ,TJsValue::to_js(which)
     ,TJsValue::to_js(related_target)
    )
}


pub fn FocusEventInit::empty() -> FocusEventInit = "webapi_Dictionary" "empty"