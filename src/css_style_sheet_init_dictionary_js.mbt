///|
extern "js" fn css_style_sheet_init_ffi(
  base_url : JsValue,
  media : JsValue,
  disabled : JsValue,
) -> CSSStyleSheetInit =
  #|(baseURL, media, disabled) => {
  #|  const obj = {};
  #|  if (baseURL !== undefined) obj.baseURL = baseURL;
  #|  if (media !== undefined) obj.media = media;
  #|  if (disabled !== undefined) obj.disabled = disabled;
  #|  return obj;
  #|}

///|
extern "js" fn css_style_sheet_init_empty_ffi() -> CSSStyleSheetInit = "() => {}"
