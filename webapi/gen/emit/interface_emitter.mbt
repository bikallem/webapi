///|
pub(all) struct InterfaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
  log_skipped : (String) -> Unit
}

///|
fn typedef_identifier(type_ : @parser.Type) -> String? {
  match type_ {
    Identifier(name) => Some(name)
    Nullable(inner) => typedef_identifier(inner)
    _ => None
  }
}

///|
fn is_union_typedef_arg(
  type_ : @parser.Type,
  type_registry : @type_registry.TypeRegistry,
) -> Bool {
  match typedef_identifier(type_) {
    Some(name) => type_registry.is_union_typedef(name)
    _ => false
  }
}

///|
fn unpack_arguments(
  args : Array[@parser.Argument],
) -> Array[(String, @parser.Type, Bool, Bool)] {
  args.map(arg => (arg.name, arg.type_.type_, arg.optional, arg.variadic))
}

///|
fn make_self_arg() -> @type_mapping.MethodArg {
  @type_mapping.MethodArg::{
    name: "self",
    original_name: "self",
    type_: @type_mapping.ArgMbtType::Self,
    optional: false,
    variadic: false,
  }
}

///|
/// Wrap an ArgMbtType with a trait reference prefix "&T" for Interface, Union, and Other types.
fn to_trait_ref(
  mbt_type : @type_mapping.ArgMbtType,
  is_union_typedef : Bool,
) -> @type_mapping.ArgMbtType {
  match mbt_type {
    Interface(name) => Interface("&T\{name}")
    Union(union_type) => Union({ ..union_type, name: "&T\{union_type.name}" })
    Callback(_) => mbt_type
    Other(name) =>
      if is_union_typedef {
        Other("&T\{name}")
      } else {
        Other(name)
      }
    _ => mbt_type
  }
}

///|
/// Try to resolve a type name to a callback, either directly or via a typedef chain.
/// Returns a Callback ArgMbtType if the name resolves to a callback function definition.
fn try_resolve_callback(
  name : String,
  type_registry : @type_registry.TypeRegistry,
) -> @type_mapping.ArgMbtType? {
  let (cb_name, cb_def) = if type_registry.get_callback_def(name)
    is Some(cb_def) {
    (name, cb_def)
  } else {
    guard type_registry.resolve_typedef_to_callback(name) is Some(result) else {
      return None
    }
    result
  }
  let cb_arg_types = cb_def.arguments.map(fn(a) {
    let (t, _) = arg_mbt_type(a.type_.type_, cb_name, "", a.name, type_registry)
    t.name()
  })
  let (cb_ret, _) = arg_mbt_type(cb_def.return_type, "", "", "", type_registry)
  let cb_args_str = cb_arg_types.join(", ")
  let closure_type = "(\{cb_args_str}) -> \{cb_ret.name()}"
  let ffi_name = "\{@type_mapping.snake_case(cb_name)}_ffi"
  Some(
    @type_mapping.ArgMbtType::Callback(@type_mapping.CallbackArgInfo::{
      name: cb_name,
      closure_type,
      ffi_name,
    }),
  )
}

