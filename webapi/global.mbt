// MoonBit bindings for global objects

///|
pub let document : Document = global_document_ffi()

///|
pub let window : Window = global_window_ffi()

///|
pub let navigator : Navigator = global_navigator_ffi()

///|
#cfg(target="js")
extern "js" fn global_document_ffi() -> Document = "() => document"

///|
#cfg(target="js")
extern "js" fn global_window_ffi() -> Window = "() => window"

///|
#cfg(target="js")
extern "js" fn global_navigator_ffi() -> Navigator = "() => navigator"

///|
#cfg(target="wasm-gc")
fn global_document_ffi() -> Document = "webapi_Global" "document"

///|
#cfg(target="wasm-gc")
fn global_window_ffi() -> Window = "webapi_Global" "window"

///|
#cfg(target="wasm-gc")
fn global_navigator_ffi() -> Navigator = "webapi_Global" "navigator"
