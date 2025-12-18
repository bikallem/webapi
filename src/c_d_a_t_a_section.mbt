// Auto-generated MoonBit bindings for CDATASection interface
// Do not edit manually

#external
pub type CDATASection

pub impl TJsValue for CDATASection with to_js(self: CDATASection) -> JsValue = "%identity"


pub fn[T: TCDATASection] CDATASection::into(self : CDATASection) -> T = "%identity"
pub impl TCDATASection for CDATASection

pub trait TCDATASection: TJsValue + TTText {
}