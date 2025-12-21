///|
pub(all) struct InterfaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for InterfaceEmitter with emit(
  self : InterfaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{to_snake_case(name)}_interface.mbt")
  let interface = self.idl.interfaces[name]
  let ancestors = @flattened_idl.get_interface_ancestors(self.idl, name)
  let emits = []
  emits.push(Emit::External(interface.name))
  emits.push(Emit::IntoMethod(interface.name))
  emits.push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }

  // Generate trait method args
  fn fill_method_args(
    method_args : Array[@parser.Argument],
    method_name : String,
    output_args : Array[MethodArg],
  ) -> Unit {
    for arg in method_args {
      let (type_, arg_emits) = arg_type(
        arg.type_.type_,
        method_name,
        arg.name,
        @type_registry.TypeRegistry::new([]), // empty registry since we don't need it here
      )
      // Push any additional emits needed for the arg type, e.g. union arg traits
      emits.push_iter(arg_emits.iter())
      output_args.push(MethodArg::{
        name: safe_identifier(arg.name),
        type_,
        optional: arg.optional,
        default_value: arg.default_value.map(dv => arg_default_value(
          dv,
          arg.type_.type_,
          self.type_registry,
        )),
      })
    }
  }

  let trait_methods = []
  let method_counter : Map[String, Int] = {} // to handle overloaded methods
  for mem in interface.members {
    match mem.interface_member {
      Constructor(ctor) => {
        let args = []
        let method_name = "new"
        fill_method_args(ctor.arguments, method_name, args)
        emits.push(Emit::ConstructorMethod(interface.name, args))
      }
      RegularOperation(op) => {
        if op.static_ {
          continue // TODO: determine how to map static methods, perhaps to external type?
        }
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
        let args = [
          MethodArg::{
            name: "self",
            type_: ArgType::Self,
            optional: false,
            default_value: None,
          },
        ]
        fill_method_args(op.arguments, safe_identifier(orig_method_name), args)

        // trait method
        let trait_method = TraitMethod::{
          method_name: orig_method_name,
          return_type: op.return_type,
          args,
        }
        trait_methods.push(trait_method)
      }
      Attribute(_) => ()
      _ => ()
    }
  }
  let parent_trait = match interface.inheritance {
    None => "TJsValue"
    Some(parent) => "T\{parent}"
  }
  emits.push(
    Emit::TraitDefinition(TraitDef::{
      trait_name: interface.name,
      parent_trait,
      methods: trait_methods,
    }),
  )
  (filename, emits)
}
