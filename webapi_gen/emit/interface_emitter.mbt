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
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> Bool {
  match typedef_identifier(type_) {
    Some(name) if type_registry.is_typedef(name) =>
      match idl.typedefs.get(name) {
        Some(td) => td.type_ is Union(_)
        None => false
      }
    _ => false
  }
}

///|
/// Convert method arguments from IDL to MBT types, collecting any additional emits needed
/// for complex types (e.g., union arg traits).
fn method_args(
  args : Array[(String, @parser.Type, Bool, @parser.DefaultValue?, Bool)],
  interface_name : String,
  method_name : String,
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[@type_mapping.MethodArg], Array[Emit]) {
  let emits = []
  let mbt_args = []
  for arg in args {
    let (arg_name, type_, optional, default_value, variadic) = arg
    let (mbt_type, arg_emits) = arg_mbt_type(
      type_, interface_name, method_name, arg_name, type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    let default_value = default_value.map(dv => mbt_default_value(dv, mbt_type))
    let union_typedef_arg = is_union_typedef_arg(type_, idl, type_registry)
    let mbt_type = match mbt_type {
      @type_mapping.ArgMbtType::Interface(name) =>
        @type_mapping.ArgMbtType::Interface("&T\{name}")
      @type_mapping.ArgMbtType::Union(union_type) => {
        let union_type = { ..union_type, name: "&T\{union_type.name}" }
        @type_mapping.ArgMbtType::Union(union_type)
      }
      @type_mapping.ArgMbtType::Other(name) =>
        if union_typedef_arg {
          @type_mapping.ArgMbtType::Other("&T\{name}")
        } else {
          @type_mapping.ArgMbtType::Other(name)
        }
      _ => mbt_type
    }
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
      default_value,
    })
  }
  (mbt_args, emits)
}

///|
fn mbt_default_value(
  default_value : @parser.DefaultValue,
  arg_type : @type_mapping.ArgMbtType,
) -> String {
  match default_value {
    String(s) =>
      if arg_type is Enum(name) {
        // For enum types, convert string to enum variant
        let enum_variant = enum_variant(s)
        "\{name}::\{enum_variant}"
      } else {
        "\"\{s}\""
      }
    ConstValue(Boolean(b)) => b
    ConstValue(Integer(i)) =>
      match arg_type {
        @type_mapping.ArgMbtType::Union({ options, .. }) =>
          if options
            .iter()
            .find_first(it => {
              match it {
                Primitive("Int")
                | Primitive("Int64")
                | Primitive("UInt")
                | Primitive("UInt64") => true
                _ => false
              }
            })
            is Some(t) {
            "(\{i}: \{t.name()})"
          } else if options
            .iter()
            .any(it => it is @type_mapping.ArgMbtType::Primitive("Double")) {
            "(\{i} : Double)"
          } else if options
            .iter()
            .any(it => it is @type_mapping.ArgMbtType::Primitive("Float")) {
            "(\{i} : Float)"
          } else {
            i
          }
        _ => "(\{i}: \{arg_type.name()})"
      }
    ConstValue(Float(_) as f) => {
      let f = @type_mapping.const_value(f)
      match arg_type {
        @type_mapping.ArgMbtType::Union({ options, .. }) =>
          if options
            .iter()
            .find_first(it => {
              match it {
                Primitive("Float") | Primitive("Double") => true
                _ => false
              }
            })
            is Some(t) {
            "(\{f}: \{t.name()})"
          } else {
            abort("No suitable float type in union for default value \{f}")
          }
        _ => "(\{f}: \{arg_type.name()})"
      }
    }
    Null => "JsValue::null()"
    EmptyObject =>
      // if arg_type is a union, find a first dictionary type to call empty()
      if arg_type is Union({ options, .. }) {
        if options
          .iter()
          .find_first(it => {
            match it {
              Dictionary(_) => true
              _ => false
            }
          })
          is Some(t) {
          "\{t.name()}::empty()"
        } else {
          abort(
            "No suitable interface type in union for default value EmptyObject",
          )
        }
      } else {
        "\{arg_type.name()}::empty()"
      }
    EmptySequence =>
      match arg_type {
        @type_mapping.ArgMbtType::Union({ options, .. }) =>
          if options
            .iter()
            .find_first(fn(it) { it.name().has_prefix("Array[") })
            is Some(t) {
            "([] : \{t.name()})"
          } else {
            "[]"
          }
        _ => "[]"
      }
    Undefined => "JsUndefined::undefined()"
  }
}

