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
  let specs = @hashset.HashSet::new()
  match spec {
    Some(s) => specs.add(s)
    None => ()
  }
  Specs(specs)
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
pub enum Emit {
  External(TypeName) // External type, eg. #external EventTarget
  ImplTJsValue(TypeName) // eg. pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"
  IntoMethod(TypeName) // eg. pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
  IsUndefinedMethod(TypeName) // eg. pub fn EventTarget::is_undefined(self : EventTarget) -> Bool { ... }
  EmptyMethod(TypeName) // eg. pub fn Event::empty() -> EventTarget
  ImplTrait(TypeName, TraitName) // eg. impl TEventTarget for EventTarget
  InterfaceDefinition(InterfaceDef) // eg. trait TEventTarget { ... }
  UnionArgTrait(TraitName) // eg. trait TEventTargetArg { ... }
  UnionArgTraitImpl(TypeName, TraitName) // eg. impl TEventTargetArg for TEventTarget
  DictionaryCreate(TypeName, Array[@type_mapping.MethodArg]) // eg. pub fn[T: TEventTarget] EventTarget::new(self : EventTarget) -> T = "%identity"
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
    External(name) => Emit::External(TypeName(name))
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
fn render_is_undefined_wrapper(buf : StringBuilder, type_name : String) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  buf.write_string(
    "pub fn \{type_name}::is_undefined(self : \{type_name}) -> Bool { \{ffi_name}(self) }",
  )
}

///|
fn render_is_undefined_ffi_js(buf : StringBuilder, type_name : String) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  buf.write_string(
    "extern \"js\" fn \{ffi_name}(obj : \{type_name}) -> Bool = \"(obj) => obj === undefined\"",
  )
}

///|
fn render_is_undefined_ffi_wasm(
  buf : StringBuilder,
  type_name : String,
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  buf.write_string(
    "fn \{ffi_name}(obj : \{type_name}) -> Bool = \"JsValue\" \"isNull\"",
  )
}

///|
fn render_empty_wrapper(buf : StringBuilder, type_name : String) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  buf.write_string(
    "pub fn \{type_name}::empty() -> \{type_name} { \{ffi_name}() }",
  )
}

///|
fn render_empty_ffi_js(buf : StringBuilder, type_name : String) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  buf.write_string(
    "extern \"js\" fn \{ffi_name}() -> \{type_name} = \"() => {}\"",
  )
}

///|
fn render_empty_ffi_wasm(buf : StringBuilder, type_name : String) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  buf.write_string(
    "fn \{ffi_name}() -> \{type_name} = \"webapi_Dictionary\" \"empty\"",
  )
}

///|
fn render_dictionary_wrapper(
  buf : StringBuilder,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let method_args = trait_method_impl_args(args)
  buf.write_string(
    "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n",
  )
  let call_args = func_call_args(args)
  buf..write_string("  \{ffi_name}(\{call_args})\n").write_string("}")
}

///|
fn render_dictionary_ffi_js(
  buf : StringBuilder,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let ffi_js_args = args.map(arg => arg.original_name).join(", ")
  buf
  ..write_string(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \n",
  )
  ..write_string("#|(\{ffi_js_args}) => {\n")
  .write_string("#|  const obj = {};\n")
  for arg in args {
    buf.write_string(
      "#|  if (\{arg.original_name} !== undefined) obj.\{arg.original_name} = \{arg.original_name};\n",
    )
  }
  buf..write_string("#|  return obj;\n").write_string("#|}")
}

///|
fn render_dictionary_ffi_wasm(
  buf : StringBuilder,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  buf.write_string(
    "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"webapi_\{type_name}\" \"new\"",
  )
}

///|
fn render_constructor_wrapper(
  buf : StringBuilder,
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let method_args = trait_method_impl_args(args)
  buf.write_string(
    "pub fn \{type_name}::\{constructor_name}(\{method_args}) -> \{type_name} {\n",
  )
  let call_args = func_call_args(args)
  buf..write_string("  \{ffi_name}(\{call_args})\n").write_string("}")
}

///|
fn render_constructor_ffi_js(
  buf : StringBuilder,
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let ffi_js_args = args.map(arg => arg.name).join(", ")
  buf.write_string(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"(\{ffi_js_args}) => new \{type_name}(\{ffi_js_args})\"",
  )
}

///|
fn render_constructor_ffi_wasm(
  buf : StringBuilder,
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let module_name = "webapi_\{type_name}"
  buf.write_string(
    "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"\{module_name}\" \"new\"",
  )
}

