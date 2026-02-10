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
extern "js" fn get_html_options_empty_ffi() -> GetHTMLOptions = "() => {}"
