// Do not edit. This file is generated.
// MoonBit type: StartInDirectory
// Specifications: file-system-access.idl

/// [StartInDirectory](https://developer.mozilla.org/en-US/docs/Web/API/StartInDirectory)
#external
pub type StartInDirectory

pub impl TJsValue for StartInDirectory with to_js(self: StartInDirectory) -> JsValue = "%identity"

pub impl FromJsAny for StartInDirectory with from_js_any(value : JsAny) -> StartInDirectory = "%identity"

pub(open) trait TStartInDirectory : TJsValue {}

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TStartInDirectory + FromJsAny] StartInDirectory::into(self : StartInDirectory) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TStartInDirectory + FromJsAny] StartInDirectory::unsafe_into(self : StartInDirectory) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TStartInDirectory] StartInDirectory::from(value : T) -> StartInDirectory = "%identity"

pub impl TStartInDirectory for StartInDirectory

pub impl TStartInDirectory for WellKnownDirectory

pub impl TStartInDirectory for FileSystemHandle