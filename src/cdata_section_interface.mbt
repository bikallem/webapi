// Do not edit. This file is generated.
// MoonBit type: CDATASection
// Specifications: dom.idl

/// [CDATASection](https://developer.mozilla.org/en-US/docs/Web/API/CDATASection)
#external
pub type CDATASection

pub impl TJsValue for CDATASection with to_js(self: CDATASection) -> JsValue = "%identity"

pub fn[T: TCDATASection] CDATASection::into(self : CDATASection) -> T = "%identity"

pub impl TCDATASection for CDATASection

pub impl TText for CDATASection

pub impl TCharacterData for CDATASection

pub impl TNode for CDATASection

pub impl TEventTarget for CDATASection

/// [CDATASection](https://developer.mozilla.org/en-US/docs/Web/API/CDATASection) interface.
pub trait TCDATASection: TText {

}

