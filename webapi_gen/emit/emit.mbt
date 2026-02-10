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
pub enum Emit {
  External(TypeName) // External type, eg. #external EventTarget
  ImplTJsValue(TypeName) // eg. pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"
  IntoMethod(TypeName) // eg. pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
  IsUndefinedMethod(TypeName) // eg. pub fn EventTarget::is_undefined(self : EventTarget) -> Bool { ... }
  EmptyMethod(TypeName) // eg. pub fn Event::empty() -> EventTarget
  ImplTrait(TypeName, TraitName) // eg. impl TEventTarget for EventTarget
  InterfaceDefinition(InterfaceDef) // eg. trait TEventTarget { ... }
  NamespaceDefinition(NamespaceDef) // eg. pub fn CSS::escape(ident : String) -> String { ... }
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

///|
/// Wasm-gc value types that are NOT externref (i32, f64, etc.).
/// %identity cannot convert between these and JsValue (externref).
/// Must use TJsValue::to_js delegation instead.
let wasm_value_types : Array[String] = [
  "Bool", "Int", "UInt", "Int64", "UInt64", "Float", "Double",
]

///|
/// Check if a type name is a wasm-gc value type (i32/f64, not externref).
fn is_wasm_value_type(type_name : String) -> Bool {
  wasm_value_types.contains(type_name)
}

//============================ Shared render helpers ===========================

///|
fn render_is_undefined_wrapper(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  "pub fn \{type_name}::is_undefined(self : \{type_name}) -> Bool { \{ffi_name}(self) }"
}

///|
fn render_is_undefined_ffi_js(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  "extern \"js\" fn \{ffi_name}(obj : \{type_name}) -> Bool = \"(obj) => obj === undefined\""
}

///|
fn render_is_undefined_ffi_wasm(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
  "fn \{ffi_name}(obj : \{type_name}) -> Bool = \"JsValue\" \"isUndefined\""
}

///|
fn render_empty_wrapper(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  "pub fn \{type_name}::empty() -> \{type_name} { \{ffi_name}() }"
}

///|
fn render_empty_ffi_js(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  "extern \"js\" fn \{ffi_name}() -> \{type_name} = \"() => {}\""
}

///|
fn render_empty_ffi_wasm(type_name : String) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
  "fn \{ffi_name}() -> \{type_name} = \"webapi_Dictionary\" \"empty\""
}

///|
fn render_dictionary_wrapper(
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let method_args = trait_method_impl_args(args)
  let call_args = func_call_args(args)
  "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n  \{ffi_name}(\{call_args})\n}"
}

///|
fn render_dictionary_ffi_js(
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let ffi_js_args = args.map(arg => arg.original_name).join(", ")
  let buf = StringBuilder::new()
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
  buf.to_string()
}

///|
fn render_dictionary_ffi_wasm(
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"webapi_\{type_name}\" \"new\""
}

///|
fn render_constructor_wrapper(
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let method_args = trait_method_impl_args(args)
  let call_args = func_call_args(args)
  "pub fn \{type_name}::\{constructor_name}(\{method_args}) -> \{type_name} {\n  \{ffi_name}(\{call_args})\n}"
}

///|
fn render_constructor_ffi_js(
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let ffi_js_args = args.map(arg => arg.name).join(", ")
  "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"(\{ffi_js_args}) => new \{type_name}(\{ffi_js_args})\""
}

///|
fn render_constructor_ffi_wasm(
  constructor_name : String,
  type_name : String,
  args : Array[@type_mapping.MethodArg],
) -> String {
  let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
  let ffi_args = args
    .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
    .join(", ")
  let module_name = "webapi_\{type_name}"
  "fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"\{module_name}\" \"new\""
}

