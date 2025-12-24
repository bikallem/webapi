// MoonBit bindings for global objects

///|
extern "js" fn global_document_ffi() -> Document = "() => document"

///|
pub let document : Document = global_document_ffi()

///|
extern "js" fn global_window_ffi() -> Window = "() => window"

///|
pub let window : Window = global_window_ffi()

///|
extern "js" fn global_navigator_ffi() -> Navigator = "() => navigator"

///|
pub let navigator : Navigator = global_navigator_ffi()
