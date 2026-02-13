// JS Runtime emitter - generates webapi.mjs JavaScript FFI module

///|
let js_reserved : @hashset.HashSet[String] = {
  let s = @hashset.HashSet::new()
  for
    kw in [
      "break", "case", "catch", "continue", "debugger", "default", "delete", "do",
      "else", "finally", "for", "function", "if", "in", "instanceof", "new", "return",
      "switch", "this", "throw", "try", "typeof", "var", "void", "while", "with",
      "class", "const", "enum", "export", "extends", "import", "super", "implements",
      "interface", "let", "package", "private", "protected", "public", "static",
      "yield", "await",
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
    #|    isNull: (value) => value === null || value === undefined,
    #|    isUndefined: (value) => value === undefined
    #|  },
    #|
    #|  JsNull: {
    #|    null: () => null
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
    #|    doubleToJs: (v) => v,
    #|    arrayToJs: (arr) => arr,
    #|    arrayEmpty: () => [],
    #|    arrayPush: (arr, value) => arr.push(value),
    #|    arrayLength: (arr) => arr.length,
    #|    arrayGet: (arr, index) => arr[index]
    #|  },
    #|
    #|  webapi_Global: {
    #|    document: () => document,
    #|    window: () => window,
    #|    navigator: () => navigator
    #|  },
    #|
    #|  webapi_JsPromise: {
    #|    resolve: (value) => Promise.resolve(value),
    #|    reject: (reason) => Promise.reject(reason),
    #|    then: (p, f) => p.then(f),
    #|    catch: (p, f) => p.catch(f),
    #|    finally: (p, f) => p.finally(f)
    #|  },
  preamble
}

///|
/// Check if a name needs quoting in JS (contains characters invalid in identifiers).
/// In WebIDL, only CSS property names contain hyphens (e.g. "background-color").
/// Other special characters (dots, spaces, leading digits) don't appear in WebIDL names.
fn needs_js_quoting(name : String) -> Bool {
  name.contains("-")
}

///|
/// Emit JS getter for an attribute
fn emit_js_getter(attr_name : String) -> String {
  if needs_js_quoting(attr_name) {
    let q = "\""
    "    \{q}get_\{attr_name}\{q}: (obj) => obj[\{q}\{attr_name}\{q}]"
  } else {
    "    get_\{attr_name}: (obj) => obj.\{attr_name}"
  }
}

///|
/// Emit JS setter for an attribute
fn emit_js_setter(attr_name : String) -> String {
  if needs_js_quoting(attr_name) {
    let q = "\""
    "    \{q}set_\{attr_name}\{q}: (obj, value) => { obj[\{q}\{attr_name}\{q}] = value; }"
  } else {
    "    set_\{attr_name}: (obj, value) => { obj.\{attr_name} = value; }"
  }
}

///|
/// Emit JS method - generates appropriate argument list and call.
/// `import_name` is the wasm import key (disambiguated, e.g. "fill_2"),
/// `original_name` is the actual JS method name (e.g. "fill").
fn emit_js_method(
  import_name : String,
  original_name : String,
  args : Array[@parser.Argument],
  is_static : Bool,
) -> String {
  // Build argument names list (params without spread, call_args with spread for variadic)
  let arg_names : Array[String] = []
  let call_parts : Array[String] = []
  for arg in args {
    let name = js_safe(@type_mapping.safe_identifier(arg.name))
    arg_names.push(name)
    if arg.variadic {
      call_parts.push("...\{name}")
    } else {
      call_parts.push(name)
    }
  }
  let comma_sep = ", "
  if is_static {
    // Static method: no obj parameter
    let params = arg_names.join(comma_sep)
    let call_args = call_parts.join(comma_sep)
    "    \{import_name}: (\{params}) => \{original_name}(\{call_args})"
  } else {
    // Instance method: obj is first parameter
    let args_str = arg_names.join(comma_sep)
    let params = if arg_names.length() > 0 { "obj, \{args_str}" } else { "obj" }
    let call_args = call_parts.join(comma_sep)
    "    \{import_name}: (\{params}) => obj.\{original_name}(\{call_args})"
  }
}

///|
/// Emit JS constructor for an interface.
/// `import_name` is the wasm import key (e.g. "new" or "new_2").
fn emit_js_constructor(
  import_name : String,
  interface_name : String,
  args : Array[@parser.Argument],
) -> String {
  let arg_names : Array[String] = []
  let call_parts : Array[String] = []
  for arg in args {
    let name = js_safe(@type_mapping.safe_identifier(arg.name))
    arg_names.push(name)
    if arg.variadic {
      call_parts.push("...\{name}")
    } else {
      call_parts.push(name)
    }
  }
  let comma_sep = ", "
  let params = arg_names.join(comma_sep)
  let call_args = call_parts.join(comma_sep)
  "    \{import_name}: (\{params}) => new \{interface_name}(\{call_args})"
}

///|
/// Emit JS bracket-notation entry for an unnamed special operation.
fn emit_js_special_operation(
  import_name : String,
  op : @parser.SpecialOperationMember,
) -> String {
  let arg_names : Array[String] = []
  for arg in op.arguments {
    arg_names.push(js_safe(@type_mapping.safe_identifier(arg.name)))
  }
  match op.special {
    Getter => {
      let key = arg_names[0]
      "    \{import_name}: (obj, \{key}) => obj[\{key}]"
    }
    Setter => {
      let key = arg_names[0]
      let value = arg_names[1]
      "    \{import_name}: (obj, \{key}, \{value}) => { obj[\{key}] = \{value}; }"
    }
    Deleter => {
      let key = arg_names[0]
      "    \{import_name}: (obj, \{key}) => { delete obj[\{key}]; }"
    }
  }
}

///|
/// Emit a complete JS module for an interface
fn emit_js_interface_module(
  iface : @flattened_idl.FlattenedInterface,
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  webapi_\{iface.name}: {\n")
  let entries : Array[String] = []

  // Constructor(s)
  let constructor_counter : Map[String, Int] = {}
  let used_constructor_names = @hashset.new()
  for m in iface.members {
    match m.interface_member {
      Constructor(ctor) => {
        let import_name = next_overload_name(
          "new",
          ctor.arguments,
          constructor_counter,
          used_constructor_names,
        )
        entries.push(
          emit_js_constructor(import_name, iface.name, ctor.arguments),
        )
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

  // Operations (methods + special operations) - disambiguate overloaded names
  let method_counter : Map[String, Int] = {}
  let used_method_names = @hashset.new()
  for m in iface.members {
    match m.interface_member {
      RegularOperation(op) => {
        let import_name = next_overload_name(
          op.name,
          op.arguments,
          method_counter,
          used_method_names,
        )
        entries.push(
          emit_js_method(import_name, op.name, op.arguments, op.static_),
        )
      }
      SpecialOperation(op) if op.name is Some(_) => {
        // Named special operation → emit as regular method call
        let name = op.name.unwrap()
        let import_name = next_overload_name(
          name,
          op.arguments,
          method_counter,
          used_method_names,
        )
        entries.push(emit_js_method(import_name, name, op.arguments, false))
      }
      SpecialOperation(op) => {
        // Unnamed special operation → bracket notation
        let base_name = match op.special {
          Getter => "get"
          Setter => "set"
          Deleter => "delete_"
        }
        let import_name = next_overload_name(
          base_name,
          op.arguments,
          method_counter,
          used_method_names,
        )
        entries.push(emit_js_special_operation(import_name, op))
      }
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
fn emit_js_callback_module(cb : @parser.CallbackFunctionDefinition) -> String {
  "  webapi_\{cb.name}: {\n    new: (f) => f\n  }"
}

///|
/// Emit JS method for a namespace (static call with namespace prefix).
fn emit_js_namespace_method(
  import_name : String,
  namespace_name : String,
  method_name : String,
  args : Array[@parser.Argument],
) -> String {
  let arg_names : Array[String] = []
  let call_parts : Array[String] = []
  for arg in args {
    let name = js_safe(@type_mapping.safe_identifier(arg.name))
    arg_names.push(name)
    if arg.variadic {
      call_parts.push("...\{name}")
    } else {
      call_parts.push(name)
    }
  }
  let comma_sep = ", "
  let params = arg_names.join(comma_sep)
  let call_args = call_parts.join(comma_sep)
  "    \{import_name}: (\{params}) => \{namespace_name}.\{method_name}(\{call_args})"
}

///|
/// Emit JS getter for a namespace attribute.
fn emit_js_namespace_getter(
  namespace_name : String,
  attr_name : String,
) -> String {
  "    get_\{attr_name}: () => \{namespace_name}.\{attr_name}"
}

///|
/// Emit a complete JS module for a namespace
fn emit_js_namespace_module(
  ns : @partial_merged.PartialMergedNamespace,
) -> String {
  let buf = StringBuilder::new()
  let module_name = @type_mapping.pascal_case(ns.name)
  buf.write_string("  webapi_\{module_name}: {\n")
  let entries : Array[String] = []
  let method_counter : Map[String, Int] = {}
  let used_method_names = @hashset.new()
  for m in ns.members {
    match m.namespace_member {
      Operation(op) => {
        let import_name = next_overload_name(
          op.name,
          op.arguments,
          method_counter,
          used_method_names,
        )
        entries.push(
          emit_js_namespace_method(import_name, ns.name, op.name, op.arguments),
        )
      }
      Attribute(attr) =>
        entries.push(emit_js_namespace_getter(ns.name, attr.name))
      Const(_) => continue // Constants don't need JS runtime entries
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

  // Namespaces
  for _name, ns in flattened.namespaces {
    modules.push(emit_js_namespace_module(ns))
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
