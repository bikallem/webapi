///|
extern "js" fn global_document_ffi() -> Document = "() => document"

///|
extern "js" fn global_window_ffi() -> Window = "() => window"

///|
extern "js" fn global_navigator_ffi() -> Navigator = "() => navigator"
