// MoonBit bindings for global objects

///|
pub fn document() -> Document {
  global_document_ffi()
}

///|
pub fn window() -> Window {
  global_window_ffi()
}

///|
pub fn navigator() -> Navigator {
  global_navigator_ffi()
}
