///|
pub(all) struct NamespaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for NamespaceEmitter with emit(
  self : NamespaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_namespace.mbt")
  let ns = self.idl.namespaces[name]
  // MoonBit requires uppercase type names; capitalize if needed (e.g. "console" → "Console")
  let mbt_name = @type_mapping.pascal_case(ns.name)
  let emits = []
  emits
  ..push(Emit::FileHeader(TypeName(mbt_name), Specs(ns.specs)))
  ..push(Emit::External(mbt_name))
  ..push(Emit::ImplTJsValue(mbt_name))
  .push(Emit::ImplFromJsAny(mbt_name))
  let namespace_methods : Array[&InterfaceMethodEmit] = []
  let method_namer = OverloadNamer::new()
  for m in ns.members {
    match m.namespace_member {
      Operation(op) => {
        if op.name.contains("-") {
          continue
        }
        let orig_method_name = method_namer.next(op.name, op.arguments)
        // All namespace operations are implicitly static
        let static_op : @parser.RegularOperationMember = {
          name: op.name,
          return_type: op.return_type,
          arguments: op.arguments,
          static_: true,
        }
        let (op_emits, meth) = emit_regular_operation(
          static_op,
          mbt_name,
          orig_method_name,
          self.type_registry,
          js_name=ns.name,
        )
        emits.push_iter(op_emits.iter())
        namespace_methods.push(meth)
      }
      Attribute(attr) => {
        if attr.name.contains("-") {
          continue
        }
        // Namespace attributes are always readonly and static
        let static_attr : @parser.AttributeMember = {
          name: attr.name,
          type_: attr.type_,
          is_readonly: true,
          is_inherit: false,
          static_: true,
        }
        let (attr_emits, attr_methods) = emit_attribute(
          static_attr,
          mbt_name,
          self.type_registry,
          js_name=ns.name,
        )
        emits.push_iter(attr_emits.iter())
        namespace_methods.push_iter(attr_methods.iter())
      }
      Const(const_val) => {
        let const_emits = emit_const_member(
          const_val,
          mbt_name,
          self.type_registry,
        )
        emits.push_iter(const_emits.iter())
      }
    }
  }
  emits.push(
    Emit::NamespaceDefinition(NamespaceDef::{
      name: mbt_name,
      methods: namespace_methods,
    }),
  )
  (filename, emits)
}
