///|
pub fn CustomElementConstructor::new(
  f : () -> HTMLElement,
) -> CustomElementConstructor {
  let w : () -> JsValue = fn() { TJsValue::to_js(f()) }
  custom_element_constructor_ffi(w).unsafe_cast()
}

///|
fn custom_element_constructor_ffi(f : () -> JsValue) -> JsValue = "webapi_CustomElementConstructor" "new"
