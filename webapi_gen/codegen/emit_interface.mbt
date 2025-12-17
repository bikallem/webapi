///|
pub fn emit_interface(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> String {
  let emit = interface_to_emit(interface, type_registry)
  emit_from_interface_emit(emit)
}

///|
/// Map interface to DSL representation
fn interface_to_emit(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> InterfaceEmit {
  let name = interface.name

  // Build trait methods and collect union arg traits
  let methods : Array[TraitMethodEmit] = []
  let union_arg_traits : Array[UnionArgTraitEmit] = []
  let seen_union_traits : @hashset.HashSet[String] = @hashset.new()
  for mem in interface.members {
    match mem.interface_member {
      Setlike(_) => ()
      Maplike(_) => ()
      AsyncIterable(_) => ()
      Iterable(_) => ()
      Constructor(_) => ()
      SpecialOperation(_) => ()
      RegularOperation(op) => {
        let method_name = safe_identifier(op.name)
        let return_type = to_mbt_type_string(op.return_type, type_registry)
        let args = emit_method_arguments(op.arguments, op.name, type_registry)
        methods.push(TraitMethodEmit::{
          method_name,
          return_type,
          args,
          is_static: op.static_,
        })

        // Collect union arg traits from method parameters
        for arg in op.arguments {
          match arg.type_.type_ {
            Union(members) => {
              let trait_name = get_union_arg_trait_name(op.name, arg.name)
              if not(seen_union_traits.contains(trait_name)) {
                let member_types = filter_union_members(members, type_registry)
                if member_types.length() > 1 {
                  seen_union_traits.add(trait_name)
                  union_arg_traits.push(UnionArgTraitEmit::{
                    trait_name,
                    member_types,
                  })
                }
              }
            }
            Nullable(Union(members)) => {
              let trait_name = get_union_arg_trait_name(op.name, arg.name)
              if not(seen_union_traits.contains(trait_name)) {
                let member_types = filter_union_members(members, type_registry)
                if member_types.length() > 1 {
                  seen_union_traits.add(trait_name)
                  union_arg_traits.push(UnionArgTraitEmit::{
                    trait_name,
                    member_types,
                  })
                }
              }
            }
            _ => ()
          }
        }
      }
      Attribute(_) => ()
      Const(_) => ()
      Stringifier(_) => ()
    }
  }

  // Determine parent trait
  let parent_trait = match interface.inheritance {
    None => None
    Some(parent) => Some("TJsValue + T\{trait_name(parent)}")
  }

  // Find first constructor if any
  let ctor : ConstructorEmit? = interface.members
    .iter()
    .find_first(mem => mem.interface_member is Constructor(_))
    .map(mem => match mem.interface_member {
      Constructor(ctor_member) => {
        let args = emit_method_arguments(
          ctor_member.arguments,
          "new",
          type_registry,
        )
        ConstructorEmit::{
          type_name: name,
          args,
          ffi_module: ffi_module_name(name),
        }
      }
      _ => panic()
    })
  InterfaceEmit::{
    name,
    external_type: ExternalTypeEmit::{ type_name: name, implements_trait: true },
    trait_def: TraitEmit::{
      trait_name: trait_name(name),
      parent_trait,
      methods,
    },
    ctor,
    union_arg_traits,
  }
}

///|
/// Emit MoonBit code from InterfaceEmit DSL
fn emit_from_interface_emit(emit : InterfaceEmit) -> String {
  let buf = StringBuilder::new()
  let name = emit.name
  let type_name = emit.external_type.type_name

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for \{name} interface\n")
  buf.write_string("// Do not edit manually\n\n")

  // Emit external type declaration
  buf.write_string(emit_external_type(type_name))
  buf.write_string("\n\n")

  // Emit TJSValue implementation
  buf.write_string(emit_external_type_tjs_impl(type_name))
  buf.write_string("\n\n")

  // Emit into method
  buf.write_string(
    "pub fn[T: \{emit.trait_def.trait_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
  )
  buf.write_string("\n")

  // Emit trait implementation if required
  if emit.external_type.implements_trait {
    buf.write_string("pub impl \{emit.trait_def.trait_name} for \{type_name}")
  }

  // Emit constructor new() method if present
  match emit.ctor {
    Some(ctor) => {
      buf.write_string("\n\n")
      if ctor.args.is_empty() {
        buf.write_string(
          "pub fn \{ctor.type_name}::new() -> \{ctor.type_name} = \"\{ctor.ffi_module}\" \"new\"",
        )
      } else {
        buf.write_string(
          "pub fn \{ctor.type_name}::new(\{ctor.args}) -> \{ctor.type_name} = \"\{ctor.ffi_module}\" \"new\"",
        )
      }
    }
    None => ()
  }

  // Emit union arg traits
  for union_trait in emit.union_arg_traits {
    buf.write_string("\n\n")
    buf.write_string(emit_union_arg_trait(union_trait))
  }

  // Emit trait definition
  buf.write_string("\n\n")
  buf.write_string(emit_trait_from_dsl(emit.trait_def))
  buf.to_string()
}

///|
/// Emit a single union arg trait definition and implementations
fn emit_union_arg_trait(union_trait : UnionArgTraitEmit) -> String {
  let buf = StringBuilder::new()

  // Emit trait definition
  buf.write_string("/// Union arg trait\n")
  buf.write_string("pub(open) trait \{union_trait.trait_name} {\n")
  buf.write_string("  to_js(self : Self) -> JsValue\n")
  buf.write_string("}")

  // Emit impl for each member type
  for member_type in union_trait.member_types {
    buf.write_string("\n\n")
    buf.write_string(
      "pub impl \{union_trait.trait_name} for \{member_type} with to_js(self : \{member_type}) -> JsValue = \"%identity\"",
    )
  }
  buf.to_string()
}

///|
/// Emit trait definition from TraitEmit DSL
fn emit_trait_from_dsl(trait_def : TraitEmit) -> String {
  let buf = StringBuilder::new()

  // trait header with inheritance
  match trait_def.parent_trait {
    None => buf.write_string("pub trait \{trait_def.trait_name}: TJSValue {\n")
    Some(parent) =>
      buf.write_string("pub trait \{trait_def.trait_name}: \{parent} {\n")
  }

  // emit method signatures
  for meth in trait_def.methods {
    if meth.is_static {
      buf.write_string(
        "  \{meth.method_name}(\{meth.args}) -> \{meth.return_type}",
      )
    } else if meth.args.is_empty() {
      buf.write_string(
        "  \{meth.method_name}(self: Self) -> \{meth.return_type}",
      )
    } else {
      buf.write_string(
        "  \{meth.method_name}(self: Self, \{meth.args}) -> \{meth.return_type}",
      )
    }
    buf.write_string(" = _\n")
  }
  buf.write_string("}")
  buf.to_string()
}

///|
fn trait_name(type_name : String) -> String {
  "T\{type_name}"
}

///|
fn emit_method_arguments(
  arguments : Array[@parser.Argument],
  method_name : String,
  type_registry : TypeRegistry,
) -> String {
  let args = arguments
    .map(arg => {
      let optional = if arg.optional { "?" } else { "" }
      let arg_type = arg_type_to_string(
        arg.type_.type_,
        method_name,
        arg.name,
        type_registry,
      )
      "\{safe_identifier(arg.name)}\{optional} : \{arg_type}"
    })
    .join(", ")
  args
}

///|
/// Map argument type, using trait objects for union types
fn arg_type_to_string(
  idl_type : @parser.Type,
  method_name : String,
  param_name : String,
  type_registry : TypeRegistry,
) -> String {
  match idl_type {
    Union(members) => {
      let filtered = filter_union_members(members, type_registry)
      if filtered.length() > 1 {
        // Multi-member union: use trait object
        "&\{get_union_arg_trait_name(method_name, param_name)}"
      } else if filtered.length() == 1 {
        // Collapsed union: use single type
        filtered[0]
      } else {
        "JsValue"
      }
    }
    Nullable(inner) =>
      arg_type_to_string(inner, method_name, param_name, type_registry)
    _ => to_mbt_type_string(idl_type, type_registry)
  }
}

///|
pub fn emit_all_interfaces(
  flattened_idl : FlattenedIdl,
  type_registry : TypeRegistry,
) -> Map[String, String] {
  let result : Map[String, String] = {}
  for name, interface in flattened_idl.interfaces {
    let filename = "\{to_snake_case(name)}.mbt"
    result[filename] = emit_interface(interface, type_registry)
  }
  result
}
