///|
#external
pub type ProcessingInstruction

///|
pub impl TJsValue for ProcessingInstruction with to_js(
  self : ProcessingInstruction,
) -> JsValue = "%identity"

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
pub trait TProcessingInstruction: TCharacterData {
  target(self : Self) -> String = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
extern "js" fn processing_instruction_target_ffi(obj : JsValue) -> String = "(obj) => obj.target"

///|
impl TProcessingInstruction with target(self : Self) -> String {
  processing_instruction_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn processing_instruction_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.sheet"

///|
impl TProcessingInstruction with sheet(self : Self) -> CSSStyleSheet {
  processing_instruction_sheet_ffi(TJsValue::to_js(self))
}
