// Do not edit. This file is generated.
// MoonBit type: WriteParams
// Specifications: fs.idl

/// [WriteParams](https://developer.mozilla.org/en-US/docs/Web/API/WriteParams)
#external
pub type WriteParams

pub impl TJsValue for WriteParams with to_js(self: WriteParams) -> JsValue = "%identity"

pub impl FromJsAny for WriteParams with from_js_any(value : JsAny) -> WriteParams = "%identity"

pub(open) trait TWriteParamsNewData : TJsValue {}

pub impl TWriteParamsNewData for BufferSource

pub impl TWriteParamsNewData for Blob

pub impl TWriteParamsNewData for String

pub fn WriteParams::new(type_ : WriteCommandType, 
size? : UInt64, 
position? : UInt64, 
data? : &TWriteParamsNewData) -> WriteParams {
  write_params_ffi(TJsValue::to_js(type_), opt_to_js(size), opt_to_js(position), match data {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn WriteParams::empty() -> WriteParams { write_params_empty_ffi() }

pub(open) trait TWriteParamsGetData : TJsValue {}

pub impl TWriteParamsGetData for BufferSource

pub impl TWriteParamsGetData for Blob

pub impl TWriteParamsGetData for String

#external
pub type WriteParamsGetData

pub impl TJsValue for WriteParamsGetData with to_js(self: WriteParamsGetData) -> JsValue = "%identity"

pub impl FromJsAny for WriteParamsGetData with from_js_any(value : JsAny) -> WriteParamsGetData = "%identity"

pub fn[T : TWriteParamsGetData + FromJsAny] WriteParamsGetData::into(self : WriteParamsGetData) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TWriteParamsGetData] WriteParamsGetData::from(value : T) -> WriteParamsGetData = "%identity"

pub impl TWriteParamsGetData for WriteParamsGetData

pub fn WriteParams::type_(self : WriteParams) -> WriteCommandType {
  write_params_get_type_ffi(TJsValue::to_js(self))
}

pub fn WriteParams::size(self : WriteParams) -> UInt64? {
  write_params_get_size_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn WriteParams::position(self : WriteParams) -> UInt64? {
  write_params_get_position_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn WriteParams::data(self : WriteParams) -> WriteParamsGetData? {
  write_params_get_data_ffi(TJsValue::to_js(self)).to_option()
}