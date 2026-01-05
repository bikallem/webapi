// Do not edit. This file is generated.
// MoonBit type: RequestInfo
// Specifications: fetch.idl

///|
#external
pub type RequestInfo

///|
pub impl TJsValue for RequestInfo with to_js(self : RequestInfo) -> JsValue = "%identity"

///|
pub(open) trait TRequestInfo {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TRequestInfo] RequestInfo::into(self : RequestInfo) -> T = "%identity"

///|
pub impl TRequestInfo for Request with to_js(self : Request) -> JsValue = "%identity"

///|
pub impl TRequestInfo for String with to_js(self : String) -> JsValue = "%identity"
