///|
pub(all) struct InterfaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
/// Convert method arguments from IDL to MBT types, collecting any additional emits needed
/// for complex types (e.g., union arg traits).
fn method_args(
  args : Array[(String, @parser.Type, Bool, @parser.DefaultValue?)],
  interface_name : String,
  method_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[MethodArg], Array[Emit]) {
  let emits = []
  let mbt_args = []
  for arg in args {
    let (arg_name, type_, optional, default_value) = arg
    let (mbt_type, arg_emits) = arg_mbt_type(
      type_, interface_name, method_name, arg_name, type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    let default_value = default_value.map(dv => mbt_default_value(dv, mbt_type))
    let mbt_type = match mbt_type {
      ArgMbtType::Interface(name) => ArgMbtType::Interface("&T\{name}")
      ArgMbtType::Union(union_type) => {
        let union_type = { ..union_type, name: "&T\{union_type.name}" }
        ArgMbtType::Union(union_type)
      }
      _ => mbt_type
    }
    mbt_args.push(MethodArg::{
      name: safe_identifier(arg_name),
      original_name: arg_name,
      type_: mbt_type,
      optional,
      default_value,
    })
  }
  (mbt_args, emits)
}

///|
fn mbt_default_value(
  default_value : @parser.DefaultValue,
  arg_type : ArgMbtType,
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
        ArgMbtType::Union({ options, .. }) =>
          if options
            .iter()
            .find_first(it => match it {
              Primitive("Int")
              | Primitive("Int64")
              | Primitive("UInt")
              | Primitive("UInt64") => true
              _ => false
            })
            is Some(t) {
            "(\{i}: \{t.name()})"
          } else if options
            .iter()
            .any(it => it is ArgMbtType::Primitive("Double")) {
            "(\{i} : Double)"
          } else if options
            .iter()
            .any(it => it is ArgMbtType::Primitive("Float")) {
            "(\{i} : Float)"
          } else {
            i
          }
        _ => "(\{i}: \{arg_type.name()})"
      }
    ConstValue(Float(_) as f) => {
      let f = const_value(f)
      match arg_type {
        ArgMbtType::Union({ options, .. }) =>
          if options
            .iter()
            .find_first(it => match it {
              Primitive("Float") | Primitive("Double") => true
              _ => false
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
          .find_first(it => match it {
            Dictionary(_) => true
            _ => false
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
    EmptySequence => "[]"
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
pub impl Emitter for InterfaceEmitter with emit(
  self : InterfaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{snake_case(name)}_interface.mbt")
  let interface = self.idl.interfaces[name]
  let ancestors = @flattened_idl.get_interface_ancestors(self.idl, name)
  let emits = []
  emits
  ..push(Emit::FileHeader(TypeName(interface.name), Specs(interface.specs)))
  ..push(Emit::External(interface.name))
  ..push(Emit::ImplTJsValue(interface.name))
  ..push(Emit::IntoMethod(interface.name))
  ..push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }
  let interface_methods : Array[&InterfaceMethodEmit] = []
  let method_counter : Map[String, Int] = {} // to handle overloaded methods
  let mut constructor_count = 0 // to handle overloaded constructors
  loop interface.members.map(mem => mem.interface_member)[:] {
    [] => break
    [Constructor(ctor), .. rest] => {
      let method_name = if constructor_count == 0 {
        "new"
      } else {
        "new_\{constructor_count+1}"
      }
      constructor_count += 1
      let (args, arg_emits) = method_args(
        ctor.arguments.map(arg => (
          arg.name,
          arg.type_.type_,
          arg.optional,
          arg.default_value,
        )),
        interface.name,
        method_name,
        self.type_registry,
      )
      emits
      ..push_iter(arg_emits.iter())
      ..push(
        Emit::ConstructorMethod(
          ConstructorName(method_name),
          TypeName(interface.name),
          args,
        ),
      )
      continue rest
    }
    [RegularOperation(op), .. rest] if has_hyphen(op.name) => continue rest // skip methods with hyphens
    [Attribute(attr), .. rest] if has_hyphen(attr.name) => continue rest // skip attributes with hyphens
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
      // trait method args      
      let (args, arg_emits) = method_args(
        op.arguments.map(arg => (
          arg.name,
          arg.type_.type_,
          arg.optional,
          arg.default_value,
        )),
        interface.name,
        orig_method_name,
        self.type_registry,
      )
      let args = if op.static_ {
        args
      } else {
        // Add 'self' argument 
        let self_arg = MethodArg::{
          name: "self",
          original_name: "self",
          type_: ArgMbtType::Self,
          optional: false,
          default_value: None,
        }
        [self_arg, ..args]
      }
      emits.push_iter(arg_emits.iter())

      // return type
      let (return_type, return_emits) = arg_mbt_type(
        op.return_type,
        interface.name,
        orig_method_name,
        "",
        self.type_registry,
      )
      if return_type is ArgMbtType::Union({ name, has_undefined, .. }) {
        emits..push(Emit::External(name))..push(Emit::IntoMethod(name))
        if has_undefined {
          emits.push(Emit::IsUndefinedMethod(name))
        }
        emits.push(
          Emit::UnionArgTraitImpl(TypeName(name), TraitName("T\{name}")),
        )
      }
      emits.push_iter(return_emits.iter())
      if op.static_ {
        // static method
        let meth_ = StaticMethodEmit::{
          interface_name: interface.name,
          original_name: orig_method_name,
          return_type: return_type.name(),
          args,
        }
        interface_methods.push(meth_)
      } else {
        let return_type = MethodReturn::{
          type_: return_type,
          optional: op.return_type is Nullable(_),
        }
        // trait method
        let meth_ = RegularMethodEmit::{
          interface_name: interface.name,
          original_name: orig_method_name,
          return_type,
          args,
        }
        interface_methods.push(meth_)
      }
      continue rest
    }
    [Attribute(attr), .. rest] => {
      // For static attributes, only readonly or inherited ones are supported
      if attr.static_ && !attr.is_readonly && !attr.is_inherit {
        // TODO: log this
        continue rest
      }
      let (attr_type, attr_emits) = arg_mbt_type(
        attr.type_,
        interface.name,
        attr.name,
        "",
        self.type_registry,
      )

      // For static attributes, push attr_emits before union handling
      if attr.static_ {
        emits.push_iter(attr_emits.iter())
      }
      if attr_type is ArgMbtType::Union({ name, has_undefined, .. }) {
        emits..push(Emit::External(name))..push(Emit::IntoMethod(name))
        if has_undefined {
          emits.push(Emit::IsUndefinedMethod(name))
        }
        emits.push(
          Emit::UnionArgTraitImpl(TypeName(name), TraitName("T\{name}")),
        )
      }
      emits.push_iter(attr_emits.iter())

      // Getter method (static or regular)
      if attr.static_ {
        let static_attr_getter_method = StaticAttributeGetMethodEmit::{
          interface_name: interface.name,
          original_name: attr.name,
          return_type: attr_type.name(),
        }
        interface_methods.push(static_attr_getter_method)
      } else {
        let attr_getter_method = AttributeGetMethodEmit::{
          interface_name: interface.name,
          original_name: attr.name,
          return_type: attr_type.name(),
        }
        interface_methods.push(attr_getter_method)

        // Set Attribute method if specified (only for non-static)
        if !attr.is_readonly || attr.is_inherit {
          let args = [
            // Add 'self' argument
            MethodArg::{
              name: "self",
              original_name: "self",
              type_: ArgMbtType::Self,
              optional: false,
              default_value: None,
            },
            // Attribute value argument
            MethodArg::{
              name: safe_identifier(attr.name),
              original_name: attr.name,
              type_: attr_type,
              optional: false,
              default_value: None,
            },
          ]
          let attr_setter_method = AttributeSetMethodEmit::{
            interface_name: interface.name,
            original_name: attr.name,
            args,
          }
          interface_methods.push(attr_setter_method)
        }
      }
      continue rest
    }
    [Const(const_val), .. rest] => {
      let const_name = ConstName(
        "\{snake_case(interface.name).to_upper()}_\{snake_case(const_val.name).to_upper()}",
      )
      let (mbt_type, const_emits) = arg_mbt_type(
        const_val.type_,
        interface.name,
        "",
        const_val.name,
        self.type_registry,
      )
      emits
      ..push_iter(const_emits.iter())
      ..push(
        Emit::Const(
          const_name,
          TypeName(mbt_type.name()),
          const_value(const_val.value),
        ),
      )
      continue rest
    }
    [
      Setlike(_)
      | Maplike(_)
      | AsyncIterable(_)
      | Iterable(_)
      | SpecialOperation(_)
      | Stringifier(Bare),
      .. rest,
    ] => continue rest
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
