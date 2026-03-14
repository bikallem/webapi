// Do not edit. This file is generated.
// MoonBit type: WriteParams
// Specifications: fs.idl

///|
/// [WriteParams](https://developer.mozilla.org/en-US/docs/Web/API/WriteParams)
#external
pub type WriteParams

///|
pub impl TJsValue for WriteParams with to_js(self : WriteParams) -> JsValue = "%identity"

///|
pub impl FromJsAny for WriteParams with from_js_any(value : JsAny) -> WriteParams = "%identity"

///|
pub(open) trait TWriteParamsNewData: TJsValue {}

///|
pub impl TWriteParamsNewData for BufferSource

///|
pub impl TWriteParamsNewData for Blob

///|
pub impl TWriteParamsNewData for String

///|
pub fn WriteParams::new(
  type_ : WriteCommandType,
  size? : UInt64,
  position? : UInt64,
  data? : &TWriteParamsNewData,
) -> WriteParams {
  write_params_ffi(
    TJsValue::to_js(type_),
    opt_to_js(size),
    opt_to_js(position),
    match data {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn WriteParams::empty() -> WriteParams {
  write_params_empty_ffi()
}

///|
pub(open) trait TWriteParamsGetData: TJsValue {}

///|
pub impl TWriteParamsGetData for BufferSource

///|
pub impl TWriteParamsGetData for Blob

///|
pub impl TWriteParamsGetData for String

///|
#external
pub type WriteParamsGetData

///|
pub impl TJsValue for WriteParamsGetData with to_js(self : WriteParamsGetData) -> JsValue = "%identity"

///|
pub impl FromJsAny for WriteParamsGetData with from_js_any(value : JsAny) -> WriteParamsGetData = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWriteParamsGetData + FromJsAny] WriteParamsGetData::into(
  self : WriteParamsGetData,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TWriteParamsGetData + FromJsAny] WriteParamsGetData::unsafe_into(
  self : WriteParamsGetData,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TWriteParamsGetData] WriteParamsGetData::from(
  value : T,
) -> WriteParamsGetData = "%identity"

///|
pub impl TWriteParamsGetData for WriteParamsGetData

///|
pub fn WriteParams::type_(self : WriteParams) -> WriteCommandType {
  write_params_get_type_ffi(TJsValue::to_js(self))
}

///|
pub fn WriteParams::size(self : WriteParams) -> UInt64? {
  write_params_get_size_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn WriteParams::position(self : WriteParams) -> UInt64? {
  write_params_get_position_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn WriteParams::data(self : WriteParams) -> WriteParamsGetData? {
  write_params_get_data_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn write_params_ffi(
  type_ : JsValue,
  size : JsValue,
  position : JsValue,
  data : JsValue,
) -> WriteParams =
  #|(type, size, position, data) => {
  #|  const obj = {};
  #|  if (type !== undefined) obj.type = type;
  #|  if (size !== undefined) obj.size = size;
  #|  if (position !== undefined) obj.position = position;
  #|  if (data !== undefined) obj.data = data;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn write_params_empty_ffi() -> WriteParams = "() => {}"

///|
#cfg(target="js")
extern "js" fn write_params_get_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn write_params_get_type_ffi(obj : JsValue) -> WriteCommandType {
  WriteCommandType::from_unchecked(
    write_params_get_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn write_params_get_size_ffi(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
extern "js" fn write_params_get_position_ffi(obj : JsValue) -> JsValue = "(obj) => obj.position"

///|
#cfg(target="js")
extern "js" fn write_params_get_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="wasm-gc")
fn write_params_ffi(
  type_ : JsValue,
  size : JsValue,
  position : JsValue,
  data : JsValue,
) -> WriteParams = "webapi_WriteParams" "new"

///|
#cfg(target="wasm-gc")
fn write_params_empty_ffi() -> WriteParams = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn write_params_get_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WriteParams" "get_type"

///|
#cfg(target="wasm-gc")
fn write_params_get_type_ffi(obj : JsValue) -> WriteCommandType {
  WriteCommandType::from_unchecked(
    jsvalue_to_string(write_params_get_type_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn write_params_get_size_ffi(obj : JsValue) -> JsValue = "webapi_WriteParams" "get_size"

///|
#cfg(target="wasm-gc")
fn write_params_get_position_ffi(obj : JsValue) -> JsValue = "webapi_WriteParams" "get_position"

///|
#cfg(target="wasm-gc")
fn write_params_get_data_ffi(obj : JsValue) -> JsValue = "webapi_WriteParams" "get_data"
