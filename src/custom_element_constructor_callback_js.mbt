pub fn CustomElementConstructor::new(f : () -> HTMLElement) -> CustomElementConstructor { custom_element_constructor_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn custom_element_constructor_ffi(f : JsValue) -> JsValue = "(f) => f"