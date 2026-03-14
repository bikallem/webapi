// Do not edit. This file is generated.
// MoonBit type: NotRestoredReasons
// Specifications: html.idl

/// [NotRestoredReasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons)
#external
pub type NotRestoredReasons

pub impl TJsValue for NotRestoredReasons with to_js(self: NotRestoredReasons) -> JsValue = "%identity"

pub impl FromJsAny for NotRestoredReasons with from_js_any(value : JsAny) -> NotRestoredReasons = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNotRestoredReasons] NotRestoredReasons::into(self : NotRestoredReasons) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNotRestoredReasons] NotRestoredReasons::unsafe_into(self : NotRestoredReasons) -> T = "%identity"

pub impl HasConstructor for NotRestoredReasons with constructor_name() { "NotRestoredReasons" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNotRestoredReasons + HasConstructor] NotRestoredReasons::try_into(self : NotRestoredReasons) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TNotRestoredReasons for NotRestoredReasons

/// [NotRestoredReasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons) interface.
pub trait TNotRestoredReasons: TJsValue {
  src(self : Self) -> String = _
  id(self : Self) -> String = _
  name(self : Self) -> String = _
  url(self : Self) -> String = _
  reasons(self : Self) -> Array[NotRestoredReasonDetails] = _
  children(self : Self) -> Array[NotRestoredReasons] = _
  to_json(self : Self) -> JsValue = _
}

/// [NotRestoredReasons.src](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/src)
impl TNotRestoredReasons with src(self : Self) -> String {
  not_restored_reasons_src_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.id](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/id)
impl TNotRestoredReasons with id(self : Self) -> String {
  not_restored_reasons_id_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.name](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/name)
impl TNotRestoredReasons with name(self : Self) -> String {
  not_restored_reasons_name_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.url](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/url)
impl TNotRestoredReasons with url(self : Self) -> String {
  not_restored_reasons_url_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.reasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/reasons)
impl TNotRestoredReasons with reasons(self : Self) -> Array[NotRestoredReasonDetails] {
  not_restored_reasons_reasons_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.children](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/children)
impl TNotRestoredReasons with children(self : Self) -> Array[NotRestoredReasons] {
  not_restored_reasons_children_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasons.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/toJSON)
impl TNotRestoredReasons with to_json(self : Self) -> JsValue {
  not_restored_reasons_to_json_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn not_restored_reasons_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn not_restored_reasons_src_ffi(obj: JsValue) -> String {
  not_restored_reasons_src_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn not_restored_reasons_id_ffi(obj: JsValue) -> String {
  not_restored_reasons_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn not_restored_reasons_name_ffi(obj: JsValue) -> String {
  not_restored_reasons_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn not_restored_reasons_url_ffi(obj: JsValue) -> String {
  not_restored_reasons_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_reasons_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reasons"

///|
#cfg(target="js")
fn not_restored_reasons_reasons_ffi(obj: JsValue) -> Array[NotRestoredReasonDetails] {
  not_restored_reasons_reasons_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_children_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.children"

///|
#cfg(target="js")
fn not_restored_reasons_children_ffi(obj: JsValue) -> Array[NotRestoredReasons] {
  not_restored_reasons_children_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reasons_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn not_restored_reasons_to_json_ffi(obj: JsValue) -> JsValue {
  not_restored_reasons_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn not_restored_reasons_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_src"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_src_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn not_restored_reasons_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_id"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_id_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn not_restored_reasons_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_name"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn not_restored_reasons_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_url"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn not_restored_reasons_reasons_ffi_wasm(obj: JsValue) -> JsArray = "webapi_NotRestoredReasons" "get_reasons"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_reasons_ffi(obj: JsValue) -> Array[NotRestoredReasonDetails] {
  not_restored_reasons_reasons_ffi_wasm(obj).to_array()
}

#cfg(target="wasm-gc")
fn not_restored_reasons_children_ffi_wasm(obj: JsValue) -> JsArray = "webapi_NotRestoredReasons" "get_children"

///|
#cfg(target="wasm-gc")
fn not_restored_reasons_children_ffi(obj: JsValue) -> Array[NotRestoredReasons] {
  not_restored_reasons_children_ffi_wasm(obj).to_array()
}

#cfg(target="wasm-gc")
fn not_restored_reasons_to_json_ffi(obj: JsValue) -> JsValue = "webapi_NotRestoredReasons" "toJSON"