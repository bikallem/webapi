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
pub trait TProcessingInstruction: TCharacterData {}
