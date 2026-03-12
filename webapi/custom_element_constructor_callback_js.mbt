///|
extern "js" fn custom_element_constructor_ffi(
  callback : () -> HTMLElement,
) -> CustomElementConstructor = "(callback) => callback"
