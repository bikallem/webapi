// ============================ Emit IR ===========================

///|
/// Represents a type name
struct TypeName(String) derive(Show, ToJson)

///|
/// Represents a trait name
struct TraitName(String) derive(Show, ToJson)

///|
/// Represents a constructor name, such as "new" or "new_2" for overloaded constructors
struct ConstructorName(String) derive(Show, ToJson)

///|
struct ConstName(String) derive(Show, ToJson)

///|
/// WebIDL Specifications set, eg, "DOM", "HTML", "Fetch"
struct Specs(@hashset.HashSet[String]) derive(Show, ToJson)

///|
fn specs_from_optional(spec : String?) -> Specs {
  Specs(
    match spec {
      Some(s) => @hashset.HashSet::from_array([s])
      None => @hashset.HashSet::new()
    },
  )
}

///|
/// MDN documentation URL base
let mdn_base_url : String = "https://developer.mozilla.org/en-US/docs/Web/API"

///|
/// Generate MDN documentation URL for an interface
pub fn mdn_interface_url(interface_name : String) -> String {
  "\{mdn_base_url}/\{interface_name}"
}

///|
/// Generate MDN documentation URL for an interface member (method/attribute)
pub fn mdn_member_url(interface_name : String, member_name : String) -> String {
  "\{mdn_base_url}/\{interface_name}/\{member_name}"
}

///|
pub struct InterfaceDef {
  trait_name : String
  parent_trait : String
  methods : Array[&InterfaceMethodEmit]
} derive(Show, ToJson)

///|
pub struct NamespaceDef {
  name : String
  methods : Array[&InterfaceMethodEmit]
} derive(Show, ToJson)

///|
pub struct EnumVariantEmit {
  variant_name : String
  original_value : String
} derive(Show, ToJson)

///|
/// Callback argument emit representation
pub(all) struct CallbackArgEmit {
  name : String
  mbt_type : String
} derive(Show, ToJson)

///|
/// Dictionary getter argument emit representation
pub(all) struct DictionaryGetterArg {
  original_name : String // JS property name, e.g. "done"
  return_type : String // MoonBit return type, e.g. "Bool"
  is_optional : Bool // Whether the return is nullable
  is_enum_type : Bool // Needs from_unchecked conversion on wasm
  is_valid_wasm_stub : Bool // Can be used directly as wasm import return type
  is_primitive : Bool // Bool, Int, Double, etc. - need FromJsAny conversion on wasm-gc
} derive(Show, ToJson)

///|
pub enum Emit {
  External(TypeName) // External type with MDN doc, eg. #external EventTarget
  InlineExternal(TypeName) // Synthetic inline union type (no MDN doc), eg. #external EffectTimingGetDuration
  ImplTJsValue(TypeName) // eg. pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"
  ImplFromJsAny(TypeName) // eg. pub impl FromJsAny for EventTarget with from_js_any(value : JsAny) -> EventTarget = "%identity"
  IntoMethod(TypeName) // eg. pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
  UnionIntoMethod(TypeName) // eg. pub fn[T: TBlobPart] BlobPart::into(self : BlobPart) -> T { FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self))) }
  FromMethod(TypeName) // eg. pub fn[T: TBlobPart] BlobPart::from(value : T) -> BlobPart = "%identity"
  IsUndefinedMethod(TypeName) // eg. pub fn EventTarget::is_undefined(self : EventTarget) -> Bool { ... }
  EmptyMethod(TypeName) // eg. pub fn Event::empty() -> EventTarget
  ImplTrait(TypeName, TraitName) // eg. impl TEventTarget for EventTarget
  InterfaceDefinition(InterfaceDef) // eg. trait TEventTarget { ... }
  NamespaceDefinition(NamespaceDef) // eg. pub fn CSS::escape(ident : String) -> String { ... }
  UnionArgTrait(TraitName) // eg. trait TEventTargetArg { ... }
  UnionArgTraitImpl(TypeName, TraitName) // eg. impl TEventTargetArg for TEventTarget
  DictionaryCreate(TypeName, Array[@type_mapping.MethodArg]) // eg. pub fn[T: TEventTarget] EventTarget::new(self : EventTarget) -> T = "%identity"
  DictionaryGetter(TypeName, Array[DictionaryGetterArg]) // eg. pub fn ReadableStreamReadResult::done(self) -> Bool
  ConstructorMethod(ConstructorName, TypeName, Array[@type_mapping.MethodArg]) // eg. pub fn EventTarget::new(...) -> EventTarget { ...
  Enum(TypeName, Array[EnumVariantEmit]) // eg. pub enum SomeEnum { Variant1, Variant2
  TypedefAlias(TypeName, String) // eg. pub typealias EventHandler = EventHandlerNonNull?
  Callback(TypeName, Array[CallbackArgEmit], TypeName) // eg. pub fn EventListener::new(f : (Event) -> Unit) -> EventListener
  Const(ConstName, TypeName, String) // eg. pub const SOME_CONST: SomeType = "some_value"
  FileHeader(TypeName, Specs) // eg. // This file is generated
} derive(Show, ToJson)

