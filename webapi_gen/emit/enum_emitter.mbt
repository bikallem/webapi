///|
pub(all) struct EnumEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for EnumEmitter with emit(self : EnumEmitter, name : String) -> (
  Filename,
  Array[Emit],
) {
  let filename = Filename("\{to_snake_case(name)}_enum.mbt")
  let enum_ = self.idl.enums[name]
  let variants = []
  for original_value in enum_.values {
    let variant_name = if original_value.is_empty() {
      "Empty"
    } else {
      to_pascal_case(original_value)
    }
    variants.push(EnumVariantEmit::{ variant_name, original_value })
  }
  (filename, [Emit::Enum(TypeName(enum_.name), variants)])
}
