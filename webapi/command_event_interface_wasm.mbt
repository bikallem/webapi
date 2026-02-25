///|
fn command_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CommandEvent = "webapi_CommandEvent" "new"

///|
fn command_event_source_ffi(obj : JsValue) -> Element = "webapi_CommandEvent" "get_source"

///|
fn command_event_command_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CommandEvent" "get_command"

///|
fn command_event_command_ffi(obj : JsValue) -> String {
  jsvalue_to_string(command_event_command_ffi_wasm(obj))
}