///|
fn render_callback_wrapper(
  buf : StringBuilder,
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> Unit {
  let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
  let closure_type = "(\{arg_types}) -> \{return_type}"
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  // Use js_of() to convert closure to JsValue, unsafe_cast result back to callback type
  buf.write_string(
    "pub fn \{name}::new(f : \{closure_type}) -> \{name} { \{ffi_name}(js_of(f)).unsafe_cast() }",
  )
}

///|
fn render_callback_ffi_js(
  buf : StringBuilder,
  name : String,
  _args : Array[CallbackArgEmit],
  _return_type : String,
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  // Takes JsValue (closure converted via js_of), returns JsValue
  buf.write_string(
    "extern \"js\" fn \{ffi_name}(f : JsValue) -> JsValue = \"(f) => f\"",
  )
}

///|
fn render_callback_ffi_wasm(
  buf : StringBuilder,
  name : String,
  _args : Array[CallbackArgEmit],
  _return_type : String,
) -> Unit {
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  // Takes JsValue (closure converted via js_of), returns JsValue
  buf.write_string(
    "fn \{ffi_name}(f : JsValue) -> JsValue = \"webapi_\{name}\" \"new\"",
  )
}

///|
fn render_interface_definition_shared(
  buf : StringBuilder,
  interface_def : InterfaceDef,
) -> Unit {
  let mdn_url = mdn_interface_url(interface_def.trait_name)
  buf
  ..write_string("/// [\{interface_def.trait_name}](\{mdn_url}) interface.\n")
  .write_string(
    "pub trait T\{interface_def.trait_name}: \{interface_def.parent_trait} {\n",
  )
  let trait_defs = interface_def.methods
    .filter_map(meth => {
      match meth.decl_emit() {
        Code("") => None
        Code(code) => Some(code)
      }
    })
    .join("\n")
  buf..write_string(trait_defs)..write_string("\n}").write_string("\n\n")
  let default_trait_impls = interface_def.methods
    .map(meth => meth.impl_emit().0)
    .join("\n\n")
  buf.write_string(default_trait_impls)
}

///|
fn render_interface_definition_js_ffi(
  buf : StringBuilder,
  interface_def : InterfaceDef,
) -> Unit {
  let ffi_decls = interface_def.methods
    .map(meth => meth.ffi_emit_js().0)
    .join("\n\n")
  buf.write_string(ffi_decls)
}

///|
fn render_interface_definition_wasm_ffi(
  buf : StringBuilder,
  interface_def : InterfaceDef,
) -> Unit {
  let module_name = "webapi_\{interface_def.trait_name}"
  let ffi_decls = interface_def.methods
    .map(meth => meth.ffi_emit_wasm(module_name).0)
    .join("\n\n")
  buf.write_string(ffi_decls)
}

//============================ Legacy combined render helpers (for mbt_code_gen) ===

///|
fn render_is_undefined_method(buf : StringBuilder, type_name : String) -> Unit {
  render_is_undefined_ffi_js(buf, type_name)
  buf.write_string("\n\n")
  render_is_undefined_wrapper(buf, type_name)
}

///|
fn render_empty_method(buf : StringBuilder, type_name : String) -> Unit {
  render_empty_ffi_js(buf, type_name)
  buf.write_string("\n\n")
  render_empty_wrapper(buf, type_name)
}

///|
fn render_interface_definition(
  buf : StringBuilder,
  interface_def : InterfaceDef,
) -> Unit {
  let mdn_url = mdn_interface_url(interface_def.trait_name)
  buf
  ..write_string("/// [\{interface_def.trait_name}](\{mdn_url}) interface.\n")
  .write_string(
    "pub trait T\{interface_def.trait_name}: \{interface_def.parent_trait} {\n",
  )
  let trait_defs = interface_def.methods
    .filter_map(meth => {
      match meth.decl_emit() {
        Code("") => None
        Code(code) => Some(code)
      }
    })
    .join("\n")
  buf..write_string(trait_defs)..write_string("\n}").write_string("\n\n")
  // Emit FFI + impl interleaved (legacy: FFI before impl for each method)
  let method_outputs = interface_def.methods
    .map(meth => {
      let ffi = meth.ffi_emit_js().0
      let impl_ = meth.impl_emit().0
      "\{ffi}\n\n\{impl_}"
    })
    .join("\n\n")
  buf.write_string(method_outputs)
}

///|
fn render_dictionary_create(
  buf : StringBuilder,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  render_dictionary_ffi_js(buf, type_name, args)
  buf.write_string("\n\n")
  render_dictionary_wrapper(buf, type_name, args)
}

///|
fn render_constructor_method(
  buf : StringBuilder,
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> Unit {
  render_constructor_ffi_js(buf, constructor_name, type_name, args)
  buf.write_string("\n\n")
  render_constructor_wrapper(buf, constructor_name, type_name, args)
}

///|
fn render_callback(
  buf : StringBuilder,
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> Unit {
  render_callback_ffi_js(buf, name, args, return_type)
  buf.write_string("\n\n")
  render_callback_wrapper(buf, name, args, return_type)
}

///|
fn render_enum(
  buf : StringBuilder,
  name : String,
  variants : Array[EnumVariantEmit],
) -> Unit {
  buf.write_string("pub(all) enum \{name} {\n")
  for variant in variants {
    buf.write_string("  \{variant.variant_name}\n")
  }
  buf
  ..write_string("} derive(Eq,Show)")
  ..write_string("\n\n")
  ..write_string(
    "pub impl TJsValue for \{name} with to_js(self: \{name}) -> JsValue {\n",
  )
  .write_string("  match self {\n")
  for variant in variants {
    buf.write_string(
      "    \{name}::\{variant.variant_name} => TJsValue::to_js(\"\{variant.original_value}\")\n",
    )
  }
  buf
  ..write_string("  }\n")
  ..write_string("}")
  ..write_string("\n\n")
  ..write_string("pub fn \{name}::from(value: String) -> \{name}? {\n")
  .write_string("  match value {\n")
  for variant in variants {
    buf.write_string(
      "    \"\{variant.original_value}\" => Some(\{name}::\{variant.variant_name})\n",
    )
  }
  buf..write_string("    _ => None\n")..write_string("  }\n").write_string("}")
}

///|
fn render_file_header(
  buf : StringBuilder,
  type_name : String,
  specs : @hashset.HashSet[String],
) -> Unit {
  buf.write_string("// Do not edit. This file is generated.\n")
  buf.write_string("// MoonBit type: \{type_name}\n")
  if !specs.is_empty() {
    let specs_list = specs.to_array().join(", ")
    buf.write_string("// Specifications: \{specs_list}")
  }
}

//============================ Code generator ===========================

///|
/// Generate MoonBit code from Emit array for js backend (legacy, combined output)
pub fn mbt_code_gen(emits : Array[Emit]) -> String {
  let buf = StringBuilder::new()
  for i, emit in emits {
    match emit {
      Emit::External(TypeName(type_name)) => {
        let mdn_url = mdn_interface_url(type_name)
        buf.write_string(
          "/// [\{type_name}](\{mdn_url})\n#external\npub type \{type_name}",
        )
      }
      Emit::ImplTJsValue(TypeName(type_name)) =>
        buf.write_string(
          "pub impl TJsValue for \{type_name} with to_js(self: \{type_name}) -> JsValue = \"%identity\"",
        )
      Emit::IntoMethod(TypeName(type_name)) =>
        buf.write_string(
          "pub fn[T: T\{type_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
        )
      Emit::IsUndefinedMethod(TypeName(type_name)) =>
        render_is_undefined_method(buf, type_name)
      Emit::EmptyMethod(TypeName(type_name)) =>
        render_empty_method(buf, type_name)
      Emit::ImplTrait(TypeName(type_name), TraitName(trait_name)) =>
        buf.write_string("pub impl \{trait_name} for \{type_name}")
      Emit::InterfaceDefinition(interface_def) =>
        render_interface_definition(buf, interface_def)
      Emit::UnionArgTrait(TraitName(trait_name)) =>
        buf
        ..write_string("pub(open) trait \{trait_name} {\n")
        ..write_string("  to_js(self : Self) -> JsValue\n")
        .write_string("}")
      Emit::UnionArgTraitImpl(TypeName(mbt_type), TraitName(trait_name)) =>
        buf.write_string(
          "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
        )
      Emit::DictionaryCreate(TypeName(type_name), args) =>
        render_dictionary_create(buf, type_name, args)
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => render_constructor_method(buf, constructor_name, type_name, args)
      Emit::Enum(TypeName(name), variants) => render_enum(buf, name, variants)
      Emit::TypedefAlias(TypeName(name), target_type) =>
        buf.write_string("pub type \{name} = \{target_type}")
      Emit::Callback(TypeName(name), args, TypeName(return_type)) =>
        render_callback(buf, name, args, return_type)
      Emit::Const(ConstName(const_name), TypeName(type_name), value) =>
        buf.write_string("pub const \{const_name}: \{type_name} = \{value}")
      Emit::FileHeader(TypeName(type_name), Specs(specs)) =>
        render_file_header(buf, type_name, specs)
    }
    if i < emits.length() - 1 {
      buf.write_string("\n\n")
    }
  }
  buf.to_string()
}

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

  fn append_js(s : String) {
    if !js_first {
      js_buf.write_string("\n\n")
    }
    js_buf.write_string(s)
    js_first = false
  }

  fn append_wasm(s : String) {
    if !wasm_first {
      wasm_buf.write_string("\n\n")
    }
    wasm_buf.write_string(s)
    wasm_first = false
  }

  for emit in emits {
    match emit {
      Emit::External(TypeName(type_name)) => {
        let mdn_url = mdn_interface_url(type_name)
        append_shared(
          "/// [\{type_name}](\{mdn_url})\n#external\npub type \{type_name}",
        )
      }
      Emit::ImplTJsValue(TypeName(type_name)) =>
        append_shared(
          "pub impl TJsValue for \{type_name} with to_js(self: \{type_name}) -> JsValue = \"%identity\"",
        )
      Emit::IntoMethod(TypeName(type_name)) =>
        append_shared(
          "pub fn[T: T\{type_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
        )
      Emit::ImplTrait(TypeName(type_name), TraitName(trait_name)) =>
        append_shared("pub impl \{trait_name} for \{type_name}")
      Emit::UnionArgTrait(TraitName(trait_name)) => {
        let b = StringBuilder::new()
        b
        ..write_string("pub(open) trait \{trait_name} {\n")
        ..write_string("  to_js(self : Self) -> JsValue\n")
        .write_string("}")
        append_shared(b.to_string())
      }
      Emit::UnionArgTraitImpl(TypeName(mbt_type), TraitName(trait_name)) =>
        // Use %identity for externref types (safe on both JS and wasm-gc).
        // All #external types, String, JsValue etc. are externref on both targets.
        append_shared(
          "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
        )
      Emit::Enum(TypeName(name), variants) => {
        let b = StringBuilder::new()
        render_enum(b, name, variants)
        append_shared(b.to_string())
      }
      Emit::TypedefAlias(TypeName(name), target_type) =>
        append_shared("pub type \{name} = \{target_type}")
      Emit::Const(ConstName(const_name), TypeName(type_name), value) =>
        append_shared(
          "pub const \{const_name}: \{type_name} = \{value}",
        )
      Emit::FileHeader(TypeName(type_name), Specs(specs)) => {
        let b = StringBuilder::new()
        render_file_header(b, type_name, specs)
        append_shared(b.to_string())
      }
      Emit::IsUndefinedMethod(TypeName(type_name)) => {
        let sb = StringBuilder::new()
        render_is_undefined_wrapper(sb, type_name)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_is_undefined_ffi_js(jb, type_name)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_is_undefined_ffi_wasm(wb, type_name)
        append_wasm(wb.to_string())
      }
      Emit::EmptyMethod(TypeName(type_name)) => {
        let sb = StringBuilder::new()
        render_empty_wrapper(sb, type_name)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_empty_ffi_js(jb, type_name)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_empty_ffi_wasm(wb, type_name)
        append_wasm(wb.to_string())
      }
      Emit::InterfaceDefinition(interface_def) => {
        let sb = StringBuilder::new()
        render_interface_definition_shared(sb, interface_def)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_interface_definition_js_ffi(jb, interface_def)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_interface_definition_wasm_ffi(wb, interface_def)
        append_wasm(wb.to_string())
      }
      Emit::DictionaryCreate(TypeName(type_name), args) => {
        let sb = StringBuilder::new()
        render_dictionary_wrapper(sb, type_name, args)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_dictionary_ffi_js(jb, type_name, args)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_dictionary_ffi_wasm(wb, type_name, args)
        append_wasm(wb.to_string())
      }
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => {
        let sb = StringBuilder::new()
        render_constructor_wrapper(sb, constructor_name, type_name, args)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_constructor_ffi_js(jb, constructor_name, type_name, args)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_constructor_ffi_wasm(wb, constructor_name, type_name, args)
        append_wasm(wb.to_string())
      }
      Emit::Callback(TypeName(name), args, TypeName(return_type)) => {
        let sb = StringBuilder::new()
        render_callback_wrapper(sb, name, args, return_type)
        append_shared(sb.to_string())
        let jb = StringBuilder::new()
        render_callback_ffi_js(jb, name, args, return_type)
        append_js(jb.to_string())
        let wb = StringBuilder::new()
        render_callback_ffi_wasm(wb, name, args, return_type)
        append_wasm(wb.to_string())
      }
    }
  }
  MultiTargetCode::{
    shared: shared_buf.to_string(),
    js_ffi: js_buf.to_string(),
    wasm_ffi: wasm_buf.to_string(),
  }
}
