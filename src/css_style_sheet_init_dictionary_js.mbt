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

///|
extern "js" fn css_style_sheet_init_get_base_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.baseURL"

///|
extern "js" fn css_style_sheet_init_get_media_ffi(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
extern "js" fn css_style_sheet_init_get_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"
