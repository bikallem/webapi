// Auto-generated MoonBit bindings for CompositionEventInit dictionary
// Do not edit manually

#external
pub type CompositionEventInit

pub impl TJsValue for CompositionEventInit with to_js(self: CompositionEventInit) -> JsValue = "%identity"


fn composition_event_init_ffi(view : JsValue, detail : JsValue, which : JsValue, data : JsValue) -> CompositionEventInit = "webapi_CompositionEventInit" "new"


pub fn CompositionEventInit::new(
  view? : &TWindow? : &TWindow = &TWindow::null(),
  detail? : Int? : Int = 0,
  which? : UInt? : UInt = 0,
  data? : String? : String = "") -> CompositionEventInit {
    composition_event_init_ffi(
      TJsValue::to_js(view)
     ,TJsValue::to_js(detail)
     ,TJsValue::to_js(which)
     ,TJsValue::to_js(data)
    )
}


pub fn CompositionEventInit::empty() -> CompositionEventInit = "webapi_Dictionary" "empty"