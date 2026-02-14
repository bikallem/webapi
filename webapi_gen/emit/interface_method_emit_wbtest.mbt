///|
test "func_call_args emits variadic trait-ref conversion" {
  let args = [
    @type_mapping.MethodArg::{
      name: "parts",
      original_name: "parts",
      type_: @type_mapping.ArgMbtType::Other("Array[&TRequestInfo]"),
      optional: false,
      variadic: true,
      default_value: None,
    },
  ]
  inspect(
    func_call_args(args),
    content="TJsValue::to_js(parts.map(fn(v : &TRequestInfo) -> JsValue { v.to_js() }))",
  )
}

///|
test "func_call_args emits variadic non-trait conversion" {
  let args = [
    @type_mapping.MethodArg::{
      name: "names",
      original_name: "names",
      type_: @type_mapping.ArgMbtType::Other("Array[String]"),
      optional: false,
      variadic: true,
      default_value: None,
    },
  ]
  inspect(
    func_call_args(args),
    content="TJsValue::to_js(names.map(fn(v) { TJsValue::to_js(v) }))",
  )
}

///|
test "func_call_args falls back for malformed variadic type" {
  let args = [
    @type_mapping.MethodArg::{
      name: "names",
      original_name: "names",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: true,
      default_value: None,
    },
  ]
  inspect(func_call_args(args), content="TJsValue::to_js(names)")
}

///|
test "func_call_args keeps separators stable for optional trait args" {
  let args : Array[@type_mapping.MethodArg] = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "input",
      original_name: "input",
      type_: @type_mapping.ArgMbtType::Other("&TRequestInfo"),
      optional: true,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "mode",
      original_name: "mode",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: false,
      default_value: None,
    },
  ]
  let rendered = func_call_args(args)
  inspect(rendered.contains("TJsValue::to_js(self)"), content="true")
  inspect(rendered.contains("match input {"), content="true")
  inspect(rendered.contains("None => JsValue::undefined()"), content="true")
  inspect(rendered.contains("TJsValue::to_js(mode)"), content="true")
  inspect(rendered.contains(",,"), content="false")
}

///|
test "emit_wasm_ffi_with_return bridges Array return through JsArray" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "element_get_box_quads_ffi",
    "obj : JsValue, options : JsValue",
    ["obj", "options"],
    "Array[DOMQuad]",
    is_optional=false,
    is_void=false,
    is_string=false,
    is_enum=false,
    is_valid_stub=false,
    "webapi_Element",
    "getBoxQuads",
  )
  inspect(
    rendered.contains(
      "fn element_get_box_quads_ffi_wasm(obj : JsValue, options : JsValue) -> JsArray = \"webapi_Element\" \"getBoxQuads\"",
    ),
    content="true",
  )
  inspect(
    rendered.contains("element_get_box_quads_ffi_wasm(obj, options).to_array()"),
    content="true",
  )
  inspect(rendered.contains(".unsafe_cast()"), content="false")
}

///|
test "emit_wasm_ffi_with_return uses string array bridge for Array[String]" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "element_get_attribute_names_ffi",
    "obj : JsValue",
    ["obj"],
    "Array[String]",
    is_optional=false,
    is_void=false,
    is_string=false,
    is_enum=false,
    is_valid_stub=false,
    "webapi_Element",
    "getAttributeNames",
  )
  inspect(
    rendered.contains(
      "fn element_get_attribute_names_ffi_wasm(obj : JsValue) -> JsArray = \"webapi_Element\" \"getAttributeNames\"",
    ),
    content="true",
  )
  inspect(
    rendered.contains(
      "element_get_attribute_names_ffi_wasm(obj).to_string_array()",
    ),
    content="true",
  )
  inspect(rendered.contains(".unsafe_cast()"), content="false")
}
