// Do not edit. This file is generated.
// MoonBit type: TextEncoderEncodeIntoResult
// Specifications: encoding.idl

/// [TextEncoderEncodeIntoResult](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderEncodeIntoResult)
#external
pub type TextEncoderEncodeIntoResult

pub impl TJsValue for TextEncoderEncodeIntoResult with to_js(self: TextEncoderEncodeIntoResult) -> JsValue = "%identity"

pub impl FromJsAny for TextEncoderEncodeIntoResult with from_js_any(value : JsAny) -> TextEncoderEncodeIntoResult = "%identity"

pub fn TextEncoderEncodeIntoResult::new(read? : UInt64, 
written? : UInt64) -> TextEncoderEncodeIntoResult {
  text_encoder_encode_into_result_ffi(opt_to_js(read), opt_to_js(written))
}

pub fn TextEncoderEncodeIntoResult::empty() -> TextEncoderEncodeIntoResult { text_encoder_encode_into_result_empty_ffi() }

pub fn TextEncoderEncodeIntoResult::read(self : TextEncoderEncodeIntoResult) -> UInt64? {
  text_encoder_encode_into_result_get_read_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TextEncoderEncodeIntoResult::written(self : TextEncoderEncodeIntoResult) -> UInt64? {
  text_encoder_encode_into_result_get_written_ffi(TJsValue::to_js(self)).to_option_prim()
}