///|
fn has_hyphen(name : String) -> Bool {
  for c in name {
    if c == '-' {
      return true
    }
  }
  false
}

///|
test "has_hyphen identifies names with hyphens correctly" {
  inspect(has_hyphen("my-method"), content="true")
  inspect(has_hyphen("myMethod"), content="false")
  inspect(has_hyphen("method-name-with-hyphens"), content="true")
  inspect(has_hyphen("method_name_with_underscores"), content="false")
  inspect(has_hyphen("simplemethod"), content="false")
}

///|
/// Emit a constructor member, returning emits and the new constructor count.
fn emit_constructor(
  ctor : @parser.ConstructorMember,
  interface_name : String,
  constructor_count : Int,
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[Emit], Int) {
  let method_name = if constructor_count == 0 {
    "new"
  } else {
    "new_\{constructor_count+1}"
  }
  let (args, arg_emits) = method_args(
    ctor.arguments.map(arg => {
      (arg.name, arg.type_.type_, arg.optional, arg.default_value, arg.variadic)
    }),
    interface_name,
    method_name,
    idl,
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
  (emits, constructor_count + 1)
}

///|
/// Emit union return type support (External, IntoMethod, IsUndefinedMethod, UnionArgTraitImpl).
fn emit_union_return_type(
  return_type : @type_mapping.ArgMbtType,
  emits : Array[Emit],
) -> Unit {
  if return_type is @type_mapping.ArgMbtType::Union({ name, has_undefined, .. }) {
    emits..push(Emit::External(name)).push(Emit::IntoMethod(name))
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
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
  js_name? : String = interface_name,
) -> (Array[Emit], &InterfaceMethodEmit) {
  let emits = []
  let (args, arg_emits) = method_args(
    op.arguments.map(arg => {
      (arg.name, arg.type_.type_, arg.optional, arg.default_value, arg.variadic)
    }),
    interface_name,
    orig_method_name,
    idl,
    type_registry,
  )
  let args = if op.static_ {
    args
  } else {
    let self_arg = @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
      default_value: None,
    }
    [self_arg, ..args]
  }
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
      original_name: orig_method_name,
      return_type,
      args,
    }
    (emits, meth)
  } else {
    let meth : &InterfaceMethodEmit = RegularMethodEmit::{
      interface_name,
      original_name: orig_method_name,
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
  idl : @flattened_idl.FlattenedIdl,
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

  // For static attributes, push attr_emits before union handling
  if attr.static_ {
    emits.push_iter(attr_emits.iter())
  }
  emit_union_return_type(attr_type, emits)
  emits.push_iter(attr_emits.iter())

  // Getter method (static or regular)
  if attr.static_ {
    methods.push(StaticAttributeGetMethodEmit::{
      interface_name,
      js_name,
      original_name: attr.name,
      return_type: attr_type.name(),
    })
  } else {
    methods.push(AttributeGetMethodEmit::{
      interface_name,
      original_name: attr.name,
      return_type: attr_type.name(),
    })

    // Set Attribute method if specified (only for non-static)
    if !attr.is_readonly || attr.is_inherit {
      let union_typedef_attr = is_union_typedef_arg(
        attr.type_,
        idl,
        type_registry,
      )
      let attr_type = match attr_type {
        @type_mapping.ArgMbtType::Interface(name) =>
          @type_mapping.ArgMbtType::Interface("&T\{name}")
        @type_mapping.ArgMbtType::Union(union_type) => {
          let union_type = { ..union_type, name: "&T\{union_type.name}" }
          @type_mapping.ArgMbtType::Union(union_type)
        }
        @type_mapping.ArgMbtType::Other(name) =>
          if union_typedef_attr {
            @type_mapping.ArgMbtType::Other("&T\{name}")
          } else {
            @type_mapping.ArgMbtType::Other(name)
          }
        _ => attr_type
      }
      let args = [
        @type_mapping.MethodArg::{
          name: "self",
          original_name: "self",
          type_: @type_mapping.ArgMbtType::Self,
          optional: false,
          variadic: false,
          default_value: None,
        },
        @type_mapping.MethodArg::{
          name: @type_mapping.safe_identifier(attr.name),
          original_name: attr.name,
          type_: attr_type,
          optional: false,
          variadic: false,
          default_value: None,
        },
      ]
      methods.push(AttributeSetMethodEmit::{
        interface_name,
        original_name: attr.name,
        args,
      })
    }
  }
  (emits, methods)
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
/// Emit a named special operation member (has explicit method name).
/// Reuses RegularMethodEmit since named special ops are structurally identical to regular methods.
fn emit_special_operation(
  op : @parser.SpecialOperationMember,
  interface_name : String,
  orig_method_name : String,
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[Emit], &InterfaceMethodEmit) {
  let emits = []
  let (args, arg_emits) = method_args(
    op.arguments.map(arg => {
      (arg.name, arg.type_.type_, arg.optional, arg.default_value, arg.variadic)
    }),
    interface_name,
    orig_method_name,
    idl,
    type_registry,
  )
  let self_arg = @type_mapping.MethodArg::{
    name: "self",
    original_name: "self",
    type_: @type_mapping.ArgMbtType::Self,
    optional: false,
    variadic: false,
    default_value: None,
  }
  let args = [self_arg, ..args]
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
  let meth : &InterfaceMethodEmit = RegularMethodEmit::{
    interface_name,
    original_name: orig_method_name,
    return_type,
    args,
  }
  (emits, meth)
}

///|
/// Emit an unnamed special operation member (no method name, uses bracket notation).
/// Creates SpecialOperationMethodEmit for bracket-notation JS.
fn emit_unnamed_special_operation(
  op : @parser.SpecialOperationMember,
  interface_name : String,
  orig_method_name : String,
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[Emit], &InterfaceMethodEmit) {
  let emits = []
  let (args, arg_emits) = method_args(
    op.arguments.map(arg => {
      (arg.name, arg.type_.type_, arg.optional, arg.default_value, arg.variadic)
    }),
    interface_name,
    orig_method_name,
    idl,
    type_registry,
  )
  let self_arg = @type_mapping.MethodArg::{
    name: "self",
    original_name: "self",
    type_: @type_mapping.ArgMbtType::Self,
    optional: false,
    variadic: false,
    default_value: None,
  }
  let args = [self_arg, ..args]
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
  ..push(Emit::IntoMethod(interface.name))
  .push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }
  let interface_methods : Array[&InterfaceMethodEmit] = []
  let method_counter : Map[String, Int] = {}
  let mut constructor_count = 0
  loop interface.members.map(mem => mem.interface_member)[:] {
    [] => break
    [Constructor(ctor), .. rest] => {
      let (ctor_emits, new_count) = emit_constructor(
        ctor,
        interface.name,
        constructor_count,
        self.idl,
        self.type_registry,
      )
      constructor_count = new_count
      emits.push_iter(ctor_emits.iter())
      continue rest
    }
    [RegularOperation(op), .. rest] if has_hyphen(op.name) => continue rest
    [Attribute(attr), .. rest] if has_hyphen(attr.name) => continue rest
    [RegularOperation(op), .. rest] => {
      let orig_method_name = match method_counter.get(op.name) {
        None => {
          method_counter[op.name] = 1
          op.name
        }
        Some(count) => {
          method_counter[op.name] += 1
          "\{op.name}_\{count+1}"
        }
      }
      let (op_emits, meth) = emit_regular_operation(
        op,
        interface.name,
        orig_method_name,
        self.idl,
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
        self.idl,
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
      let orig_method_name = match method_counter.get(name) {
        None => {
          method_counter[name] = 1
          name
        }
        Some(count) => {
          method_counter[name] += 1
          "\{name}_\{count + 1}"
        }
      }
      let (op_emits, meth) = emit_special_operation(
        op,
        interface.name,
        orig_method_name,
        self.idl,
        self.type_registry,
      )
      emits.push_iter(op_emits.iter())
      interface_methods.push(meth)
      continue rest
    }
    // Unnamed special operations → bracket notation with synthetic names
    [SpecialOperation(op), .. rest] => {
      let base_name = match op.special {
        Getter => "get"
        Setter => "set"
        Deleter => "delete_"
      }
      let orig_method_name = match method_counter.get(base_name) {
        None => {
          method_counter[base_name] = 1
          base_name
        }
        Some(count) => {
          method_counter[base_name] += 1
          "\{base_name}_\{count + 1}"
        }
      }
      let (op_emits, meth) = emit_unnamed_special_operation(
        op,
        interface.name,
        orig_method_name,
        self.idl,
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
