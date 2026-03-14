// Do not edit. This file is generated.
// MoonBit type: URLPattern
// Specifications: urlpattern.idl

/// [URLPattern](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern)
#external
pub type URLPattern

pub impl TJsValue for URLPattern with to_js(self: URLPattern) -> JsValue = "%identity"

pub impl FromJsAny for URLPattern with from_js_any(value : JsAny) -> URLPattern = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TURLPattern] URLPattern::into(self : URLPattern) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TURLPattern] URLPattern::unsafe_into(self : URLPattern) -> T = "%identity"

pub impl HasConstructor for URLPattern with constructor_name() { "URLPattern" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TURLPattern + HasConstructor] URLPattern::try_into(self : URLPattern) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TURLPattern for URLPattern

pub fn URLPattern::new(input : &TURLPatternInput, 
base_url : String, 
options? : URLPatternOptions) -> URLPattern {
  url_pattern_new_ffi(input.to_js(), TJsValue::to_js(base_url), opt_to_js(options))
}

pub fn URLPattern::new_2(input? : &TURLPatternInput, 
options? : URLPatternOptions) -> URLPattern {
  url_pattern_new_2_ffi(match input {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(options))
}

/// [URLPattern](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern) interface.
pub trait TURLPattern: TJsValue {
  test_(self : Self, input? : &TURLPatternInput, base_url? : String) -> Bool = _
  exec(self : Self, input? : &TURLPatternInput, base_url? : String) -> URLPatternResult? = _
  protocol(self : Self) -> String = _
  username(self : Self) -> String = _
  password(self : Self) -> String = _
  hostname(self : Self) -> String = _
  port(self : Self) -> String = _
  pathname(self : Self) -> String = _
  search(self : Self) -> String = _
  hash(self : Self) -> String = _
  has_reg_exp_groups(self : Self) -> Bool = _
}

/// [URLPattern.test](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/test)
impl TURLPattern with test_(self : Self, 
input? : &TURLPatternInput, 
base_url? : String) -> Bool {
  url_pattern_test_ffi(TJsValue::to_js(self), match input {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(base_url))
}

/// [URLPattern.exec](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/exec)
impl TURLPattern with exec(self : Self, 
input? : &TURLPatternInput, 
base_url? : String) -> URLPatternResult? {
  url_pattern_exec_ffi(TJsValue::to_js(self), match input {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(base_url)).to_option()
}

/// [URLPattern.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/protocol)
impl TURLPattern with protocol(self : Self) -> String {
  url_pattern_protocol_ffi(TJsValue::to_js(self))
}

/// [URLPattern.username](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/username)
impl TURLPattern with username(self : Self) -> String {
  url_pattern_username_ffi(TJsValue::to_js(self))
}

/// [URLPattern.password](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/password)
impl TURLPattern with password(self : Self) -> String {
  url_pattern_password_ffi(TJsValue::to_js(self))
}

/// [URLPattern.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hostname)
impl TURLPattern with hostname(self : Self) -> String {
  url_pattern_hostname_ffi(TJsValue::to_js(self))
}

/// [URLPattern.port](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/port)
impl TURLPattern with port(self : Self) -> String {
  url_pattern_port_ffi(TJsValue::to_js(self))
}

/// [URLPattern.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/pathname)
impl TURLPattern with pathname(self : Self) -> String {
  url_pattern_pathname_ffi(TJsValue::to_js(self))
}

/// [URLPattern.search](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/search)
impl TURLPattern with search(self : Self) -> String {
  url_pattern_search_ffi(TJsValue::to_js(self))
}

/// [URLPattern.hash](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hash)
impl TURLPattern with hash(self : Self) -> String {
  url_pattern_hash_ffi(TJsValue::to_js(self))
}

/// [URLPattern.hasRegExpGroups](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hasRegExpGroups)
impl TURLPattern with has_reg_exp_groups(self : Self) -> Bool {
  url_pattern_has_reg_exp_groups_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn url_pattern_new_ffi(input: JsValue, base_url: JsValue, options: JsValue) -> URLPattern = "(input, base_url, options) => new URLPattern(input, base_url, options)"

#cfg(target="js")
extern "js" fn url_pattern_new_2_ffi(input: JsValue, options: JsValue) -> URLPattern = "(input, options) => new URLPattern(input, options)"

#cfg(target="js")
extern "js" fn url_pattern_test_ffi_js(obj: JsValue, input: JsValue, base_url: JsValue) -> JsValue = "(obj, input, base_url) => obj.test(input, base_url)"

///|
#cfg(target="js")
fn url_pattern_test_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> Bool {
  url_pattern_test_ffi_js(obj, input, base_url).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_exec_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> JsValue = "(obj, input, base_url) => obj.exec(input, base_url)"

#cfg(target="js")
extern "js" fn url_pattern_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn url_pattern_protocol_ffi(obj: JsValue) -> String {
  url_pattern_protocol_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_username_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.username"

///|
#cfg(target="js")
fn url_pattern_username_ffi(obj: JsValue) -> String {
  url_pattern_username_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_password_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.password"

///|
#cfg(target="js")
fn url_pattern_password_ffi(obj: JsValue) -> String {
  url_pattern_password_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn url_pattern_hostname_ffi(obj: JsValue) -> String {
  url_pattern_hostname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn url_pattern_port_ffi(obj: JsValue) -> String {
  url_pattern_port_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn url_pattern_pathname_ffi(obj: JsValue) -> String {
  url_pattern_pathname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn url_pattern_search_ffi(obj: JsValue) -> String {
  url_pattern_search_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn url_pattern_hash_ffi(obj: JsValue) -> String {
  url_pattern_hash_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn url_pattern_has_reg_exp_groups_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasRegExpGroups"

///|
#cfg(target="js")
fn url_pattern_has_reg_exp_groups_ffi(obj: JsValue) -> Bool {
  url_pattern_has_reg_exp_groups_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn url_pattern_new_ffi(input: JsValue, base_url: JsValue, options: JsValue) -> URLPattern = "webapi_URLPattern" "new"

#cfg(target="wasm-gc")
fn url_pattern_new_2_ffi(input: JsValue, options: JsValue) -> URLPattern = "webapi_URLPattern" "new_2"

#cfg(target="wasm-gc")
fn url_pattern_test_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> Bool = "webapi_URLPattern" "test"

#cfg(target="wasm-gc")
fn url_pattern_exec_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> JsValue = "webapi_URLPattern" "exec"

#cfg(target="wasm-gc")
fn url_pattern_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_protocol"

///|
#cfg(target="wasm-gc")
fn url_pattern_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_protocol_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_username_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_username"

///|
#cfg(target="wasm-gc")
fn url_pattern_username_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_username_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_password_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_password"

///|
#cfg(target="wasm-gc")
fn url_pattern_password_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_password_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_hostname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_hostname"

///|
#cfg(target="wasm-gc")
fn url_pattern_hostname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_hostname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_port_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_port"

///|
#cfg(target="wasm-gc")
fn url_pattern_port_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_port_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_pathname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_pathname"

///|
#cfg(target="wasm-gc")
fn url_pattern_pathname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_pathname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_search_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_search"

///|
#cfg(target="wasm-gc")
fn url_pattern_search_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_search_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_hash_ffi_wasm(obj: JsValue) -> JsValue = "webapi_URLPattern" "get_hash"

///|
#cfg(target="wasm-gc")
fn url_pattern_hash_ffi(obj: JsValue) -> String {
  jsvalue_to_string(url_pattern_hash_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn url_pattern_has_reg_exp_groups_ffi(obj: JsValue) -> Bool = "webapi_URLPattern" "get_hasRegExpGroups"