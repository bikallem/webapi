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

  // Build trait methods and collect union arg traits, attributes, and operations
  let methods : Array[TraitMethodEmit] = []
  let union_arg_traits : Array[UnionArgTraitEmit] = []
  let attributes : Array[AttributeEmit] = []
  let operations : Array[MethodEmit] = []
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

        // Build MethodEmit for FFI/impl generation
        let ffi_args = emit_ffi_arguments(
          op.arguments,
          op.static_,
          type_registry,
        )
        let ffi_call_args = emit_ffi_call_arguments(
          op.arguments,
          op.name,
          op.static_,
          type_registry,
        )
        operations.push(MethodEmit::{
          interface_name: name,
          original_name: op.name,
          method_name,
          return_type,
          args,
          ffi_args,
          ffi_call_args,
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
      Attribute(attr) => {
        let method_name = safe_identifier(attr.name)
        let mbt_type = to_mbt_type_string(attr.type_, type_registry)
        // Build AttributeEmit for FFI/impl generation
        attributes.push(AttributeEmit::{
          interface_name: name,
          attr_name: attr.name,
          method_name,
          mbt_type,
          is_readonly: attr.is_readonly,
        })
        // Getter trait method signature
        methods.push(TraitMethodEmit::{
          method_name,
          return_type: mbt_type,
          args: "",
          is_static: attr.static_,
        })
        // Setter trait method signature (if not readonly)
        if not(attr.is_readonly) {
          methods.push(TraitMethodEmit::{
            method_name: "set_\{method_name}",
            return_type: "Unit",
            args: "value : \{mbt_type}",
            is_static: attr.static_,
          })
        }
      }
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
    attributes,
    operations,
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

  // Emit attribute FFI functions and trait default implementations
  for attr in emit.attributes {
    // Getter FFI
    buf.write_string("\n\n")
    buf.write_string(
      emit_attribute_getter_ffi(
        attr.interface_name,
        attr.attr_name,
        attr.mbt_type,
      ),
    )
    // Getter impl
    buf.write_string("\n\n")
    buf.write_string(
      emit_attribute_getter_impl(
        attr.interface_name,
        attr.attr_name,
        attr.method_name,
        attr.mbt_type,
      ),
    )
    // Setter FFI and impl (if not readonly)
    if not(attr.is_readonly) {
      buf.write_string("\n\n")
      buf.write_string(
        emit_attribute_setter_ffi(
          attr.interface_name,
          attr.attr_name,
          attr.mbt_type,
        ),
      )
      buf.write_string("\n\n")
      buf.write_string(
        emit_attribute_setter_impl(
          attr.interface_name,
          attr.attr_name,
          "set_\{attr.method_name}",
          attr.mbt_type,
        ),
      )
    }
  }

  // Emit method FFI functions and trait default implementations
  for op in emit.operations {
    // Method FFI
    buf.write_string("\n\n")
    buf.write_string(emit_method_ffi(op))
    // Method impl
    buf.write_string("\n\n")
    buf.write_string(emit_method_impl(op))
  }
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
/// Generate FFI argument list for method 
/// e.g., "obj : JsValue, type_ : JsValue, callback : JsValue"
fn emit_ffi_arguments(
  arguments : Array[@parser.Argument],
  is_static : Bool,
  _type_registry : TypeRegistry,
) -> String {
  let arg_strs = arguments.map(fn(arg) {
    "\{safe_identifier(arg.name)} : JsValue"
  })

  // Static methods don't have obj parameter
  if is_static {
    if arg_strs.is_empty() {
      ""
    } else {
      arg_strs.join(", ")
    }
  } else if arg_strs.is_empty() {
    "obj : JsValue"
  } else {
    let joined = arg_strs.join(", ")
    "obj : JsValue, \{joined}"
  }
}

///|
/// Generate FFI call arguments for method
/// e.g., "self.to_js(), TJsValue::to_js(type_), callback.to_js()"
fn emit_ffi_call_arguments(
  arguments : Array[@parser.Argument],
  method_name : String,
  is_static : Bool,
  type_registry : TypeRegistry,
) -> String {
  let arg_strs = arguments.map(fn(arg) {
    let arg_name = safe_identifier(arg.name)
    let arg_type = arg_type_to_string(
      arg.type_.type_,
      method_name,
      arg.name,
      type_registry,
    )
    // For trait objects, use the trait's to_js method
    if arg_type.has_prefix("&") {
      "\{arg_name}.to_js()"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })

  // Static methods don't have self.to_js() prefix
  if is_static {
    if arg_strs.is_empty() {
      ""
    } else {
      arg_strs.join(", ")
    }
  } else if arg_strs.is_empty() {
    "self.to_js()"
  } else {
    let joined = arg_strs.join(", ")
    "self.to_js(), \{joined}"
  }
}

///|
/// Emit FFI function for a method
fn emit_method_ffi(op : MethodEmit) -> String {
  let ffi_name = ffi_method_name(op.interface_name, op.original_name)
  let ffi_module = ffi_module_name(op.interface_name)
  let ffi_return = if is_ffi_safe_type(op.return_type) {
    op.return_type
  } else {
    "JsValue"
  }
  "///|\nfn \{ffi_name}(\{op.ffi_args}) -> \{ffi_return} = \"\{ffi_module}\" \"\{op.original_name}\""
}

///|
/// Emit trait default implementation for a method
fn emit_method_impl(op : MethodEmit) -> String {
  let ffi_name = ffi_method_name(op.interface_name, op.original_name)
  let trait_name = "T\{op.interface_name}"
  let ffi_call = "\{ffi_name}(\{op.ffi_call_args})"
  let body = if is_ffi_safe_type(op.return_type) {
    ffi_call
  } else if op.return_type == "Unit" {
    ffi_call
  } else {
    "\{ffi_call}.unsafe_cast()"
  }
  // Static methods don't have self parameter
  let method_sig = if op.is_static {
    if op.args.is_empty() {
      "\{op.method_name}()"
    } else {
      "\{op.method_name}(\{op.args})"
    }
  } else if op.args.is_empty() {
    "\{op.method_name}(self : Self)"
  } else {
    "\{op.method_name}(self : Self, \{op.args})"
  }
  "///|\nimpl \{trait_name} with \{method_sig} -> \{op.return_type} {\n  \{body}\n}"
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
