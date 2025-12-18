// Auto-generated MoonBit bindings for DragEventInit dictionary
// Do not edit manually

#external
pub type DragEventInit

pub impl TJsValue for DragEventInit with to_js(self: DragEventInit) -> JsValue = "%identity"


fn drag_event_init_ffi(screen_x : JsValue, screen_y : JsValue, client_x : JsValue, client_y : JsValue, button : JsValue, buttons : JsValue, related_target : JsValue, data_transfer : JsValue) -> DragEventInit = "webapi_DragEventInit" "new"


pub fn DragEventInit::new(
  screen_x? : Int? : Int = 0,
  screen_y? : Int? : Int = 0,
  client_x? : Int? : Int = 0,
  client_y? : Int? : Int = 0,
  button? : Int? : Int = 0,
  buttons? : UInt? : UInt = 0,
  related_target? : &TEventTarget? : &TEventTarget = &TEventTarget::null(),
  data_transfer? : DataTransfer? : DataTransfer = DataTransfer::null()) -> DragEventInit {
    drag_event_init_ffi(
      TJsValue::to_js(screen_x)
     ,TJsValue::to_js(screen_y)
     ,TJsValue::to_js(client_x)
     ,TJsValue::to_js(client_y)
     ,TJsValue::to_js(button)
     ,TJsValue::to_js(buttons)
     ,TJsValue::to_js(related_target)
     ,TJsValue::to_js(data_transfer)
    )
}


pub fn DragEventInit::empty() -> DragEventInit = "webapi_Dictionary" "empty"