///|
/// Render callback wrapper + FFI for the JS target.
/// Uses js_of() to convert the closure to JsValue via %identity (works on JS backend).
fn render_callback_js(
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> String {
  let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
  let closure_type = "(\{arg_types}) -> \{return_type}"
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  "pub fn \{name}::new(f : \{closure_type}) -> \{name} { \{ffi_name}(js_of(f)).unsafe_cast() }\n\n///|\nextern \"js\" fn \{ffi_name}(f : JsValue) -> JsValue = \"(f) => f\""
}

///|
/// Render callback wrapper + FFI for the wasm-gc target.
/// Wraps the user's closure in a JsValue-only closure so MoonBit's make_closure
/// mechanism handles the closure-to-JS-function conversion properly.
fn render_callback_wasm(
  name : String,
  args : Array[CallbackArgEmit],
  return_type : String,
) -> String {
  let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
  let closure_type = "(\{arg_types}) -> \{return_type}"
  let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"
  let n = args.length()
  let wasm_params : Array[String] = []
  let cast_args : Array[String] = []
  for i in 0..<n {
    let p = "a\{i}"
    wasm_params.push("\{p} : JsValue")
    cast_args.push("\{p}.unsafe_cast()")
  }
  let wasm_params_str = wasm_params.join(", ")
  let wasm_types_str = Array::make(n, "JsValue").join(", ")
  let cast_args_str = cast_args.join(", ")
  let void_return = return_type == "Unit"
  let wasm_ret = if void_return { "Unit" } else { "JsValue" }
  let wasm_closure_type = "(\{wasm_types_str}) -> \{wasm_ret}"
  let wrapper_body = if void_return {
    "  let w : \{wasm_closure_type} = fn(\{wasm_params_str}) { f(\{cast_args_str}) }\n"
  } else {
    "  let w : \{wasm_closure_type} = fn(\{wasm_params_str}) { TJsValue::to_js(f(\{cast_args_str})) }\n"
  }
  "pub fn \{name}::new(f : \{closure_type}) -> \{name} {\n\{wrapper_body}  \{ffi_name}(w).unsafe_cast()\n}\n\n///|\nfn \{ffi_name}(f : \{wasm_closure_type}) -> JsValue = \"webapi_\{name}\" \"new\""
}

///|
fn render_namespace_definition_shared(ns_def : NamespaceDef) -> String {
  ns_def.methods.map(meth => meth.impl_emit().0).join("\n\n")
}

///|
fn render_namespace_definition_js_ffi(ns_def : NamespaceDef) -> String {
  ns_def.methods.map(meth => meth.ffi_emit_js().0).join("\n\n")
}

///|
fn render_namespace_definition_wasm_ffi(ns_def : NamespaceDef) -> String {
  let module_name = "webapi_\{ns_def.name}"
  ns_def.methods.map(meth => meth.ffi_emit_wasm(module_name).0).join("\n\n")
}

///|
fn render_interface_definition_shared(interface_def : InterfaceDef) -> String {
  let buf = StringBuilder::new()
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
  buf.to_string()
}

///|
fn render_interface_definition_js_ffi(interface_def : InterfaceDef) -> String {
  interface_def.methods.map(meth => meth.ffi_emit_js().0).join("\n\n")
}

///|
fn render_interface_definition_wasm_ffi(interface_def : InterfaceDef) -> String {
  let module_name = "webapi_\{interface_def.trait_name}"
  interface_def.methods
  .map(meth => meth.ffi_emit_wasm(module_name).0)
  .join("\n\n")
}

///|
fn render_enum(name : String, variants : Array[EnumVariantEmit]) -> String {
  let buf = StringBuilder::new()
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
  buf.to_string()
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
/// Generate MoonBit code from Emit array for JS backend (combined output).
/// Delegates to mbt_code_gen_multi and concatenates shared + JS FFI.
pub fn mbt_code_gen(emits : Array[Emit]) -> String {
  let multi = mbt_code_gen_multi(emits)
  let buf = StringBuilder::new()
  buf.write_string(multi.shared)
  if multi.js_ffi.length() > 0 {
    buf.write_string("\n\n")
    buf.write_string(multi.js_ffi)
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
        if is_wasm_value_type(mbt_type) {
          // Value types (Bool, Int, Double, etc.) are i32/f64 on wasm-gc, not externref.
          // %identity cannot convert between value types and externref.
          // Delegate to TJsValue::to_js which has backend-specific implementations.
          append_shared(
            "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue { TJsValue::to_js(self) }",
          )
        } else {
          // Externref types (#external, String, JsValue, etc.) can use %identity
          // since they share the same wasm representation on both targets.
          append_shared(
            "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
          )
        }
      Emit::Enum(TypeName(name), variants) =>
        append_shared(render_enum(name, variants))
      Emit::TypedefAlias(TypeName(name), target_type) =>
        append_shared("pub type \{name} = \{target_type}")
      Emit::Const(ConstName(const_name), TypeName(type_name), value) =>
        append_shared("pub const \{const_name}: \{type_name} = \{value}")
      Emit::FileHeader(TypeName(type_name), Specs(specs)) =>
        append_shared(render_file_header(type_name, specs))
      Emit::IsUndefinedMethod(TypeName(type_name)) => {
        append_shared(render_is_undefined_wrapper(type_name))
        append_js(render_is_undefined_ffi_js(type_name))
        append_wasm(render_is_undefined_ffi_wasm(type_name))
      }
      Emit::EmptyMethod(TypeName(type_name)) => {
        append_shared(render_empty_wrapper(type_name))
        append_js(render_empty_ffi_js(type_name))
        append_wasm(render_empty_ffi_wasm(type_name))
      }
      Emit::InterfaceDefinition(interface_def) => {
        append_shared(render_interface_definition_shared(interface_def))
        append_js(render_interface_definition_js_ffi(interface_def))
        append_wasm(render_interface_definition_wasm_ffi(interface_def))
      }
      Emit::NamespaceDefinition(ns_def) => {
        append_shared(render_namespace_definition_shared(ns_def))
        append_js(render_namespace_definition_js_ffi(ns_def))
        append_wasm(render_namespace_definition_wasm_ffi(ns_def))
      }
      Emit::DictionaryCreate(TypeName(type_name), args) => {
        append_shared(render_dictionary_wrapper(type_name, args))
        append_js(render_dictionary_ffi_js(type_name, args))
        append_wasm(render_dictionary_ffi_wasm(type_name, args))
      }
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => {
        append_shared(
          render_constructor_wrapper(constructor_name, type_name, args),
        )
        append_js(render_constructor_ffi_js(constructor_name, type_name, args))
        append_wasm(
          render_constructor_ffi_wasm(constructor_name, type_name, args),
        )
      }
      Emit::Callback(TypeName(name), args, TypeName(return_type)) => {
        // Callback wrapper + FFI are target-specific because wasm-gc needs
        // closure wrapping (can't use %identity to convert closures to externref)
        append_js(render_callback_js(name, args, return_type))
        append_wasm(render_callback_wasm(name, args, return_type))
      }
    }
  }
  MultiTargetCode::{
    shared: shared_buf.to_string(),
    js_ffi: js_buf.to_string(),
    wasm_ffi: wasm_buf.to_string(),
  }
}
