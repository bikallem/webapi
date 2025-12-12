///|
pub fn emit_dictionary(dict : @flattened_idl.MergedDictionaryIR) -> String {
  let buf = StringBuilder::new()
  let type_name = dict.name

  // Header
  buf.write_string(
    "// Auto-generated MoonBit bindings for \{type_name} dictionary\n",
  )
  buf.write_string("// Do not edit manually\n\n")

  // Emit external type declaration
  buf.write_string(emit_external_type(type_name))
  buf.write_string("\n\n")

  // Emit TJSValue implementation
  buf.write_string(emit_tjs_value_impl(type_name))
  buf.write_string("\n\n")

  // Emit FFI and builder only if there are members
  buf.write_string(emit_dictionary_ffi(dict))
  buf.write_string("\n\n")
  buf.write_string(emit_dictionary_new_method(dict))
  buf.write_string("\n\n")

  // Emit empty dictionary constructor
  buf.write_string(emit_empty_dictionary(dict))
  buf.write_string("\n")
  buf.to_string()
}

///|
fn emit_external_type(type_name : String) -> String {
  "#external\npub type \{type_name}"
}

///|
fn emit_tjs_value_impl(type_name : String) -> String {
  "pub impl TJsValue for \{type_name} with to_js(self: \{type_name}) -> JsValue = \"%identity\"\n"
}

///|
/// Emit the FFI constructor function.
fn emit_dictionary_ffi(dict : @flattened_idl.MergedDictionaryIR) -> String {
  let module_name = ffi_module_name(dict.name)
  let ffi_name = "\{to_snake_case(dict.name)}_ffi"
  guard dict.members.length() > 0 else {
    "fn \{ffi_name}() -> \{dict.name} = \"\{module_name}\" \"new\""
  }

  // All dictionary fields go as JsValue params
  let params = StringBuilder::new()
  for i, mem in dict.members {
    if i > 0 {
      params.write_string(", ")
    }
    let param_name = safe_identifier(mem.name)
    params.write_string("\{param_name} : JsValue")
  }
  "fn \{ffi_name}(\{params.to_string()}) -> \{dict.name} = \"\{module_name}\" \"new\"\n"
}

///|
/// Emit the new() method with optional parameters
fn emit_dictionary_new_method(
  dict : @flattened_idl.MergedDictionaryIR,
) -> String {
  let ffi_name = "\{to_snake_case(dict.name)}_ffi"

  // Build parameter list with optional params and defaults
  let params = StringBuilder::new()
  // let bindings = StringBuilder::new()
  let args = StringBuilder::new()
  for i, mem in dict.members {
    let param_name = safe_identifier(mem.name)
    let mapped_type = to_mbt_type_string(mem.type_)
    if i > 0 {
      params.write_string(",\n  ")
      args.write_string("     ,")
    }
    params.write_string("\{param_name}")
    if mem.required {
      params.write_string(" : \{mapped_type}")
    } else {
      params.write_string("? : \{mapped_type}")
      if mem.default_value is Some(default_value) {
        params.write_string(
          "? : \{mapped_type} = \{to_mbt_default_value(default_value, mapped_type)}",
        )
      }
    }
    args.write_string("TJsValue::to_js(\{param_name})\n")
  }
  let buf = StringBuilder::new()
  buf.write_string("pub fn \{dict.name}::new(\n")
  buf.write_string("  \{params.to_string()}) -> \{dict.name} {\n")
  buf.write_string("    \{ffi_name}(\n")
  buf.write_string("      \{args.to_string()}")
  buf.write_string("    )\n")
  buf.write_string("}\n")
  buf.to_string()
}

///|
fn emit_empty_dictionary(dict : @flattened_idl.MergedDictionaryIR) -> String {
  "pub fn \{dict.name}::empty() -> \{dict.name} = \"webapi_Dictionary\" \"empty\"\n"
}

///|
pub fn emit_all_dictionaries(idl : FlattenedIdl) -> Map[String, String] {
  let result = {}
  for name, dict in idl.dictionaries {
    let filename = "\{to_snake_case(name)}_dictionary.mbt"
    result[filename] = emit_dictionary(dict)
  }
  result
}

///|
test "emit_dictionary() generates code for simple dictionary" {
  let idl =
    #|dictionary EventInit {
    #|  boolean bubbles = false;
    #|  boolean cancelable = false;
    #|  required boolean composed;
    #|  float code = NaN;
    #|  DictA opt;
    #|  int code = 42;
    #|};
  let flattened = @parser.parse(idl)
    |> @partial_merged.merge_partials
    |> @flattened_idl.flatten
  let code = emit_dictionary(flattened.dictionaries["EventInit"])
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for EventInit dictionary
      #|// Do not edit manually
      #|
      #|#external
      #|pub type EventInit
      #|
      #|pub impl TJsValue for EventInit with to_js(self: EventInit) -> JsValue = "%identity"
      #|
      #|
      #|fn event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, code : JsValue, opt : JsValue, code : JsValue) -> EventInit = "webapi_EventInit" "new"
      #|
      #|
      #|pub fn EventInit::new(
      #|  bubbles? : Bool? : Bool = false,
      #|  cancelable? : Bool? : Bool = false,
      #|  composed : Bool,
      #|  code? : Float? : Float = @float.not_a_number,
      #|  opt? : DictA,
      #|  code? : int? : int = 42) -> EventInit {
      #|    event_init_ffi(
      #|      TJsValue::to_js(bubbles)
      #|     ,TJsValue::to_js(cancelable)
      #|     ,TJsValue::to_js(composed)
      #|     ,TJsValue::to_js(code)
      #|     ,TJsValue::to_js(opt)
      #|     ,TJsValue::to_js(code)
      #|    )
      #|}
      #|
      #|
      #|pub fn EventInit::empty() -> EventInit = "webapi_Dictionary" "empty"
      #|
      #|
    ),
  )
}
