///|
extern "js" fn get_composed_ranges_options_ffi(
  shadow_roots : JsValue,
) -> GetComposedRangesOptions =
  #|(shadowRoots) => {
  #|  const obj = {};
  #|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
  #|  return obj;
  #|}

///|
extern "js" fn get_composed_ranges_options_empty_ffi() -> GetComposedRangesOptions = "() => {}"
