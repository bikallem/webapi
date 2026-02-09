///|
fn processing_instruction_target_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ProcessingInstruction" "get_target"

///|
fn processing_instruction_target_ffi(obj : JsValue) -> String {
  jsvalue_to_string(processing_instruction_target_ffi_wasm(obj))
}

///|
fn processing_instruction_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_ProcessingInstruction" "get_sheet"
