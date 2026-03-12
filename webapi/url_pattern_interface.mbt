// Do not edit. This file is generated.
// MoonBit type: URLPattern
// Specifications: urlpattern.idl

///|
/// [URLPattern](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern)
#external
pub type URLPattern

///|
pub impl TJsValue for URLPattern with to_js(self : URLPattern) -> JsValue = "%identity"

///|
pub impl FromJsAny for URLPattern with from_js_any(value : JsAny) -> URLPattern = "%identity"

///|
pub fn[T : TURLPattern] URLPattern::into(self : URLPattern) -> T = "%identity"

///|
pub impl TURLPattern for URLPattern

///|
pub fn URLPattern::new(
  input : &TURLPatternInput,
  base_url : String,
  options? : URLPatternOptions,
) -> URLPattern {
  url_pattern_new_ffi(
    input.to_js(),
    TJsValue::to_js(base_url),
    opt_to_js(options),
  )
}

///|
pub fn URLPattern::new_2(
  input? : &TURLPatternInput,
  options? : URLPatternOptions,
) -> URLPattern {
  url_pattern_new_2_ffi(
    match input {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(options),
  )
}

///|
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

///|
/// [URLPattern.test](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/test)
impl TURLPattern with test_(
  self : Self,
  input? : &TURLPatternInput,
  base_url? : String,
) -> Bool {
  url_pattern_test_ffi(
    TJsValue::to_js(self),
    match input {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(base_url),
  )
}

///|
/// [URLPattern.exec](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/exec)
impl TURLPattern with exec(
  self : Self,
  input? : &TURLPatternInput,
  base_url? : String,
) -> URLPatternResult? {
  url_pattern_exec_ffi(
    TJsValue::to_js(self),
    match input {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(base_url),
  ).to_option()
}

///|
/// [URLPattern.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/protocol)
impl TURLPattern with protocol(self : Self) -> String {
  url_pattern_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.username](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/username)
impl TURLPattern with username(self : Self) -> String {
  url_pattern_username_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.password](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/password)
impl TURLPattern with password(self : Self) -> String {
  url_pattern_password_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hostname)
impl TURLPattern with hostname(self : Self) -> String {
  url_pattern_hostname_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.port](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/port)
impl TURLPattern with port(self : Self) -> String {
  url_pattern_port_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/pathname)
impl TURLPattern with pathname(self : Self) -> String {
  url_pattern_pathname_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.search](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/search)
impl TURLPattern with search(self : Self) -> String {
  url_pattern_search_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.hash](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hash)
impl TURLPattern with hash(self : Self) -> String {
  url_pattern_hash_ffi(TJsValue::to_js(self))
}

///|
/// [URLPattern.hasRegExpGroups](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern/hasRegExpGroups)
impl TURLPattern with has_reg_exp_groups(self : Self) -> Bool {
  url_pattern_has_reg_exp_groups_ffi(TJsValue::to_js(self))
}
