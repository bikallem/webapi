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
  let emits = []
  emits
  ..push(Emit::FileHeader(TypeName(ns.name), Specs(ns.specs)))
  ..push(Emit::External(ns.name))
  .push(Emit::ImplTJsValue(ns.name))
  let namespace_methods : Array[&InterfaceMethodEmit] = []
  let method_counter : Map[String, Int] = {}
  for m in ns.members {
    match m.namespace_member {
      Operation(op) => {
        if has_hyphen(op.name) {
          continue
        }
        let orig_method_name = match method_counter.get(op.name) {
          None => {
            method_counter[op.name] = 1
            op.name
          }
          Some(count) => {
            method_counter[op.name] += 1
            "\{op.name}_\{count + 1}"
          }
        }
        // All namespace operations are implicitly static
        let static_op : @parser.RegularOperationMember = {
          name: op.name,
          return_type: op.return_type,
          arguments: op.arguments,
          static_: true,
        }
        let (op_emits, meth) = emit_regular_operation(
          static_op,
          ns.name,
          orig_method_name,
          self.type_registry,
        )
        emits.push_iter(op_emits.iter())
        namespace_methods.push(meth)
      }
      Attribute(attr) => {
        if has_hyphen(attr.name) {
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
          ns.name,
          self.type_registry,
        )
        emits.push_iter(attr_emits.iter())
        namespace_methods.push_iter(attr_methods.iter())
      }
      Const(const_val) => {
        let const_emits = emit_const_member(
          const_val,
          ns.name,
          self.type_registry,
        )
        emits.push_iter(const_emits.iter())
      }
    }
  }
  emits.push(Emit::NamespaceDefinition(NamespaceDef::{
    name: ns.name,
    methods: namespace_methods,
  }))
  (filename, emits)
}
