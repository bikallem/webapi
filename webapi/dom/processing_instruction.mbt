// Auto-generated MoonBit bindings for ProcessingInstruction

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface ProcessingInstruction : CharacterData {
//   readonly attribute DOMString target;
// };

///|
#external
pub type ProcessingInstruction

///|
pub trait TProcessingInstruction: TJsValue + TCharacterData {
  target(self : Self) -> String = _
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
pub impl TJsValue for ProcessingInstruction with to_js(self : ProcessingInstruction) -> JsValue = "%identity"

///|
fn processing_instruction_target_ffi(obj : JsValue) -> String = "webapi_ProcessingInstruction" "target"

///|
impl TProcessingInstruction with target(self : Self) -> String {
  processing_instruction_target_ffi(self.to_js())
}