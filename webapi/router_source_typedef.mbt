// Do not edit. This file is generated.
// MoonBit type: RouterSource
// Specifications: service-workers.idl

///|
/// [RouterSource](https://developer.mozilla.org/en-US/docs/Web/API/RouterSource)
#external
pub type RouterSource

///|
pub impl TJsValue for RouterSource with to_js(self : RouterSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for RouterSource with from_js_any(value : JsAny) -> RouterSource = "%identity"

///|
pub(open) trait TRouterSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TRouterSource + FromJsAny] RouterSource::into(
  self : RouterSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TRouterSource] RouterSource::from(value : T) -> RouterSource = "%identity"

///|
pub impl TRouterSource for RouterSource with to_js(self : RouterSource) -> JsValue = "%identity"

///|
pub impl TRouterSource for RouterSourceDict with to_js(self : RouterSourceDict) -> JsValue = "%identity"

///|
pub impl TRouterSource for RouterSourceEnum with to_js(self : RouterSourceEnum) -> JsValue = "%identity"
