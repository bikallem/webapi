///|
/// Count various definition types
struct CountingVisitor {
  mut interface_count : Int
  mut dictionary_count : Int
  mut enum_count : Int
  mut typedef_count : Int
  mut callback_function_count : Int
  mut callback_interface_count : Int
  mut type_count : Int
}

///|
fn CountingVisitor::new() -> CountingVisitor {
  CountingVisitor::{
    interface_count: 0,
    dictionary_count: 0,
    enum_count: 0,
    typedef_count: 0,
    callback_function_count: 0,
    callback_interface_count: 0,
    type_count: 0,
  }
}

///|
impl DefinitionVisitor for CountingVisitor with visit_interface(self, iface) -> Unit {
  self.interface_count += 1
  for memb in iface.members {
    self.visit_interface_member(memb)
  }
}

///|
impl DefinitionVisitor for CountingVisitor with visit_dictionary(self, _dict) -> Unit {
  self.dictionary_count += 1
}

///|
impl DefinitionVisitor for CountingVisitor with visit_enum(self, _e) -> Unit {
  self.enum_count += 1
}

///|
impl DefinitionVisitor for CountingVisitor with visit_typedef(self, _td) -> Unit {
  self.typedef_count += 1
}

///|
impl DefinitionVisitor for CountingVisitor with visit_callback_function(
  self,
  _cbf,
) -> Unit {
  self.callback_function_count += 1
}

///|
impl DefinitionVisitor for CountingVisitor with visit_callback_interface(
  self,
  _cbi,
) -> Unit {
  self.callback_interface_count += 1
}

///|
impl DefinitionVisitor for CountingVisitor with visit_type(self, _typ) -> Unit {
  self.type_count += 1
}

///|
test "CountingVisitor counts definitions correctly" {
  let visitor = CountingVisitor::new()
  let defs : Array[Definition] = [
    Interface({
      extended_attributes: [],
      name: "MyInterface",
      members: [],
      inheritance: None,
    }),
    Dictionary({
      extended_attributes: [],
      name: "MyDict",
      inheritance: None,
      members: [],
    }),
    Enum({
      extended_attributes: [],
      name: "MyEnum",
      values: ["Value1", "Value2"],
    }),
    Typedef({
      extended_attributes: [],
      type_: Type::Identifier("DOMString"),
      name: "MyString",
    }),
    CallbackFunction({
      extended_attributes: [],
      name: "MyCallback",
      return_type: Type::Identifier("void"),
      arguments: [],
    }),
  ]
  visitor.visit_definitions(defs)
  inspect(visitor.interface_count, content="1")
  inspect(visitor.dictionary_count, content="1")
  inspect(visitor.enum_count, content="1")
  inspect(visitor.typedef_count, content="1")
  inspect(visitor.callback_function_count, content="1")
  inspect(visitor.callback_interface_count, content="0")
  inspect(visitor.type_count, content="0")
}

///|
test "CountingVisitor visits nested types in interface members" {
  let visitor = CountingVisitor::new()
  let defs : Array[Definition] = [
    Interface({
      name: "Node",
      inheritance: None,
      extended_attributes: [],
      members: [
        Attribute({
          is_inherit: false,
          name: "textContent",
          type_: Nullable(DOMString),
          is_readonly: false,
          static_: false,
          extended_attributes: [],
        }),
        Operation({
          extended_attributes: [],
          return_type: Identifier("Node"),
          name: Some("appendChild"),
          static_: false,
          arguments: [
            Argument::{
              extended_attributes: [],
              type_: Identifier("Element"),
              name: "newChild",
              optional: false,
              default_value: None,
              variadic: false,
            },
          ],
          special: None,
        }),
      ],
    }),
  ]
  visitor.visit_definitions(defs)
  inspect(visitor.interface_count, content="1")
  inspect(visitor.type_count, content="3") // Identifier("Element"), Nullable(DOMString), Identifier("Element")
}
