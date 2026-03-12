// Do not edit. This file is generated.
// MoonBit type: TrustedTypePolicy
// Specifications: trusted-types.idl

///|
/// [TrustedTypePolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy)
#external
pub type TrustedTypePolicy

///|
pub impl TJsValue for TrustedTypePolicy with to_js(self : TrustedTypePolicy) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedTypePolicy with from_js_any(value : JsAny) -> TrustedTypePolicy = "%identity"

///|
pub fn[T : TTrustedTypePolicy] TrustedTypePolicy::into(
  self : TrustedTypePolicy,
) -> T = "%identity"

///|
pub impl TTrustedTypePolicy for TrustedTypePolicy

///|
/// [TrustedTypePolicy](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy) interface.
pub trait TTrustedTypePolicy: TJsValue {
  name(self : Self) -> String = _
  create_html(self : Self, input : String, arguments : Array[&TJsValue]) -> TrustedHTML = _
  create_script(self : Self, input : String, arguments : Array[&TJsValue]) -> TrustedScript = _
  create_script_url(self : Self, input : String, arguments : Array[&TJsValue]) -> TrustedScriptURL = _
}

///|
/// [TrustedTypePolicy.name](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/name)
impl TTrustedTypePolicy with name(self : Self) -> String {
  trusted_type_policy_name_ffi(TJsValue::to_js(self))
}

///|
/// [TrustedTypePolicy.createHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createHTML)
impl TTrustedTypePolicy with create_html(
  self : Self,
  input : String,
  arguments : Array[&TJsValue],
) -> TrustedHTML {
  trusted_type_policy_create_html_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [TrustedTypePolicy.createScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createScript)
impl TTrustedTypePolicy with create_script(
  self : Self,
  input : String,
  arguments : Array[&TJsValue],
) -> TrustedScript {
  trusted_type_policy_create_script_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [TrustedTypePolicy.createScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedTypePolicy/createScriptURL)
impl TTrustedTypePolicy with create_script_url(
  self : Self,
  input : String,
  arguments : Array[&TJsValue],
) -> TrustedScriptURL {
  trusted_type_policy_create_script_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn trusted_type_policy_name_ffi(obj : JsValue) -> String {
  trusted_type_policy_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_create_html_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createHTML(input, ..._arguments)"

///|
#cfg(target="js")
fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedHTML {
  trusted_type_policy_create_html_ffi_js(obj, input, arguments).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_create_script_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createScript(input, ..._arguments)"

///|
#cfg(target="js")
fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScript {
  trusted_type_policy_create_script_ffi_js(obj, input, arguments).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn trusted_type_policy_create_script_url_ffi_js(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, input, _arguments) => obj.createScriptURL(input, ..._arguments)"

///|
#cfg(target="js")
fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScriptURL {
  trusted_type_policy_create_script_url_ffi_js(obj, input, arguments).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedTypePolicy" "get_name"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_type_policy_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_create_html_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedHTML = "webapi_TrustedTypePolicy" "createHTML"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_create_script_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScript = "webapi_TrustedTypePolicy" "createScript"

///|
#cfg(target="wasm-gc")
fn trusted_type_policy_create_script_url_ffi(
  obj : JsValue,
  input : JsValue,
  arguments : JsValue,
) -> TrustedScriptURL = "webapi_TrustedTypePolicy" "createScriptURL"