///|
/// Convert EmitAux values from type_mapping to full Emit values.
fn emit_aux_to_emit(aux : @type_mapping.EmitAux) -> Emit {
  match aux {
    UnionArgTrait(name) => Emit::UnionArgTrait(TraitName(name))
    UnionArgTraitImpl(type_name, trait_name) =>
      Emit::UnionArgTraitImpl(TypeName(type_name), TraitName(trait_name))
    InlineExternal(name) => Emit::InlineExternal(TypeName(name))
  }
}

///|
/// Wrapper around @type_mapping.arg_mbt_type that converts EmitAux to Emit.
fn arg_mbt_type(
  idl_type : @parser.Type,
  type_name : String,
  method_name : String,
  arg_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (@type_mapping.ArgMbtType, Array[Emit]) {
  let (mbt_type, aux_emits) = @type_mapping.arg_mbt_type(
    idl_type, type_name, method_name, arg_name, type_registry,
  )
  let emits = aux_emits.map(emit_aux_to_emit)
  (mbt_type, emits)
}

//============================ Shared render helpers ===========================

///|
fn render_is_undefined(type_name : String) -> MultiTargetCode {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  {
    shared: "pub fn \{type_name}::is_undefined(self : \{type_name}) -> Bool { \{ffi_name}(self) }",
    js_ffi: "extern \"js\" fn \{ffi_name}(obj : \{type_name}) -> Bool = \"(obj) => obj === undefined\"",
    wasm_ffi: "fn \{ffi_name}(obj : \{type_name}) -> Bool = \"JsValue\" \"isUndefined\"",
  }
}

///|
fn render_empty(type_name : String) -> MultiTargetCode {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  {
    shared: "pub fn \{type_name}::empty() -> \{type_name} { \{ffi_name}() }",
    js_ffi: "extern \"js\" fn \{ffi_name}() -> \{type_name} = \"() => {}\"",
    wasm_ffi: "fn \{ffi_name}() -> \{type_name} = \"webapi_Dictionary\" \"empty\"",
  }
}

///|
fn render_dictionary_create(
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> MultiTargetCode {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  // Shared wrapper
  let method_args = trait_method_impl_args(args)
  let call_args = func_call_args(args)
  let shared = "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n  \{ffi_name}(\{call_args})\n}"
  // JS FFI
  let ffi_js_args = args.map(arg => arg.original_name).join(", ")
  let js_buf = StringBuilder::new()
  js_buf
  ..write_string(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \n",
  )
  ..write_string("#|(\{ffi_js_args}) => {\n")
  .write_string("#|  const obj = {};\n")
  for arg in args {
    js_buf.write_string(
      "#|  if (\{arg.original_name} !== undefined) obj.\{arg.original_name} = \{arg.original_name};\n",
    )
  }
  js_buf..write_string("#|  return obj;\n").write_string("#|}")
  // Wasm FFI
  {
    shared,
    js_ffi: js_buf.to_string(),
    wasm_ffi: "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"webapi_\{type_name}\" \"new\"",
  }
}

///|
fn render_dictionary_getter(
  type_name : String,
  args : Array[DictionaryGetterArg],
) -> MultiTargetCode {
  let shared_buf = StringBuilder::new()
  let js_buf = StringBuilder::new()
  let wasm_buf = StringBuilder::new()
  let module_name = "webapi_\{type_name}"
  for i, arg in args {
    if i > 0 {
      shared_buf.write_string("\n\n")
      js_buf.write_string("\n\n")
      wasm_buf.write_string("\n\n")
    }
    let ffi_name = "\{@type_mapping.snake_case(type_name)}_get_\{@type_mapping.snake_case(arg.original_name)}_ffi"
    let method_name = @type_mapping.safe_identifier(arg.original_name)
    let ret_type = if arg.is_optional && !arg.return_type.has_suffix("?") {
      "\{arg.return_type}?"
    } else {
      arg.return_type
    }
    let is_optional = arg.is_optional || arg.return_type.has_suffix("?")
    // Shared wrapper
    shared_buf.write_string(
      "pub fn \{type_name}::\{method_name}(self : \{type_name}) -> \{ret_type} {\n",
    )
    if is_optional {
      let helper = if arg.is_primitive { "to_option_prim" } else { "to_option" }
      shared_buf.write_string(
        "  \{ffi_name}(TJsValue::to_js(self)).\{helper}()\n",
      )
    } else {
      shared_buf.write_string("  \{ffi_name}(TJsValue::to_js(self))\n")
    }
    shared_buf.write_string("}")
    // JS FFI
    let js_code = emit_js_ffi_with_return(
      ffi_name,
      "obj: JsValue",
      ["obj"],
      arg.return_type,
      is_optional~,
      is_void=false,
      is_enum=arg.is_enum_type,
      "obj.\{arg.original_name}",
    )
    js_buf.write_string(js_code.0)
    // Wasm FFI
    let wasm_code = emit_wasm_ffi_with_return(
      ffi_name,
      "obj: JsValue",
      ["obj"],
      arg.return_type,
      is_optional~,
      is_void=false,
      is_string=arg.return_type == "String",
      is_enum=arg.is_enum_type,
      is_valid_stub=arg.is_valid_wasm_stub,
      module_name,
      "get_\{arg.original_name}",
    )
    wasm_buf.write_string(wasm_code.0)
  }
  {
    shared: shared_buf.to_string(),
    js_ffi: js_buf.to_string(),
    wasm_ffi: wasm_buf.to_string(),
  }
}

///|
fn render_constructor(
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> MultiTargetCode {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let method_args = trait_method_impl_args(args)
  let call_args = func_call_args(args)
  let ffi_js_args = args.map(arg => arg.name).join(", ")
  let module_name = "webapi_\{type_name}"
  {
    shared: "pub fn \{type_name}::\{constructor_name}(\{method_args}) -> \{type_name} {\n  \{ffi_name}(\{call_args})\n}",
    js_ffi: "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"(\{ffi_js_args}) => new \{type_name}(\{ffi_js_args})\"",
    wasm_ffi: "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"\{module_name}\" \"\{constructor_name}\"",
  }
}

///|
/// Render callback wrapper and FFI for all targets.
fn render_callback(
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> MultiTargetCode {
  let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
  let closure_type = "(\{arg_types}) -> \{return_type}"
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  {
    shared: "pub fn \{name}::new(callback : \{closure_type}) -> \{name} { \{ffi_name}(callback) }",
    js_ffi: "extern \"js\" fn \{ffi_name}(callback : \{closure_type}) -> \{name} = \"(callback) => callback\"",
    wasm_ffi: render_callback_wasm_ffi(name, args, return_type),
  }
}

///|
fn array_inner_type(type_name : String) -> String? {
  if !(type_name.has_prefix("Array[") && type_name.has_suffix("]")) {
    None
  } else {
    let chars = type_name.to_array()
    if chars.length() <= 7 {
      None
    } else {
      Some(String::from_array(chars[6:chars.length() - 1]))
    }
  }
}

///|
fn callback_wasm_stub_type(type_name : String) -> String {
  match array_inner_type(type_name) {
    Some(_) => "JsArray"
    None => type_name
  }
}

///|
fn callback_wasm_arg_expr(arg_name : String, arg_type : String) -> String {
  match array_inner_type(arg_type) {
    Some(_) => "\{arg_name}.to_array()"
    None => arg_name
  }
}

///|
fn callback_wasm_return_expr(
  call_expr : String,
  return_type : String,
) -> String {
  match array_inner_type(return_type) {
    Some(_) => "JsArray::from_array(\{call_expr})"
    None => call_expr
  }
}

///|
/// Render callback FFI for the wasm-gc target.
/// Closures are externref on wasm-gc, so callback objects are imported directly.
/// If callback signatures include Array[T], emit a raw stub-safe signature using
/// JsArray and a wrapper that performs Array <-> JsArray conversion.
fn render_callback_wasm_ffi(
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> String {
  let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
  let closure_type = "(\{arg_types}) -> \{return_type}"
  let stub_arg_types = args.map(fn(a) { callback_wasm_stub_type(a.mbt_type) })
  let stub_arg_types_join = stub_arg_types.join(", ")
  let stub_return_type = callback_wasm_stub_type(return_type)
  let stub_closure_type = "(\{stub_arg_types_join}) -> \{stub_return_type}"
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  if closure_type == stub_closure_type {
    "fn \{ffi_name}(callback : \{closure_type}) -> \{name} = \"webapi_\{name}\" \"new\""
  } else {
    let raw_name = ffi_name + "_raw"
    let wrapper_args : Array[String] = []
    let callback_args : Array[String] = []
    for i = 0; i < args.length(); i = i + 1 {
      let arg = args[i]
      let stub_type = stub_arg_types[i]
      wrapper_args.push("\{arg.name} : \{stub_type}")
      callback_args.push(callback_wasm_arg_expr(arg.name, arg.mbt_type))
    }
    let callback_args_join = callback_args.join(", ")
    let wrapper_args_join = wrapper_args.join(", ")
    let callback_call = "callback(\{callback_args_join})"
    let callback_result = callback_wasm_return_expr(callback_call, return_type)
    "fn \{raw_name}(callback : \{stub_closure_type}) -> \{name} = \"webapi_\{name}\" \"new\"\n\n///|\nfn \{ffi_name}(callback : \{closure_type}) -> \{name} {\n  \{raw_name}(\n    fn(\{wrapper_args_join}) -> \{stub_return_type} {\n      \{callback_result}\n    },\n  )\n}"
  }
}

///|
fn render_namespace_definition(ns_def : NamespaceDef) -> MultiTargetCode {
  let module_name = "webapi_\{ns_def.name}"
  {
    shared: ns_def.methods.map(meth => meth.impl_emit().0).join("\n\n"),
    js_ffi: ns_def.methods.map(meth => meth.ffi_emit_js().0).join("\n\n"),
    wasm_ffi: ns_def.methods
    .map(meth => meth.ffi_emit_wasm(module_name).0)
    .join("\n\n"),
  }
}

///|
fn render_interface_definition(interface_def : InterfaceDef) -> MultiTargetCode {
  // Shared: trait definition + default impls
  let buf = StringBuilder::new()
  let mdn_url = mdn_interface_url(interface_def.trait_name)
  buf
  ..write_string("/// [\{interface_def.trait_name}](\{mdn_url}) interface.\n")
  .write_string(
    "pub trait T\{interface_def.trait_name}: \{interface_def.parent_trait} {\n",
  )
  let trait_defs = interface_def.methods.filter_map(meth => {
    match meth.decl_emit() {
      Code("") => None
      Code(code) => Some(code)
    }
  })
  // Append convenience trait declarations (non-_opt methods)
  let convenience_decls = interface_def.methods.filter_map(meth => {
    match meth.convenience_decl_emit() {
      Code("") => None
      Code(code) => Some(code)
    }
  })
  let all_decls = trait_defs
  all_decls.append(convenience_decls)
  buf
  ..write_string(all_decls.join("\n"))
  ..write_string("\n}")
  .write_string("\n\n")
  let default_trait_impls = interface_def.methods
    .map(meth => meth.impl_emit().0)
    .join("\n\n")
  buf.write_string(default_trait_impls)
  // Emit convenience default impls (trait-level methods that call _opt().unwrap())
  let convenience_impls = interface_def.methods
    .filter_map(meth => {
      match meth.convenience_impl_emit() {
        Code("") => None
        Code(code) => Some(code)
      }
    })
    .join("\n\n")
  if convenience_impls.length() > 0 {
    buf.write_string("\n\n")
    buf.write_string(convenience_impls)
  }
  let shared = buf.to_string()
  let module_name = "webapi_\{interface_def.trait_name}"
  {
    shared,
    js_ffi: interface_def.methods.map(meth => meth.ffi_emit_js().0).join("\n\n"),
    wasm_ffi: interface_def.methods
    .map(meth => meth.ffi_emit_wasm(module_name).0)
    .join("\n\n"),
  }
}

///|
/// Generate a match block with arms over enum variants, optionally with a fallback.
fn enum_match_block(
  name : String,
  variants : Array[EnumVariantEmit],
  subject : String,
  arm_fn : (String, EnumVariantEmit) -> String,
  fallback? : String = "",
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("  match \{subject} {\n")
  for variant in variants {
    buf.write_string("    \{arm_fn(name, variant)}\n")
  }
  if fallback.length() > 0 {
    buf.write_string("    \{fallback}\n")
  }
  buf.write_string("  }\n")
  buf.to_string()
}

///|
/// Generate a complete enum method: signature + match block + closing brace.
fn render_enum_method(
  buf : StringBuilder,
  name : String,
  variants : Array[EnumVariantEmit],
  signature : String,
  subject : String,
  arm_fn : (String, EnumVariantEmit) -> String,
  fallback? : String = "",
) -> Unit {
  buf.write_string(signature)
  buf.write_string(enum_match_block(name, variants, subject, arm_fn, fallback~))
  buf.write_string("}")
}

///|
fn render_enum(name : String, variants : Array[EnumVariantEmit]) -> String {
  let buf = StringBuilder::new()
  buf.write_string("pub(all) enum \{name} {\n")
  for variant in variants {
    buf.write_string("  \{variant.variant_name}\n")
  }
  buf.write_string("} derive(Eq)\n\n")
  // Show
  render_enum_method(
    buf,
    name,
    variants,
    "pub impl Show for \{name} with output(self : \{name}, logger : &Logger) -> Unit {\n",
    "self",
    fn(n, v) {
      "\{n}::\{v.variant_name} => logger.write_string(\"\{v.variant_name}\")"
    },
  )
  buf.write_string("\n\n")
  // TJsValue
  render_enum_method(
    buf,
    name,
    variants,
    "pub impl TJsValue for \{name} with to_js(self: \{name}) -> JsValue {\n",
    "self",
    fn(n, v) {
      "\{n}::\{v.variant_name} => TJsValue::to_js(\"\{v.original_value}\")"
    },
  )
  buf.write_string("\n\n")
  // from (safe)
  render_enum_method(
    buf,
    name,
    variants,
    "pub fn \{name}::from(value: String) -> \{name}? {\n",
    "value",
    fn(n, v) { "\"\{v.original_value}\" => Some(\{n}::\{v.variant_name})" },
    fallback="_ => None",
  )
  buf.write_string("\n\n")
  // from_unchecked (wasm-gc)
  render_enum_method(
    buf,
    name,
    variants,
    "fn \{name}::from_unchecked(value: String) -> \{name} {\n",
    "value",
    fn(n, v) { "\"\{v.original_value}\" => \{n}::\{v.variant_name}" },
    fallback="_ => abort(\"unknown \{name} enum value\")",
  )
  buf.write_string("\n\n")
  // value
  render_enum_method(
    buf,
    name,
    variants,
    "pub fn \{name}::value(self: \{name}) -> String {\n",
    "self",
    fn(n, v) { "\{n}::\{v.variant_name} => \"\{v.original_value}\"" },
  )
  buf.write_string("\n\n")
  // FromJsAny
  buf.write_string(
    "pub impl FromJsAny for \{name} with from_js_any(value : JsAny) -> \{name} {\n  \{name}::from_unchecked(value)\n}",
  )
  buf.to_string()
}

///|
/// Extract a trait-object reference (&TSomeTrait) from a type string.
/// Returns the &T reference if found in the type (e.g., "&TFoo" from "&TFoo"
/// or "Array[&TFoo]"), None otherwise.
fn extract_trait_ref(type_name : String) -> String? {
  // Find "&T" in the string (e.g., "&TFoo" or "Array[&TFoo]")
  let chars = type_name.to_array()
  let mut start_idx = -1
  for i, c in chars {
    if c == '&' && i + 1 < chars.length() && chars[i + 1] == 'T' {
      start_idx = i
      break
    }
  }
  guard start_idx >= 0 else { return None }
  // Scan alphanumeric/underscore chars after "&T"
  let mut end = start_idx + 2
  while end < chars.length() &&
        (
          chars[end].is_ascii_alphabetic() ||
          chars[end].is_ascii_digit() ||
          chars[end] == '_'
        ) {
    end += 1
  }
  Some(type_name[start_idx:end].to_string())
}

///|
fn render_file_header(
  type_name : String,
  specs : @hashset.HashSet[String],
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("// Do not edit. This file is generated.\n")
  buf.write_string("// MoonBit type: \{type_name}\n")
  if !specs.is_empty() {
    let specs_list = specs.to_array().join(", ")
    buf.write_string("// Specifications: \{specs_list}")
  }
  buf.to_string()
}

//============================ Code generator ===========================

///|
//============================ Multi-target code generator ===========================

///|
pub(all) struct MultiTargetCode {
  shared : String
  js_ffi : String
  wasm_ffi : String
}

///|
/// Generate multi-target MoonBit code from Emit array
pub fn mbt_code_gen_multi(emits : Array[Emit]) -> MultiTargetCode {
  let shared_buf = StringBuilder::new()
  let js_buf = StringBuilder::new()
  let wasm_buf = StringBuilder::new()
  let mut shared_first = true
  let mut js_first = true
  let mut wasm_first = true
  fn append_shared(s : String) {
    if !shared_first {
      shared_buf.write_string("\n\n")
    }
    shared_buf.write_string(s)
    shared_first = false
  }

  fn append_multi(code : MultiTargetCode) {
    append_shared(code.shared)
    if code.js_ffi.length() > 0 {
      if !js_first {
        js_buf.write_string("\n\n")
      }
      js_buf.write_string(code.js_ffi)
      js_first = false
    }
    if code.wasm_ffi.length() > 0 {
      if !wasm_first {
        wasm_buf.write_string("\n\n")
      }
      wasm_buf.write_string(code.wasm_ffi)
      wasm_first = false
    }
  }

  for emit in emits {
    match emit {
      Emit::External(TypeName(type_name)) => {
        let mdn_url = mdn_interface_url(type_name)
        append_shared(
          "/// [\{type_name}](\{mdn_url})\n#external\npub type \{type_name}",
        )
      }
      Emit::InlineExternal(TypeName(type_name)) =>
        append_shared("#external\npub type \{type_name}")
      Emit::ImplTJsValue(TypeName(type_name)) =>
        append_shared(
          "pub impl TJsValue for \{type_name} with to_js(self: \{type_name}) -> JsValue = \"%identity\"",
        )
      Emit::ImplFromJsAny(TypeName(type_name)) =>
        append_shared(
          "pub impl FromJsAny for \{type_name} with from_js_any(value : JsAny) -> \{type_name} = \"%identity\"",
        )
      Emit::IntoMethod(TypeName(type_name)) =>
        append_shared(
          "pub fn[T: T\{type_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
        )
      Emit::UnionIntoMethod(TypeName(type_name)) =>
        append_shared(
          "pub fn[T : T\{type_name} + FromJsAny] \{type_name}::into(self : \{type_name}) -> T {\n  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))\n}",
        )
      Emit::FromMethod(TypeName(type_name)) =>
        append_shared(
          "pub fn[T : T\{type_name}] \{type_name}::from(value : T) -> \{type_name} = \"%identity\"",
        )
      Emit::ImplTrait(TypeName(type_name), TraitName(trait_name)) =>
        append_shared("pub impl \{trait_name} for \{type_name}")
      Emit::UnionArgTrait(TraitName(trait_name)) =>
        append_shared("pub(open) trait \{trait_name} : TJsValue {}")
      Emit::UnionArgTraitImpl(TypeName(mbt_type), TraitName(trait_name)) => {
        match extract_trait_ref(mbt_type) {
          Some(trait_ref) =>
            append_shared(
              "pub impl TJsValue for \{trait_ref} with to_js(self : \{trait_ref}) -> JsValue = \"%identity\"",
            )
          None => ()
        }
        append_shared("pub impl \{trait_name} for \{mbt_type}")
      }
      Emit::Enum(TypeName(name), variants) =>
        append_shared(render_enum(name, variants))
      Emit::TypedefAlias(TypeName(name), target_type) =>
        append_shared("pub type \{name} = \{target_type}")
      Emit::Const(ConstName(const_name), TypeName(type_name), value) =>
        append_shared("pub const \{const_name}: \{type_name} = \{value}")
      Emit::FileHeader(TypeName(type_name), Specs(specs)) =>
        append_shared(render_file_header(type_name, specs))
      Emit::IsUndefinedMethod(TypeName(type_name)) =>
        append_multi(render_is_undefined(type_name))
      Emit::EmptyMethod(TypeName(type_name)) =>
        append_multi(render_empty(type_name))
      Emit::InterfaceDefinition(interface_def) =>
        append_multi(render_interface_definition(interface_def))
      Emit::NamespaceDefinition(ns_def) =>
        append_multi(render_namespace_definition(ns_def))
      Emit::DictionaryCreate(TypeName(type_name), args) =>
        append_multi(render_dictionary_create(type_name, args))
      Emit::DictionaryGetter(TypeName(type_name), args) =>
        append_multi(render_dictionary_getter(type_name, args))
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => append_multi(render_constructor(constructor_name, type_name, args))
      Emit::Callback(TypeName(name), args, TypeName(return_type)) =>
        append_multi(render_callback(name, args, return_type))
    }
  }
  MultiTargetCode::{
    shared: shared_buf.to_string(),
    js_ffi: js_buf.to_string(),
    wasm_ffi: wasm_buf.to_string(),
  }
}
