///|
extern "js" fn text_decoder_options_ffi(
  fatal : JsValue,
  ignore_bom : JsValue,
) -> TextDecoderOptions =
  #|(fatal, ignoreBOM) => {
  #|  const obj = {};
  #|  if (fatal !== undefined) obj.fatal = fatal;
  #|  if (ignoreBOM !== undefined) obj.ignoreBOM = ignoreBOM;
  #|  return obj;
  #|}

///|
extern "js" fn text_decoder_options_empty_ffi() -> TextDecoderOptions = "() => {}"
