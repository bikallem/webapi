///|
#external
pub type GetHTMLOptions

///|
pub impl TJsValue for GetHTMLOptions with to_js(self : GetHTMLOptions) -> JsValue = "%identity"

///|
extern "js" fn get_html_options_ffi(
  serializable_shadow_roots : JsValue,
  shadow_roots : JsValue,
) -> GetHTMLOptions =
  #|(serializableShadowRoots, shadowRoots) => {
  #|  const obj = {};
  #|  if (serializableShadowRoots !== undefined) obj.serializableShadowRoots = serializableShadowRoots;
  #|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
  #|  return obj;
  #|}

///|
pub fn GetHTMLOptions::new(
  serializable_shadow_roots? : Bool = false,
  shadow_roots? : Array[ShadowRoot] = [],
) -> GetHTMLOptions {
  get_html_options_ffi(
    TJsValue::to_js(serializable_shadow_roots),
    TJsValue::to_js(shadow_roots),
  )
}

///|
extern "js" fn get_html_options_empty_ffi() -> GetHTMLOptions = "() => {}"

///|
pub fn GetHTMLOptions::empty() -> GetHTMLOptions {
  get_html_options_empty_ffi()
}
