// Do not edit. This file is generated.
// MoonBit type: CDATASection
// Specifications: dom.idl

///|
/// [CDATASection](https://developer.mozilla.org/en-US/docs/Web/API/CDATASection)
#external
pub type CDATASection

///|
pub impl TJsValue for CDATASection with to_js(self : CDATASection) -> JsValue = "%identity"

///|
pub impl FromJsAny for CDATASection with from_js_any(value : JsAny) -> CDATASection = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCDATASection] CDATASection::into(self : CDATASection) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCDATASection] CDATASection::unsafe_into(self : CDATASection) -> T = "%identity"

///|
pub impl HasConstructor for CDATASection with constructor_name() {
  "CDATASection"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCDATASection + HasConstructor] CDATASection::try_into(
  self : CDATASection,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCDATASection for CDATASection

///|
pub impl TText for CDATASection

///|
pub impl TCharacterData for CDATASection

///|
pub impl TNode for CDATASection

///|
pub impl TEventTarget for CDATASection

///|
/// [CDATASection](https://developer.mozilla.org/en-US/docs/Web/API/CDATASection) interface.
pub trait TCDATASection: TText {}
