// JS Runtime emitter - generates webapi.mjs JavaScript FFI module

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
    #|  webapi_Globals: {
    #|    document: () => document,
    #|    window: () => window,
    #|    console: () => console,
    #|    navigator: () => navigator
    #|  },
    #|
  preamble
}

///|
/// Emit JS module for a callback - callbacks just pass the function through
fn emit_js_callback(name : String) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  webapi_\{name}: {\n")
  buf.write_string("    new: (f) => f\n")
  buf.write_string("  }")
  buf.to_string()
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
    arg_names.push(safe_identifier(arg.name))
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
    let params = if arg_names.length() > 0 {
      "obj, \{args_str}"
    } else {
      "obj"
    }
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
    arg_names.push(safe_identifier(arg.name))
  }
  let comma_sep = ", "
  let params = arg_names.join(comma_sep)
  let call_args = arg_names.join(comma_sep)
  "    new: (\{params}) => new \{interface_name}(\{call_args})"
}

///|
/// Emit a complete JS module for an interface
fn emit_js_interface_module(iface : @partial_merged.PartialMergedInterface) -> String {
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
      RegularOperation(op) => entries.push(emit_js_method(op.name, op.arguments, op.static_))
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
/// Emit the complete JS runtime from FlattenedIdl
pub fn emit_js_runtime(flattened : FlattenedIdl) -> String {
  let buf = StringBuilder::new()

  // Preamble
  buf.write_string(emit_js_preamble())
  buf.write_string("\n")

  let modules : Array[String] = []

  // Callbacks
  for name, _cb in flattened.callbacks {
    modules.push(emit_js_callback(name))
  }

  // Interfaces
  for _name, iface in flattened.interfaces {
    modules.push(emit_js_interface_module(iface))
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

///|
test "emit_js_callback" {
  let result = emit_js_callback("EventListener")
  let expected =
    #|  webapi_EventListener: {
    #|    new: (f) => f
    #|  }
  inspect(result, content=expected)
}
