///|
test "TypeRegistry::contains checks all type categories" {
  let reg : TypeRegistry = {
    interface_names: @hashset.from_array(["Element"]),
    dictionary_names: @hashset.from_array(["EventInit"]),
    enum_names: @hashset.from_array(["ScrollBehaviour"]),
    typedef_names: @hashset.from_array(["DOMString"]),
    union_typedef_names: @hashset.from_array(["HeadersInit"]),
    callback_names: @hashset.from_array(["EventListener"]),
    callback_defs: {},
    typedef_defs: {},
  }
  inspect(reg.contains("Element"), content="true")
  inspect(reg.contains("EventInit"), content="true")
  inspect(reg.contains("ScrollBehaviour"), content="true")
  inspect(reg.contains("Unknown"), content="false")
  inspect(reg.is_interface("Element"), content="true")
  inspect(reg.is_dictionary("EventInit"), content="true")
  inspect(reg.is_enum("ScrollBehaviour"), content="true")
  inspect(reg.is_typedef("DOMString"), content="true")
  inspect(reg.is_callback("EventListener"), content="true")
  inspect(reg.is_union_typedef("HeadersInit"), content="true")
  inspect(
    reg.named_type_kind("Element") is NamedTypeKind::Interface,
    content="true",
  )
  inspect(
    reg.named_type_kind("EventInit") is NamedTypeKind::Dictionary,
    content="true",
  )
  inspect(
    reg.named_type_kind("ScrollBehaviour") is NamedTypeKind::Enum,
    content="true",
  )
  inspect(
    reg.named_type_kind("DOMString") is NamedTypeKind::Typedef,
    content="true",
  )
  inspect(
    reg.named_type_kind("HeadersInit") is NamedTypeKind::UnionTypedef,
    content="true",
  )
  inspect(
    reg.named_type_kind("EventListener") is NamedTypeKind::Callback,
    content="true",
  )
  inspect(
    reg.named_type_kind("Unknown") is NamedTypeKind::Unknown,
    content="true",
  )
}
