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
    #|    isUndefined: (value) => value === undefined,
    #|    toString: (v) => '' + v
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
    #|    finally: (p, f) => p.finally(f),
    #|    toBool: (v) => v ? 1 : 0,
    #|    toInt: (v) => v | 0,
    #|    toUint: (v) => v >>> 0,
    #|    toInt64: (v) => BigInt(v),
    #|    toUint64: (v) => BigInt(v),
    #|    toFloat: (v) => Math.fround(v),
    #|    toDouble: (v) => +v
    #|  },
    #|
    #|  webapi_JsObject: {
    #|    create: () => ({}),
    #|    set: (obj, key, value) => { obj[key] = value; return obj; }
    #|  },
    #|
    #|  webapi_WebComponent: {
    #|    wrapCb: (f) => f,
    #|    define: (tag_name, ctor, onConn, onDisconn, onAdopt, onAttr, obsAttrs) => {
    #|      class C extends HTMLElement {
    #|        constructor() { super(); ctor(this); }
    #|      }
    #|      if (onConn !== undefined) C.prototype.connectedCallback = function() { onConn(this); };
    #|      if (onDisconn !== undefined) C.prototype.disconnectedCallback = function() { onDisconn(this); };
    #|      if (onAdopt !== undefined) C.prototype.adoptedCallback = function() { onAdopt(this); };
    #|      if (onAttr !== undefined) {
    #|        C.prototype.attributeChangedCallback = function(n, o, v) { onAttr(this, n, o, v); };
    #|        if (obsAttrs.length > 0) Object.defineProperty(C, 'observedAttributes', { get: () => obsAttrs });
    #|      }
    #|      customElements.define(tag_name, C);
    #|    }
    #|  },
  preamble
}

