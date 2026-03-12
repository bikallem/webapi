///|
/// Other non-primitive types that are valid as wasm-gc import return types.
/// These are all externref (#external) types or Unit.
let wasm_valid_stub_other_types : Array[String] = [
  "JsValue", "Unit", "JsUndefined", "JsArray",
  // Typed arrays — all #external types
   "Uint8Array", "Uint8ClampedArray", "Int8Array", "Uint16Array", "Int16Array", "Uint32Array",
  "Int32Array", "Float16Array", "Float32Array", "Float64Array", "BigInt64Array",
  "BigUint64Array",
  // Buffer types — #external
   "DataView", "ArrayBuffer", "SharedArrayBuffer",
  // Primitive typedefs — type aliases to wasm value types (f64, i64).
  // Valid as wasm import returns because the wasm-gc engine performs JS→wasm numeric conversion.
   "DOMHighResTimeStamp", "EpochTimeStamp",
]

///|
let wasm_jsany_value_types : Array[String] = [
  "String", "Bool", "Int", "UInt", "Int64", "UInt64", "Float", "Double", "DOMHighResTimeStamp",
  "EpochTimeStamp",
]

///|
fn uses_from_jsany_value_conversion(type_name : String) -> Bool {
  wasm_jsany_value_types.contains(type_name)
}

///|
fn is_wasm_valid_stub_other_type(type_name : String) -> Bool {
  wasm_valid_stub_other_types.contains(type_name)
}

///|
/// Check if an ArgMbtType is valid as a wasm-gc import return type.
/// Primitives, #external interfaces, enums, dictionaries, and Self are valid.
/// Parameterized non-external types (Array[T]) and typedefs that resolve to them are not.
/// Note: String is excluded because on wasm-gc with js-string builtins,
/// String is (ref extern) (non-nullable) while wasm imports return externref (nullable).
fn is_wasm_valid_stub_type(type_ : @type_mapping.ArgMbtType) -> Bool {
  match type_ {
    Primitive(name) => name != "String"
    Interface(_) | Dictionary(_) | Self => true
    Enum(_) => false // Enums are GC types on wasm-gc, not externref; need string conversion
    Other(name) =>
      // JsValue, Unit, JsUndefined are valid externref types.
      // Typed arrays, DataView, ArrayBuffer, SharedArrayBuffer are #external types.
      is_wasm_valid_stub_other_type(name)
    Union(_) => false // Union types resolve to trait names, not valid as stubs
    Callback(_) => false // Callback args don't appear as return types
  }
}

///|
fn is_array_return(type_name : String) -> Bool {
  array_inner_type(type_name) is Some(_)
}

///|
fn is_string_array_return(type_name : String) -> Bool {
  type_name == "Array[String]"
}

///|
fn is_value_array_return(type_name : String) -> Bool {
  match array_inner_type(type_name) {
    Some(inner) => inner != "String" && uses_from_jsany_value_conversion(inner)
    None => false
  }
}

///|
/// Emit wasm-gc FFI declaration with return-type dispatch.
/// Handles the five cases: void/optional, String, Array[T] bridge, valid stub type, or JsValue wrapper.
fn emit_wasm_ffi_with_return(
  ffi_name : String,
  ffi_args : String,
  ffi_argnames : Array[String],
  return_type_name : String,
  is_optional~ : Bool,
  is_void~ : Bool,
  is_string~ : Bool,
  is_enum~ : Bool,
  is_valid_stub~ : Bool,
  module_name : String,
  import_name : String,
) -> Code {
  if is_void || is_optional {
    // Void or optional: use JsValue/Unit directly as wasm import return
    let ffi_ret = if is_void { "Unit" } else { "JsValue" }
    Code(
      "fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret} = \"\{module_name}\" \"\{import_name}\"",
    )
  } else if is_string {
    // String: wasm imports return externref (nullable), but String is (ref extern) (non-nullable).
    // Use jsvalue_to_string wrapper: externref -> String? -> unwrap -> String.
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> String {\n  jsvalue_to_string(\{raw_name}(\{call_fwd}))\n}",
    )
  } else if is_enum {
    // Enum: JS returns a string (externref), but enums are GC types on wasm-gc.
    // Use from_unchecked() instead of from().unwrap() to avoid Option[Enum]
    // which triggers a wasm-gc compiler bug (None uses externref null but
    // Option[Enum] expects i32 representation).
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{return_type_name}::from_unchecked(jsvalue_to_string(\{raw_name}(\{call_fwd})))\n}",
    )
  } else if is_array_return(return_type_name) {
    // Array[T]: use JsArray as raw import type and copy into MoonBit Array[T].
    // This avoids wasm-gc externref -> typed ref fallthrough mismatches.
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    let array_convert = if is_string_array_return(return_type_name) {
      "to_string_array"
    } else if is_value_array_return(return_type_name) {
      "to_value_array"
    } else {
      "to_array"
    }
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsArray = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).\{array_convert}()\n}",
    )
  } else if is_valid_stub {
    // Valid stub type: declare import with actual MoonBit type directly
    Code(
      "fn \{ffi_name}(\{ffi_args}) -> \{return_type_name} = \"\{module_name}\" \"\{import_name}\"",
    )
  } else {
    // Invalid stub type (Array[T], typedefs, etc.): import as JsValue + unsafe_cast wrapper
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
    )
  }
}
