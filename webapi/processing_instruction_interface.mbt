// Do not edit. This file is generated.
// MoonBit type: ProcessingInstruction
// Specifications: dom.idl

///|
/// [ProcessingInstruction](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction)
#external
pub type ProcessingInstruction

///|
pub impl TJsValue for ProcessingInstruction with to_js(
  self : ProcessingInstruction,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ProcessingInstruction with from_js_any(value : JsAny) -> ProcessingInstruction = "%identity"

///|
pub fn[T : TProcessingInstruction] ProcessingInstruction::into(
  self : ProcessingInstruction,
) -> T = "%identity"

///|
pub impl TProcessingInstruction for ProcessingInstruction

///|
pub impl TCharacterData for ProcessingInstruction

///|
pub impl TNode for ProcessingInstruction

///|
pub impl TEventTarget for ProcessingInstruction

///|
/// [ProcessingInstruction](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction) interface.
pub trait TProcessingInstruction: TCharacterData {
  target(self : Self) -> String = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
/// [ProcessingInstruction.target](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction/target)
impl TProcessingInstruction with target(self : Self) -> String {
  processing_instruction_target_ffi(TJsValue::to_js(self))
}

///|
/// [ProcessingInstruction.sheet](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction/sheet)
impl TProcessingInstruction with sheet(self : Self) -> CSSStyleSheet {
  processing_instruction_sheet_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn processing_instruction_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn processing_instruction_target_ffi(obj : JsValue) -> String {
  processing_instruction_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn processing_instruction_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sheet"

///|
#cfg(target="js")
fn processing_instruction_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  processing_instruction_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn processing_instruction_target_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ProcessingInstruction" "get_target"

///|
#cfg(target="wasm-gc")
fn processing_instruction_target_ffi(obj : JsValue) -> String {
  jsvalue_to_string(processing_instruction_target_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn processing_instruction_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_ProcessingInstruction" "get_sheet"
