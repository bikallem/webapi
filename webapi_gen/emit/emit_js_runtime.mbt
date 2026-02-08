// JS Runtime emitter - generates webapi.mjs JavaScript FFI module

///|
let js_reserved : @hashset.HashSet[String] = {
  let s = @hashset.HashSet::new()
  for kw in [
    "break", "case", "catch", "continue", "debugger", "default", "delete", "do",
    "else", "finally", "for", "function", "if", "in", "instanceof", "new",
    "return", "switch", "this", "throw", "try", "typeof", "var", "void",
    "while", "with", "class", "const", "enum", "export", "extends", "import",
    "super", "implements", "interface", "let", "package", "private", "protected",
    "public", "static", "yield", "await",
    // Not reserved words, but cannot be used as identifiers in strict mode (ES modules)
    "arguments", "eval",
  ] {
    s.add(kw)
  }
  s
}

///|
/// Escape JS reserved keywords by prefixing with underscore.
fn js_safe(name : String) -> String {
  if js_reserved.contains(name) {
    "_\{name}"
  } else {
    name
  }
}

///|
/// Emit the static preamble for the JS runtime
fn emit_js_preamble() -> String {
  let preamble =
    #|/**
    #| * Auto-generated JavaScript runtime for MoonBit DOM bindings
    #| * Do not edit manually
    #| */
    #|
    #|export const wasmImportObject = {
    #|  "moonbit:ffi": {
    #|    make_closure: (funcref, closure) => funcref.bind(null, closure)
    #|  },
    #|
    #|  JsValue: {
    #|    undefined: () => undefined,
    #|    null: () => null,
    #|    isNull: (value) => value === null || value === undefined
    #|  },
    #|
    #|  JsNull: {
    #|    null: () => null
    #|  },
    #|
    #|  JsArray: {
    #|    empty: () => [],
    #|    push: (arr, value) => arr.push(value)
    #|  },
    #|
    #|  JsPromise: {
    #|    await: (promise) => promise,
    #|    resolve: (value) => Promise.resolve(value),
    #|    reject: (error) => Promise.reject(error)
    #|  },
    #|
    #|  webapi_Dictionary: {
    #|    empty: () => ({})
    #|  },
    #|
    #|  webapi_Primitives: {
    #|    boolToJs: (v) => v !== 0,
    #|    intToJs: (v) => v,
    #|    uintToJs: (v) => v >>> 0,
    #|    int64ToJs: (v) => Number(v),
    #|    uint64ToJs: (v) => Number(v),
    #|    floatToJs: (v) => v,
    #|    doubleToJs: (v) => v
    #|  },
    #|
    #|  webapi_Global: {
    #|    document: () => document,
    #|    window: () => window,
    #|    navigator: () => navigator
    #|  },
    #|
  preamble
}

///|
/// Emit JS getter for an attribute
fn emit_js_getter(attr_name : String) -> String {
  "    get_\{attr_name}: (obj) => obj.\{attr_name}"
}

///|
/// Emit JS setter for an attribute
fn emit_js_setter(attr_name : String) -> String {
  "    set_\{attr_name}: (obj, value) => { obj.\{attr_name} = value; }"
}

///|
/// Emit JS method - generates appropriate argument list and call
fn emit_js_method(
  method_name : String,
  args : Array[@parser.Argument],
  is_static : Bool,
) -> String {
  // Build argument names list
  let arg_names : Array[String] = []
  for arg in args {
    arg_names.push(js_safe(@type_mapping.safe_identifier(arg.name)))
  }
  let comma_sep = ", "
  if is_static {
    // Static method: no obj parameter
    let params = arg_names.join(comma_sep)
    let call_args = arg_names.join(comma_sep)
    "    \{method_name}: (\{params}) => \{method_name}(\{call_args})"
  } else {
    // Instance method: obj is first parameter
    let args_str = arg_names.join(comma_sep)
    let params = if arg_names.length() > 0 { "obj, \{args_str}" } else { "obj" }
    let call_args = arg_names.join(comma_sep)
    "    \{method_name}: (\{params}) => obj.\{method_name}(\{call_args})"
  }
}

