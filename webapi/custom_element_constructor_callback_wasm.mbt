///|
fn custom_element_constructor_ffi(
  callback : () -> HTMLElement,
) -> CustomElementConstructor = "webapi_CustomElementConstructor" "new"
