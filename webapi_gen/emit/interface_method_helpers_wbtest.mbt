///|
test "make_ffi_name generates snake_case ffi name" {
  inspect(
    make_ffi_name("Element", "getAttribute"),
    content="element_get_attribute_ffi",
  )
}

///|
test "make_ffi_name handles already snake_case names" {
  inspect(
    make_ffi_name("event_target", "add_event_listener"),
    content="event_target_add_event_listener_ffi",
  )
}

///|
test "make_ffi_argnames replaces Self with obj" {
  let args = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "name",
      original_name: "name",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: false,
      default_value: None,
    },
  ]
  inspect(make_ffi_argnames(args), content=(
    #|["obj", "name"]
  ))
}

///|
test "make_ffi_argnames with no Self args" {
  let args = [
    @type_mapping.MethodArg::{
      name: "url",
      original_name: "url",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: false,
      default_value: None,
    },
  ]
  inspect(make_ffi_argnames(args), content=(
    #|["url"]
  ))
}

///|
test "is_trait_ref_type detects trait reference types" {
  inspect(
    is_trait_ref_type(@type_mapping.ArgMbtType::Other("&TEventTarget")),
    content="true",
  )
  inspect(
    is_trait_ref_type(@type_mapping.ArgMbtType::Other("Element")),
    content="false",
  )
  inspect(
    is_trait_ref_type(@type_mapping.ArgMbtType::Primitive("String")),
    content="false",
  )
}

///|
test "variadic_inner_type extracts inner type from Array" {
  inspect(
    variadic_inner_type(@type_mapping.ArgMbtType::Other("Array[String]")),
    content=(
      #|Some("String")
    ),
  )
  inspect(
    variadic_inner_type(@type_mapping.ArgMbtType::Other("Array[&TRequestInfo]")),
    content=(
      #|Some("&TRequestInfo")
    ),
  )
}

///|
test "variadic_inner_type returns None for non-Array" {
  inspect(
    variadic_inner_type(@type_mapping.ArgMbtType::Primitive("String")),
    content="None",
  )
  inspect(
    variadic_inner_type(@type_mapping.ArgMbtType::Other("JsArray")),
    content="None",
  )
}

///|
test "trait_method_decl_args formats args for trait declaration" {
  let args = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "name",
      original_name: "name",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: false,
      default_value: None,
    },
  ]
  inspect(trait_method_decl_args(args), content="self : Self, name : String")
}

///|
test "trait_method_decl_args formats optional args" {
  let args = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "options",
      original_name: "options",
      type_: @type_mapping.ArgMbtType::Dictionary("EventInit"),
      optional: true,
      variadic: false,
      default_value: None,
    },
  ]
  inspect(
    trait_method_decl_args(args),
    content="self : Self, options? : EventInit",
  )
}

///|
test "trait_method_impl_args formats args with default values" {
  let args = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    },
    @type_mapping.MethodArg::{
      name: "deep",
      original_name: "deep",
      type_: @type_mapping.ArgMbtType::Primitive("Bool"),
      optional: true,
      variadic: false,
      default_value: Some("false"),
    },
  ]
  inspect(
    trait_method_impl_args(args),
    content="self : Self, \ndeep? : Bool = false",
  )
}

///|
test "emit_method_body optional return" {
  let code = StringBuilder::new()
  code.write_string("pub fn test() -> Element? {\n")
  emit_method_body(code, "test_ffi", "obj", true)
  inspect(code.to_string(), content=(
    #|pub fn test() -> Element? {
    #|  let result = test_ffi(obj)
    #|  if JsValue::is_null(result) {
    #|    None
    #|  } else {
    #|    Some(result.unsafe_cast())
    #|  }
    #|}
  ))
}

///|
test "emit_method_body void return" {
  let code = StringBuilder::new()
  code.write_string("pub fn test() -> Unit {\n")
  emit_method_body(code, "test_ffi", "obj", false, void_return=true)
  inspect(code.to_string(), content=(
    #|pub fn test() -> Unit {
    #|  test_ffi(obj)
    #|}
  ))
}

///|
test "emit_method_body direct return" {
  let code = StringBuilder::new()
  code.write_string("pub fn test() -> Element {\n")
  emit_method_body(code, "test_ffi", "obj", false)
  inspect(code.to_string(), content=(
    #|pub fn test() -> Element {
    #|  test_ffi(obj)
    #|}
  ))
}