///|
/// Check if a WebIDL type maps to BigInt (i64) on wasm-gc.
/// When true, JS runtime getters/methods must wrap return values with BigInt().
fn is_bigint_type(type_ : @parser.Type) -> Bool {
  match type_ {
    LongLong | UnsignedLongLong | Bigint => true
    Nullable(inner) => is_bigint_type(inner)
    _ => false
  }
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
fn emit_js_getter(
  attr_name : String,
  is_static? : Bool = false,
  is_bigint? : Bool = false,
  interface_name? : String = "",
) -> String {
  if is_static {
    let expr = "\{interface_name}.\{attr_name}"
    let expr = if is_bigint { "BigInt(\{expr})" } else { expr }
    "    get_\{attr_name}: () => \{expr}"
  } else if needs_js_quoting(attr_name) {
    let q = "\""
    let expr = "obj[\{q}\{attr_name}\{q}]"
    let expr = if is_bigint { "BigInt(\{expr})" } else { expr }
    "    \{q}get_\{attr_name}\{q}: (obj) => \{expr}"
  } else {
    let expr = "obj.\{attr_name}"
    let expr = if is_bigint { "BigInt(\{expr})" } else { expr }
    "    get_\{attr_name}: (obj) => \{expr}"
  }
}

///|
/// Emit JS setter for an attribute
fn emit_js_setter(
  attr_name : String,
  is_static? : Bool = false,
  interface_name? : String = "",
) -> String {
  if is_static {
    "    set_\{attr_name}: (value) => { \{interface_name}.\{attr_name} = value; }"
  } else if needs_js_quoting(attr_name) {
    let q = "\""
    "    \{q}set_\{attr_name}\{q}: (obj, value) => { obj[\{q}\{attr_name}\{q}] = value; }"
  } else {
    "    set_\{attr_name}: (obj, value) => { obj.\{attr_name} = value; }"
  }
}

///|
/// Build JS argument name and call-expression lists from WebIDL arguments.
/// Returns (param_names, call_parts) where call_parts include spread for variadic args.
fn build_js_args(
  args : Array[@parser.Argument],
) -> (Array[String], Array[String]) {
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
  (arg_names, call_parts)
}

///|
/// Emit JS method - generates appropriate argument list and call.
/// `import_name` is the wasm import key (disambiguated, e.g. "fill_2"),
/// `original_name` is the actual JS method name (e.g. "fill").
/// Also used for namespace methods (via is_static=true, interface_name=namespace).
fn emit_js_method(
  import_name : String,
  original_name : String,
  args : Array[@parser.Argument],
  is_static : Bool,
  is_bigint? : Bool = false,
  interface_name? : String = "",
) -> String {
  let (arg_names, call_parts) = build_js_args(args)
  let comma_sep = ", "
  if is_static {
    let params = arg_names.join(comma_sep)
    let call_args = call_parts.join(comma_sep)
    let expr = "\{interface_name}.\{original_name}(\{call_args})"
    let expr = if is_bigint { "BigInt(\{expr})" } else { expr }
    "    \{import_name}: (\{params}) => \{expr}"
  } else {
    let args_str = arg_names.join(comma_sep)
    let params = if arg_names.length() > 0 { "obj, \{args_str}" } else { "obj" }
    let call_args = call_parts.join(comma_sep)
    let expr = "obj.\{original_name}(\{call_args})"
    let expr = if is_bigint { "BigInt(\{expr})" } else { expr }
    "    \{import_name}: (\{params}) => \{expr}"
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
  let (arg_names, call_parts) = build_js_args(args)
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
/// Collect JS constructor entries for an interface.
fn collect_js_constructors(
  iface : @flattened_idl.FlattenedInterface,
) -> Array[String] {
  let entries : Array[String] = []
  let counter : Map[String, Int] = {}
  let used_names = @hashset.new()
  for m in iface.members {
    match m.interface_member {
      Constructor(ctor) => {
        let import_name = next_overload_name(
          "new",
          ctor.arguments,
          counter,
          used_names,
        )
        entries.push(
          emit_js_constructor(import_name, iface.name, ctor.arguments),
        )
      }
      _ => continue
    }
  }
  entries
}

///|
/// Collect JS attribute getter/setter entries for an interface.
fn collect_js_attributes(
  iface : @flattened_idl.FlattenedInterface,
) -> Array[String] {
  let entries : Array[String] = []
  for m in iface.members {
    match m.interface_member {
      Attribute(attr) => {
        entries.push(
          emit_js_getter(
            attr.name,
            is_static=attr.static_,
            is_bigint=is_bigint_type(attr.type_),
            interface_name=iface.name,
          ),
        )
        if not(attr.is_readonly) {
          entries.push(
            emit_js_setter(
              attr.name,
              is_static=attr.static_,
              interface_name=iface.name,
            ),
          )
        }
      }
      _ => continue
    }
  }
  entries
}

///|
/// Collect JS operation entries (methods + special operations) for an interface.
fn collect_js_operations(
  iface : @flattened_idl.FlattenedInterface,
) -> Array[String] {
  let entries : Array[String] = []
  let counter : Map[String, Int] = {}
  let used_names = @hashset.new()
  for m in iface.members {
    match m.interface_member {
      RegularOperation(op) => {
        let import_name = next_overload_name(
          op.name,
          op.arguments,
          counter,
          used_names,
        )
        entries.push(
          emit_js_method(
            import_name,
            op.name,
            op.arguments,
            op.static_,
            is_bigint=is_bigint_type(op.return_type),
            interface_name=iface.name,
          ),
        )
      }
      SpecialOperation(op) if op.name is Some(_) => {
        let name = op.name.unwrap()
        let import_name = next_overload_name(
          name,
          op.arguments,
          counter,
          used_names,
        )
        entries.push(
          emit_js_method(
            import_name,
            name,
            op.arguments,
            false,
            is_bigint=is_bigint_type(op.return_type),
          ),
        )
      }
      SpecialOperation(op) => {
        let base_name = op.special.base_name()
        let import_name = next_overload_name(
          base_name,
          op.arguments,
          counter,
          used_names,
        )
        entries.push(emit_js_special_operation(import_name, op))
      }
      _ => continue
    }
  }
  entries
}

///|
fn wrap_js_module(module_name : String, entries : Array[String]) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  webapi_\{module_name}: {\n")
  buf.write_string(entries.join(",\n"))
  if entries.length() > 0 {
    buf.write_string("\n")
  }
  buf.write_string("  }")
  buf.to_string()
}

///|
/// Emit a complete JS module for an interface
fn emit_js_interface_module(
  iface : @flattened_idl.FlattenedInterface,
) -> String {
  let entries : Array[String] = []
  entries.push_iter(collect_js_constructors(iface).iter())
  entries.push_iter(collect_js_attributes(iface).iter())
  entries.push_iter(collect_js_operations(iface).iter())
  wrap_js_module(iface.name, entries)
}

///|
/// Emit a JS module for a dictionary
fn emit_js_dictionary_module(
  dict : @flattened_idl.MergedDictionaryIR,
) -> String {
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
  // Dictionary property getters
  for mem in dict.members {
    entries.push(emit_js_getter(mem.name, is_bigint=is_bigint_type(mem.type_)))
  }
  wrap_js_module(dict.name, entries)
}

///|
/// Emit a JS module for a callback
fn emit_js_callback_module(cb : @parser.CallbackFunctionDefinition) -> String {
  "  webapi_\{cb.name}: {\n    new: (f) => f\n  }"
}

///|
/// Emit a complete JS module for a namespace.
/// Reuses emit_js_method/emit_js_getter with is_static=true since
/// namespace members are just static calls on the global namespace object.
fn emit_js_namespace_module(
  ns : @partial_merged.PartialMergedNamespace,
) -> String {
  let module_name = @type_mapping.pascal_case(ns.name)
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
          emit_js_method(
            import_name,
            op.name,
            op.arguments,
            true,
            is_bigint=is_bigint_type(op.return_type),
            interface_name=ns.name,
          ),
        )
      }
      Attribute(attr) =>
        entries.push(
          emit_js_getter(
            attr.name,
            is_static=true,
            is_bigint=is_bigint_type(attr.type_),
            interface_name=ns.name,
          ),
        )
      Const(_) => continue // Constants don't need JS runtime entries
    }
  }
  wrap_js_module(module_name, entries)
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
