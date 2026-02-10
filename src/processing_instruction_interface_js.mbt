extern "js" fn processing_instruction_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn processing_instruction_target_ffi(obj: JsValue) -> String {
  processing_instruction_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn processing_instruction_sheet_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sheet"

///|
fn processing_instruction_sheet_ffi(obj: JsValue) -> CSSStyleSheet {
  processing_instruction_sheet_ffi_js(obj).unsafe_cast()
}