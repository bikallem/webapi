///|
/// Consolidated IDL after merging partials, flattening mixins, and resolving dictionary inheritance.
struct MergedIdl {
  interfaces : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
} derive(Show, ToJson)

///|
fn MergedIdl::from(partial_merge_visitor : PartialMergeVisitor) -> MergedIdl {
  // Merge dictionaries by inheriting members from parent dictionaries
  let dictionaries = partial_merge_visitor.dictionaries
    .iter()
    .map(it => {
      let dict_name = it.0
      let dict = it.1 // PartialMergedDictionaryIR
      match dict.inheritance {
        None => // No inheritance, just copy members to MergedDictionaryIR
          (dict_name, MergedDictionaryIR::new(dict.name, dict.members))
        Some(parent_name) => // Merge parent members
          match partial_merge_visitor.dictionaries.get(parent_name) {
            Some(parent_dict) => {
              let merged_members = parent_dict.members + dict.members
              let merged_dict = MergedDictionaryIR::new(
                dict.name,
                merged_members,
              )
              (dict_name, merged_dict)
            }
            None =>
              abort(
                "Parent dictionary '\{parent_name}' for '\{dict_name}' not found",
              )
          }
      }
    })
    |> Map::from_iter

  // flatten mixins into interfaces
  for include_stmt in partial_merge_visitor.include_statements {
    match partial_merge_visitor.mixins.get(include_stmt.mixin_name) {
      Some(mxn) =>
        match
          partial_merge_visitor.interfaces.get(include_stmt.interface_name) {
          Some(iface) =>
            partial_merge_visitor.interfaces[include_stmt.interface_name] = iface.merge(
              mxn.members,
              iface.inheritance,
            )
          None =>
            println(
              "Interface '\{include_stmt.interface_name}' for includes statement not found",
            )
        }
      None =>
        abort(
          "Mixin included in interface '\{include_stmt.interface_name}' not found",
        )
    }
  }
  MergedIdl::{
    interfaces: partial_merge_visitor.interfaces,
    dictionaries,
    enums: partial_merge_visitor.enums,
    typedefs: partial_merge_visitor.typedefs,
    callbacks: partial_merge_visitor.callback_functions,
    callback_interfaces: partial_merge_visitor.callback_interfaces,
  }
}

///|
/// Merged dictionary IR with all inherited members combined.
struct MergedDictionaryIR {
  name : String
  members : Array[DictionaryMember]
} derive(Show, ToJson)

///|
fn MergedDictionaryIR::new(
  name : String,
  members : Array[DictionaryMember],
) -> MergedDictionaryIR {
  MergedDictionaryIR::{ name, members }
}

///|
test "MergedIdl::from merges dictionary inheritance" {
  let widl : String =
    #|dictionary BaseDict {
    #|  DOMString baseProp;
    #|  boolean bubbles = false;
    #|};
    #|dictionary ChildDict : BaseDict {
    #|  DOMString childProp;
    #|  boolean property1 = false;
    #|};
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged_idl = MergedIdl::from(visitor)
  let merged_dict = merged_idl.dictionaries["ChildDict"]
  @json.inspect(merged_dict, content={
    "name": "ChildDict",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "baseProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "bubbles",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", false]],
      },
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "childProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "property1",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", false]],
      },
    ],
  })
}

///|
test "MergedIdl::from handles dictionary without inheritance" {
  let widl : String =
    #|dictionary SimpleDict {
    #|  DOMString simpleProp;
    #|};
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged_idl = MergedIdl::from(visitor)
  let merged_dict = merged_idl.dictionaries["SimpleDict"]
  @json.inspect(merged_dict, content={
    "name": "SimpleDict",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "simpleProp",
        "required": false,
      },
    ],
  })
}

///|
test "panic: MergedIdl::from aborts when parent dictionary is missing" {
  let widl : String =
    #|dictionary ChildDict : MissingParentDict {
    #|  DOMString childProp;
    #|};
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let _merged_idl = MergedIdl::from(visitor)
  ()
}

///|
test "MergedIdl::from flattens mixins into interfaces" {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|partial interface MyInterface {
    #|  Node appendChild(Element newChild);
    #|};
    #|interface mixin MyMixin {
    #|  attribute DOMString? textContent2;
    #|};
    #|partial interface mixin MyMixin {
    #|  void doSomething();
    #|};
    #|MyInterface includes MyMixin;
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged_idl = MergedIdl::from(visitor)
  let iface2 = merged_idl.interfaces["MyInterface"]
  @json.inspect(iface2, content={
    "name": "MyInterface",
    "members": [
      [
        "Attribute",
        {
          "extended_attributes": [],
          "type_": ["Nullable", "DOMString"],
          "name": "textContent",
          "is_readonly": false,
          "static_": false,
          "is_inherit": false,
        },
      ],
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": ["Identifier", "Node"],
          "name": "appendChild",
          "arguments": [
            {
              "extended_attributes": [],
              "type_": ["Identifier", "Element"],
              "name": "newChild",
              "optional": false,
              "variadic": false,
            },
          ],
          "static_": false,
        },
      ],
      [
        "Attribute",
        {
          "extended_attributes": [],
          "type_": ["Nullable", "DOMString"],
          "name": "textContent2",
          "is_readonly": false,
          "static_": false,
          "is_inherit": false,
        },
      ],
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": "Void",
          "name": "doSomething",
          "arguments": [],
          "static_": false,
        },
      ],
    ],
  })
}

///|
test "panic: MergedIdl::from aborts when mixin is missing" {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|MyInterface includes MissingMixin;
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let _merged_idl = MergedIdl::from(visitor)
  ()
}
