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

//============================ Code generator ===========================

///|
/// Generate MoonBit code from Emit array for js backend
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
      Emit::IsUndefinedMethod(TypeName(type_name)) => {
        let ffi_name = "\{@type_mapping.snake_case(type_name)}_is_undefined_ffi"
        buf
        ..write_string(
          "extern \"js\" fn \{ffi_name}(obj : \{type_name}) -> Bool = \"(obj) => obj === undefined\"",
        )
        ..write_string("\n\n")
        .write_string(
          "pub fn \{type_name}::is_undefined(self : \{type_name}) -> Bool { \{ffi_name}(self) }",
        )
      }
      Emit::EmptyMethod(TypeName(type_name)) => {
        let ffi_name = "\{@type_mapping.snake_case(type_name)}_empty_ffi"
        buf
        ..write_string(
          "extern \"js\" fn \{ffi_name}() -> \{type_name} = \"() => {}\"",
        )
        ..write_string("\n\n")
        .write_string(
          "pub fn \{type_name}::empty() -> \{type_name} { \{ffi_name}() }",
        )
      }
      Emit::ImplTrait(TypeName(type_name), TraitName(trait_name)) =>
        buf.write_string("pub impl \{trait_name} for \{type_name}")
      Emit::InterfaceDefinition(interface_def) => {
        let mdn_url = mdn_interface_url(interface_def.trait_name)
        buf
        ..write_string(
          "/// [\{interface_def.trait_name}](\{mdn_url}) interface.\n",
        )
        .write_string(
          "pub trait T\{interface_def.trait_name}: \{interface_def.parent_trait} {\n",
        )
        // Emit trait method declarations
        let trait_defs = interface_def.methods
          .filter_map(meth => {
            match meth.decl_emit() {
              Code("") => None
              Code(code) => Some(code)
            }
          })
          .join("\n")
        buf..write_string(trait_defs)..write_string("\n}").write_string("\n\n")

        // Emit default trait method implementations
        let default_trait_impls = interface_def.methods
          .map(meth => meth.impl_emit().0)
          .join("\n\n")
        buf.write_string(default_trait_impls)
      }
      Emit::UnionArgTrait(TraitName(trait_name)) =>
        buf
        ..write_string("pub(open) trait \{trait_name} {\n")
        ..write_string("  to_js(self : Self) -> JsValue\n")
        .write_string("}")
      Emit::UnionArgTraitImpl(TypeName(mbt_type), TraitName(trait_name)) =>
        buf.write_string(
          "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
        )
      Emit::DictionaryCreate(TypeName(type_name), args) => {
        // Emit FFI function
        let ffi_name = "\{@type_mapping.snake_case(type_name)}_ffi"
        let ffi_args = args
          .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
          .join(", ")
        let ffi_js_args = args.map(arg => arg.original_name).join(", ")

        // FFI function body
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
        buf
        ..write_string("#|  return obj;\n")
        ..write_string("#|}")
        .write_string("\n\n")

        // Emit new() method
        let method_args = trait_method_impl_args(args)
        buf.write_string(
          "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n",
        )
        let call_args = func_call_args(args)
        buf..write_string("  \{ffi_name}(\{call_args})\n").write_string("}")
      }
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => {
        // Emit FFI function
        let ffi_name = "\{@type_mapping.snake_case(type_name)}_\{@type_mapping.snake_case(constructor_name)}_ffi"
        let ffi_args = args
          .map(arg => "\{@type_mapping.safe_identifier(arg.name)}: JsValue")
          .join(", ")
        let ffi_js_args = args.map(arg => arg.name).join(", ")
        buf
        ..write_string(
          "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"(\{ffi_js_args}) => new \{type_name}(\{ffi_js_args})\"",
        )
        .write_string("\n\n")
        let method_args = trait_method_impl_args(args)
        buf.write_string(
          "pub fn \{type_name}::\{constructor_name}(\{method_args}) -> \{type_name} {\n",
        )
        let call_args = func_call_args(args)
        buf..write_string("  \{ffi_name}(\{call_args})\n").write_string("}")
      }
      Emit::Enum(TypeName(name), variants) => {
        // Emit enum type definition
        buf.write_string("pub(all) enum \{name} {\n")
        for variant in variants {
          buf.write_string("  \{variant.variant_name}\n")
        }
        buf
        ..write_string("} derive(Eq,Show)")
        ..write_string("\n\n")

        // Emit TJsValue impl
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

        // Emit from method
        ..write_string("pub fn \{name}::from(value: String) -> \{name}? {\n")
        .write_string("  match value {\n")
        for variant in variants {
          buf.write_string(
            "    \"\{variant.original_value}\" => Some(\{name}::\{variant.variant_name})\n",
          )
        }
        buf
        ..write_string("    _ => None\n")
        ..write_string("  }\n")
        .write_string("}")
      }
      Emit::TypedefAlias(TypeName(name), target_type) =>
        buf.write_string("pub type \{name} = \{target_type}")
      Emit::Callback(TypeName(name), args, TypeName(return_type)) => {
        // Build closure type signature: (ArgType1, ArgType2) -> ReturnType
        let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
        let closure_type = "(\{arg_types}) -> \{return_type}"
        let ffi_name = "\{@type_mapping.snake_case(name)}_ffi"

        // FFI function - callbacks just pass the function through
        buf
        ..write_string(
          "extern \"js\" fn \{ffi_name}(f : \{closure_type}) -> \{name} = \"(f) => f\"",
        )
        ..write_string("\n\n")

        // Constructor from MoonBit closure
        .write_string(
          "pub fn \{name}::new(f : \{closure_type}) -> \{name} { \{ffi_name}(f) }",
        )
      }
      Emit::Const(ConstName(const_name), TypeName(type_name), value) =>
        buf.write_string("pub const \{const_name}: \{type_name} = \{value}")
      Emit::FileHeader(TypeName(type_name), Specs(specs)) => {
        buf.write_string("// Do not edit. This file is generated.\n")
        buf.write_string("// MoonBit type: \{type_name}\n")
        if !specs.is_empty() {
          let specs_list = specs.to_array().join(", ")
          buf.write_string("// Specifications: \{specs_list}")
        }
      }
    }
    if i < emits.length() - 1 {
      buf.write_string("\n\n")
    }
  }
  buf.to_string()
}