///|
/// Convert method arguments from IDL to MBT types, collecting any additional emits needed
/// for complex types (e.g., union arg traits).
fn method_args(
  args : Array[(String, @parser.Type, Bool, Bool)],
  interface_name : String,
  method_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[@type_mapping.MethodArg], Array[Emit]) {
  let emits = []
  let mbt_args = []
  for arg in args {
    let (arg_name, type_, optional, variadic) = arg
    let (mbt_type, arg_emits) = arg_mbt_type(
      type_, interface_name, method_name, arg_name, type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    // Convert callback-typed args to Callback variant so the method accepts a closure directly
    let mbt_type = match mbt_type {
      Other(name) =>
        try_resolve_callback(name, type_registry).unwrap_or(mbt_type)
      _ => mbt_type
    }
    let union_typedef_arg = is_union_typedef_arg(type_, type_registry)
    let mbt_type = to_trait_ref(mbt_type, union_typedef_arg)
    let mbt_type = if variadic {
      let inner = if mbt_type.name() == "JsValue" {
        "&TJsValue"
      } else {
        mbt_type.name()
      }
      @type_mapping.ArgMbtType::Other("Array[\{inner}]")
    } else {
      mbt_type
    }
    mbt_args.push(@type_mapping.MethodArg::{
      name: @type_mapping.safe_identifier(arg_name),
      original_name: arg_name,
      type_: mbt_type,
      optional,
      variadic,
    })
  }
  (mbt_args, emits)
}

///|
/// Emit a constructor member, returning emits and the new constructor count.
fn emit_constructor(
  ctor : @parser.ConstructorMember,
  interface_name : String,
  method_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  let (args, arg_emits) = method_args(
    unpack_arguments(ctor.arguments),
    interface_name,
    method_name,
    type_registry,
  )
  let emits = []
  emits
  ..push_iter(arg_emits.iter())
  .push(
    Emit::ConstructorMethod(
      ConstructorName(method_name),
      TypeName(interface_name),
      args,
    ),
  )
  emits
}

///|
/// Emit union return type support (External, ImplTJsValue, ImplFromJsAny, UnionIntoMethod, FromMethod, IsUndefinedMethod, UnionArgTraitImpl).
fn emit_union_return_type(
  return_type : @type_mapping.ArgMbtType,
  emits : Array[Emit],
) -> Unit {
  if return_type is @type_mapping.ArgMbtType::Union({ name, has_undefined, .. }) {
    emits
    ..push(Emit::InlineExternal(name))
    ..push(Emit::ImplTJsValue(name))
    ..push(Emit::ImplFromJsAny(name))
    ..push(Emit::UnionIntoMethod(name))
    .push(Emit::FromMethod(name))
    if has_undefined {
      emits.push(Emit::IsUndefinedMethod(name))
    }
    emits.push(Emit::UnionArgTraitImpl(TypeName(name), TraitName("T\{name}")))
  }
}

///|
/// Emit a regular operation member, returning emits and the interface method.
fn emit_regular_operation(
  op : @parser.RegularOperationMember,
  interface_name : String,
  orig_method_name : String,
  type_registry : @type_registry.TypeRegistry,
  js_name? : String = interface_name,
) -> (Array[Emit], &InterfaceMethodEmit) {
  let emits = []
  let (args, arg_emits) = method_args(
    unpack_arguments(op.arguments),
    interface_name,
    orig_method_name,
    type_registry,
  )
  let args = if op.static_ { args } else { [make_self_arg(), ..args] }
  emits.push_iter(arg_emits.iter())
  let (return_type, return_emits) = arg_mbt_type(
    op.return_type,
    interface_name,
    orig_method_name,
    "",
    type_registry,
  )
  emit_union_return_type(return_type, emits)
  emits.push_iter(return_emits.iter())
  let return_type = @type_mapping.MethodReturn::{
    type_: return_type,
    optional: op.return_type is Nullable(_),
  }
  if op.static_ {
    let meth : &InterfaceMethodEmit = StaticMethodEmit::{
      interface_name,
      js_name,
      method_name: orig_method_name,
      webidl_name: op.name,
      return_type,
      args,
    }
    (emits, meth)
  } else {
    let meth : &InterfaceMethodEmit = RegularMethodEmit::{
      interface_name,
      method_name: orig_method_name,
      webidl_name: op.name,
      return_type,
      args,
    }
    (emits, meth)
  }
}

///|
/// Emit an attribute member, returning emits and interface methods (getter + optional setter).
fn emit_attribute(
  attr : @parser.AttributeMember,
  interface_name : String,
  type_registry : @type_registry.TypeRegistry,
  js_name? : String = interface_name,
) -> (Array[Emit], Array[&InterfaceMethodEmit]) {
  let emits = []
  let methods : Array[&InterfaceMethodEmit] = []
  let (attr_type, attr_emits) = arg_mbt_type(
    attr.type_,
    interface_name,
    attr.name,
    "",
    type_registry,
  )

  emits.push_iter(attr_emits.iter())
  emit_union_return_type(attr_type, emits)

  // Getter method (static or regular)
  if attr.static_ {
    methods.push(StaticAttributeGetMethodEmit::{
      interface_name,
      js_name,
      original_name: attr.name,
      return_type: attr_type.name(),
      is_enum_type: attr_type.is_enum(),
      is_valid_wasm_stub: is_wasm_valid_stub_type(attr_type),
    })
  } else {
    methods.push(AttributeGetMethodEmit::{
      interface_name,
      original_name: attr.name,
      return_type: attr_type.name(),
      is_enum_type: attr_type.is_enum(),
      is_valid_wasm_stub: is_wasm_valid_stub_type(attr_type),
    })

    // Set Attribute method if specified (only for non-static)
    if !attr.is_readonly || attr.is_inherit {
      methods.push(
        emit_attribute_setter(attr, attr_type, interface_name, type_registry),
      )
    }
  }
  (emits, methods)
}

///|
/// Emit the setter portion of an attribute member.
fn emit_attribute_setter(
  attr : @parser.AttributeMember,
  attr_type : @type_mapping.ArgMbtType,
  interface_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> &InterfaceMethodEmit {
  let attr_type = match attr_type {
    Other(name) =>
      try_resolve_callback(name, type_registry).unwrap_or(attr_type)
    _ => attr_type
  }
  let is_union_typedef = is_union_typedef_arg(attr.type_, type_registry)
  let attr_type = to_trait_ref(attr_type, is_union_typedef)
  let args = [
    make_self_arg(),
    @type_mapping.MethodArg::{
      name: @type_mapping.safe_identifier(attr.name),
      original_name: attr.name,
      type_: attr_type,
      optional: false,
      variadic: false,
    },
  ]
  AttributeSetMethodEmit::{ interface_name, original_name: attr.name, args }
}

///|
/// Emit a const member, returning emits.
fn emit_const_member(
  const_val : @parser.ConstMember,
  interface_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  let const_name = ConstName(
    "\{@type_mapping.snake_case(interface_name).to_upper()}_\{@type_mapping.snake_case(const_val.name).to_upper()}",
  )
  let (mbt_type, const_emits) = arg_mbt_type(
    const_val.type_,
    interface_name,
    "",
    const_val.name,
    type_registry,
  )
  let emits = []
  emits
  ..push_iter(const_emits.iter())
  .push(
    Emit::Const(
      const_name,
      TypeName(mbt_type.name()),
      @type_mapping.const_value(const_val.value),
    ),
  )
  emits
}

///|
/// Emit an unnamed special operation member (no method name, uses bracket notation).
/// Creates SpecialOperationMethodEmit for bracket-notation JS.
fn emit_unnamed_special_operation(
  op : @parser.SpecialOperationMember,
  interface_name : String,
  orig_method_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[Emit], &InterfaceMethodEmit) {
  let emits = []
  let (args, arg_emits) = method_args(
    unpack_arguments(op.arguments),
    interface_name,
    orig_method_name,
    type_registry,
  )
  let args = [make_self_arg(), ..args]
  emits.push_iter(arg_emits.iter())
  let (return_type, return_emits) = arg_mbt_type(
    op.return_type,
    interface_name,
    orig_method_name,
    "",
    type_registry,
  )
  emit_union_return_type(return_type, emits)
  emits.push_iter(return_emits.iter())
  // Unnamed getters always return Option — bracket access can yield undefined
  let is_optional = op.special is Getter || op.return_type is Nullable(_)
  let return_type = @type_mapping.MethodReturn::{
    type_: return_type,
    optional: is_optional,
  }
  let meth : &InterfaceMethodEmit = SpecialOperationMethodEmit::{
    interface_name,
    original_name: orig_method_name,
    return_type,
    args,
    special: op.special,
  }
  (emits, meth)
}

///|
pub impl Emitter for InterfaceEmitter with emit(
  self : InterfaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_interface.mbt")
  let interface = self.idl.interfaces[name]
  let ancestors = @flattened_idl.get_interface_ancestors(self.idl, name)
  let emits = []
  emits
  ..push(Emit::FileHeader(TypeName(interface.name), Specs(interface.specs)))
  ..push(Emit::External(interface.name))
  ..push(Emit::ImplTJsValue(interface.name))
  ..push(Emit::ImplFromJsAny(interface.name))
  ..push(Emit::IntoMethod(interface.name))
  ..push(Emit::ImplHasConstructor(interface.name))
  ..push(Emit::TryIntoMethod(interface.name))
  .push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }
  let interface_methods : Array[&InterfaceMethodEmit] = []
  let constructor_namer = OverloadNamer::new()
  let method_namer = OverloadNamer::new()
  for members = interface.members.map(mem => mem.interface_member)[:] {
    match members {
      [] => break
      [Constructor(ctor), .. rest] => {
        let method_name = constructor_namer.next("new", ctor.arguments)
        let ctor_emits = emit_constructor(
          ctor,
          interface.name,
          method_name,
          self.type_registry,
        )
        emits.push_iter(ctor_emits.iter())
        continue rest
      }
      [RegularOperation(op), .. rest] if op.name.contains("-") => continue rest
      [Attribute(attr), .. rest] if attr.name.contains("-") => continue rest
      [RegularOperation(op), .. rest] => {
        let orig_method_name = method_namer.next(op.name, op.arguments)
        let (op_emits, meth) = emit_regular_operation(
          op,
          interface.name,
          orig_method_name,
          self.type_registry,
        )
        emits.push_iter(op_emits.iter())
        interface_methods.push(meth)
        continue rest
      }
      [Attribute(attr), .. rest] => {
        if attr.static_ && !attr.is_readonly && !attr.is_inherit {
          continue rest
        }
        let (attr_emits, attr_methods) = emit_attribute(
          attr,
          interface.name,
          self.type_registry,
        )
        emits.push_iter(attr_emits.iter())
        interface_methods.push_iter(attr_methods.iter())
        continue rest
      }
      [Const(const_val), .. rest] => {
        let const_emits = emit_const_member(
          const_val,
          interface.name,
          self.type_registry,
        )
        emits.push_iter(const_emits.iter())
        continue rest
      }
      // Named special operations → treat as regular methods
      [SpecialOperation(op), .. rest] if op.name is Some(_) => {
        let name = op.name.unwrap()
        let orig_method_name = method_namer.next(name, op.arguments)
        let regular_op : @parser.RegularOperationMember = {
          name,
          return_type: op.return_type,
          arguments: op.arguments,
          static_: false,
        }
        let (op_emits, meth) = emit_regular_operation(
          regular_op,
          interface.name,
          orig_method_name,
          self.type_registry,
        )
        emits.push_iter(op_emits.iter())
        interface_methods.push(meth)
        continue rest
      }
      // Unnamed special operations → bracket notation with synthetic names
      [SpecialOperation(op), .. rest] => {
        let base_name = op.special.base_name()
        let orig_method_name = method_namer.next(base_name, op.arguments)
        let (op_emits, meth) = emit_unnamed_special_operation(
          op,
          interface.name,
          orig_method_name,
          self.type_registry,
        )
        emits.push_iter(op_emits.iter())
        interface_methods.push(meth)
        continue rest
      }
      [
        Setlike(_)
        | Maplike(_)
        | AsyncIterable(_)
        | Iterable(_)
        | Stringifier(Bare) as mem,
        .. rest,
      ] => {
        let member_type = match mem {
          Setlike(_) => "Setlike"
          Maplike(_) => "Maplike"
          AsyncIterable(_) => "AsyncIterable"
          Iterable(_) => "Iterable"
          Stringifier(Bare) => "Stringifier(Bare)"
          _ => "Unknown"
        }
        (self.log_skipped)(
          "Skipped \{member_type} in interface \{interface.name}",
        )
        continue rest
      }
    }
  }
  let parent_trait = match interface.inheritance {
    None => "TJsValue"
    Some(parent) => "T\{parent}"
  }
  emits.push(
    Emit::InterfaceDefinition(InterfaceDef::{
      trait_name: interface.name,
      parent_trait,
      methods: interface_methods,
    }),
  )
  (filename, emits)
}
