// CG - Code Generation IR

///|
struct MethodEmit {
  type_name : String
  method_name : String
  return_type : @parser.Type
  args : Array[ArgumentEmit]
  calls_ffi : Bool // whether this method calls an FFI function
}

///|
struct ArgumentEmit {
  name : String
  optional : Bool
  type_ : @parser.Type
  default_value : @parser.DefaultValue?
}

///|
/// External type codegen info. Always implements TJSValue
struct ExternalTypeEmit {
  type_name : String
  implements_trait : Bool // whether this type implements a trait of the T+type_name
}

///|
/// Trait method signature in a trait definition
struct TraitMethodEmit {
  method_name : String
  return_type : String // Already resolved MoonBit type string
  args : String // Already formatted argument list
  is_static : Bool
}

///|
/// Trait definition emission
struct TraitEmit {
  trait_name : String // e.g., "TEventTarget"
  parent_trait : String? // Inheritance: e.g., "TJsValue" or "TNode"
  methods : Array[TraitMethodEmit]
}

///|
/// Container for all interface-related emissions
pub struct InterfaceEmit {
  name : String
  external_type : ExternalTypeEmit
  trait_def : TraitEmit
}

///|
pub enum Emit {
  ExternalType(ExternalTypeEmit)
  Method(MethodEmit)
}

///|
pub fn emit_interface2(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> Array[Emit] {
  let result = []

  // External type
  result.push(
    Emit::ExternalType({ type_name: interface.name, implements_trait: true }),
  )

  // Methods
  for mem in interface.members {
    match mem.interface_member {
      RegularOperation(op) => {
        let args = op.arguments.map(arg => ArgumentEmit::{
          name: arg.name,
          optional: arg.optional,
          type_: arg.type_.type_,
          default_value: arg.default_value,
        })
        result.push(
          Emit::Method(MethodEmit::{
            type_name: interface.name,
            method_name: op.name,
            return_type: op.return_type,
            args,
            calls_ffi: true,
          }),
        )
      }
      _ => ()
    }
  }
  result
}

///|
pub fn emit_all_interfaces2(
  flattened_idl : FlattenedIdl,
  type_registry : TypeRegistry,
) -> Map[String, String] {
  let result = {}
  for name, interface in flattened_idl.interfaces {
    let filename = "\{to_snake_case(name)}_interface.mbt"
    result[filename] = emit_interface(interface, type_registry)
  }
  result
}