///|
/// Emit JS constructor for an interface
fn emit_js_constructor(
  interface_name : String,
  args : Array[@parser.Argument],
) -> String {
  let arg_names : Array[String] = []
  for arg in args {
    arg_names.push(js_safe(@type_mapping.safe_identifier(arg.name)))
  }
  let comma_sep = ", "
  let params = arg_names.join(comma_sep)
  let call_args = arg_names.join(comma_sep)
  "    new: (\{params}) => new \{interface_name}(\{call_args})"
}

///|
/// Emit a complete JS module for an interface
fn emit_js_interface_module(
  iface : @flattened_idl.FlattenedInterface,
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  webapi_\{iface.name}: {\n")
  let entries : Array[String] = []

  // Constructor if present
  for m in iface.members {
    match m.interface_member {
      Constructor(ctor) => {
        entries.push(emit_js_constructor(iface.name, ctor.arguments))
        break // Only emit first constructor
      }
      _ => continue
    }
  }

  // Attributes
  for m in iface.members {
    match m.interface_member {
      Attribute(attr) => {
        entries.push(emit_js_getter(attr.name))
        if not(attr.is_readonly) {
          entries.push(emit_js_setter(attr.name))
        }
      }
      _ => continue
    }
  }

  // Operations (methods)
  for m in iface.members {
    match m.interface_member {
      RegularOperation(op) =>
        entries.push(emit_js_method(op.name, op.arguments, op.static_))
      _ => continue
    }
  }
  buf.write_string(entries.join(",\n"))
  if entries.length() > 0 {
    buf.write_string("\n")
  }
  buf.write_string("  }")
  buf.to_string()
}

///|
/// Emit a JS module for a dictionary
fn emit_js_dictionary_module(
  dict : @flattened_idl.MergedDictionaryIR,
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  webapi_\{dict.name}: {\n")
  let entries : Array[String] = []

  // Dictionary constructor: new(arg1, arg2, ...) => { const obj = {}; if (arg1 !== undefined) obj.field1 = arg1; ... return obj; }
  let arg_names : Array[String] = []
  for mem in dict.members {
    arg_names.push(js_safe(mem.name))
  }
  let params = arg_names.join(", ")
  let ctor_buf = StringBuilder::new()
  ctor_buf.write_string("    new: (\{params}) => {\n")
  ctor_buf.write_string("      const obj = {};\n")
  for i, mem in dict.members {
    let safe_name = arg_names[i]
    ctor_buf.write_string(
      "      if (\{safe_name} !== undefined) obj.\{mem.name} = \{safe_name};\n",
    )
  }
  ctor_buf.write_string("      return obj;\n")
  ctor_buf.write_string("    }")
  entries.push(ctor_buf.to_string())
  buf.write_string(entries.join(",\n"))
  if entries.length() > 0 {
    buf.write_string("\n")
  }
  buf.write_string("  }")
  buf.to_string()
}

///|
/// Emit a JS module for a callback
fn emit_js_callback_module(
  cb : @parser.CallbackFunctionDefinition,
) -> String {
  "  webapi_\{cb.name}: {\n    new: (f) => f\n  }"
}

///|
/// Emit the complete JS runtime from FlattenedIdl
pub fn emit_js_runtime(flattened : @flattened_idl.FlattenedIdl) -> String {
  let buf = StringBuilder::new()

  // Preamble
  buf.write_string(emit_js_preamble())
  buf.write_string("\n")
  let modules : Array[String] = []

  // Interfaces
  for _name, iface in flattened.interfaces {
    modules.push(emit_js_interface_module(iface))
  }

  // Dictionaries
  for _name, dict in flattened.dictionaries {
    modules.push(emit_js_dictionary_module(dict))
  }

  // Callbacks
  for _name, cb in flattened.callbacks {
    modules.push(emit_js_callback_module(cb))
  }
  buf.write_string(modules.join(",\n\n"))
  buf.write_string("\n};\n")
  buf.to_string()
}

///|
test "emit_js_getter" {
  let result = emit_js_getter("innerHTML")
  inspect(result, content="    get_innerHTML: (obj) => obj.innerHTML")
}

///|
test "emit_js_setter" {
  let result = emit_js_setter("innerHTML")
  inspect(
    result,
    content="    set_innerHTML: (obj, value) => { obj.innerHTML = value; }",
  )
}
