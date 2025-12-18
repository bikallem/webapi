// Auto-generated MoonBit bindings for FormDataEventInit dictionary
// Do not edit manually

#external
pub type FormDataEventInit

pub impl TJsValue for FormDataEventInit with to_js(self: FormDataEventInit) -> JsValue = "%identity"


fn form_data_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, form_data : JsValue) -> FormDataEventInit = "webapi_FormDataEventInit" "new"


pub fn FormDataEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  form_data : FormData) -> FormDataEventInit {
    form_data_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(form_data)
    )
}


pub fn FormDataEventInit::empty() -> FormDataEventInit = "webapi_Dictionary" "empty"