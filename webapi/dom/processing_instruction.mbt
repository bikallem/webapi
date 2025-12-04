// Auto-generated MoonBit bindings for ProcessingInstruction

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface ProcessingInstruction : CharacterData {
//   readonly attribute DOMString target;
// };
// 
// interface mixin LinkStyle {
//   readonly attribute CSSStyleSheet? sheet;
// };

///|
#external
pub type ProcessingInstruction

///|
pub trait TProcessingInstruction: TJsValue + TCharacterData {
  target(self : Self) -> String = _
  sheet(self : Self) -> JsValue? = _
}

///|
pub impl TEventTarget for ProcessingInstruction

///|
pub impl TNode for ProcessingInstruction

///|
pub impl TCharacterData for ProcessingInstruction

///|
pub impl TProcessingInstruction for ProcessingInstruction

///|
pub impl TJsValue for ProcessingInstruction with to_js(
  self : ProcessingInstruction,
) -> JsValue = "%identity"

///|
pub fn ProcessingInstruction::null() -> ProcessingInstruction = "JsValue" "null"

///|
pub fn ProcessingInstruction::is_null(self : ProcessingInstruction) -> Bool = "JsValue" "isNull"

///|
fn processing_instruction_target_ffi(obj : JsValue) -> String = "webapi_ProcessingInstruction" "target"

///|
impl TProcessingInstruction with target(self : Self) -> String {
  processing_instruction_target_ffi(self.to_js())
}

///|
fn processing_instruction_sheet_ffi(obj : JsValue) -> JsValue = "webapi_ProcessingInstruction" "sheet"

///|
impl TProcessingInstruction with sheet(self : Self) -> JsValue? {
  processing_instruction_sheet_ffi(self.to_js()).as_option()
}
