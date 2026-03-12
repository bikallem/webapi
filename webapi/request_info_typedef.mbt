// Do not edit. This file is generated.
// MoonBit type: RequestInfo
// Specifications: fetch.idl

/// [RequestInfo](https://developer.mozilla.org/en-US/docs/Web/API/RequestInfo)
#external
pub type RequestInfo

pub impl TJsValue for RequestInfo with to_js(self: RequestInfo) -> JsValue = "%identity"

pub impl FromJsAny for RequestInfo with from_js_any(value : JsAny) -> RequestInfo = "%identity"

pub(open) trait TRequestInfo : TJsValue {}

pub fn[T : TRequestInfo + FromJsAny] RequestInfo::into(self : RequestInfo) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TRequestInfo] RequestInfo::from(value : T) -> RequestInfo = "%identity"

pub impl TRequestInfo for RequestInfo

pub impl TRequestInfo for Request

pub impl TRequestInfo for String