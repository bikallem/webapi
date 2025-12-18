// Auto-generated MoonBit bindings for ProcessingInstruction interface
// Do not edit manually

#external
pub type ProcessingInstruction

pub impl TJsValue for ProcessingInstruction with to_js(self: ProcessingInstruction) -> JsValue = "%identity"


pub fn[T: TProcessingInstruction] ProcessingInstruction::into(self : ProcessingInstruction) -> T = "%identity"
pub impl TProcessingInstruction for ProcessingInstruction

pub trait TProcessingInstruction: TJsValue + TTCharacterData {
  target(self: Self) -> String = _
}

///|
fn processing_instruction_target_ffi(obj : JsValue) -> String = "webapi_ProcessingInstruction" "target"

///|
impl TProcessingInstruction with target(self : Self) -> String {
  processing_instruction_target_ffi(self.to_js())
}