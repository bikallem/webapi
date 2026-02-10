///|
/// Unit tests for WebIDL parser
test "parse empty input" {
  let result = @parser.parse("")
  assert_eq(result.length(), 0)
}

///|
test "parse simple interface" {
  let idl =
    #|interface Foo {
    #|  constructor(optional sequence<BlobPart> blobParts, optional BlobPropertyBag options = {});
    #|  attribute DOMString bar;
    #|
    #|  // slice Blob into byte-ranged chunks
    #|  Blob slice(optional [Clamp] long long start,
    #|        optional [Clamp] long long end,
    #|        optional DOMString contentType);
    #|};
  let result = @parser.parse(idl)
  assert_eq(result.length(), 1)
  let def = result[0].definition
  guard def is Definition::Interface(iface) else { fail("expected Interface") }
  assert_eq(iface.name, "Foo")
  assert_eq(iface.members.length(), 3)
  assert_true(
    iface.members[0].interface_member is InterfaceMember::Constructor(_),
  )
  assert_true(
    iface.members[1].interface_member is InterfaceMember::Attribute(_),
  )
  assert_true(
    iface.members[2].interface_member is InterfaceMember::RegularOperation(_),
  )
}

///|
test "parse interface with inheritance" {
  let idl =
    #|interface Child : Parent {
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        { "name": "Child", "inheritance": "Parent", "members": [] },
      ],
    },
  ])
}

///|
test "parse with union type" {
  let idl =
    #|interface Example {
    #|  attribute (DOMString or long or boolean) exampleAttr;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "Example",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "Attribute",
                {
                  "type_": [
                    "Union",
                    [
                      { "extended_attributes": [], "type_": "DOMString" },
                      { "extended_attributes": [], "type_": "Long" },
                      { "extended_attributes": [], "type_": "Boolean" },
                    ],
                  ],
                  "name": "exampleAttr",
                  "is_readonly": false,
                  "static_": false,
                  "is_inherit": false,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with extended attributes" {
  let idl =
    #|[Exposed=Window]
    #|interface EventTarget {
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [["Ident", "Exposed", "Window"]],
      "definition": ["Interface", { "name": "EventTarget", "members": [] }],
    },
  ])
}

///|
test "parse dictionary with default values" {
  let idl =
    #|dictionary Options {
    #|  boolean enabled = true;
    #|  float f_value = 0.2;
    #|  int v = 1;
    #|  DictA x = {};
    #|  DictB y = [];
    #|  A a = null;
    #|  B b = undefined;
    #|  DOMString name;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Dictionary",
        {
          "name": "Options",
          "members": [
            {
              "extended_attributes": [],
              "type_": "Boolean",
              "name": "enabled",
              "required": false,
              "default_value": ["ConstValue", ["Boolean", "true"]],
            },
            {
              "extended_attributes": [],
              "type_": "Float",
              "name": "f_value",
              "required": false,
              "default_value": ["ConstValue", ["Float", ["Float", "0.2"]]],
            },
            {
              "extended_attributes": [],
              "type_": ["Identifier", "int"],
              "name": "v",
              "required": false,
              "default_value": ["ConstValue", ["Integer", "1"]],
            },
            {
              "extended_attributes": [],
              "type_": ["Identifier", "DictA"],
              "name": "x",
              "required": false,
              "default_value": "EmptyObject",
            },
            {
              "extended_attributes": [],
              "type_": ["Identifier", "DictB"],
              "name": "y",
              "required": false,
              "default_value": "EmptySequence",
            },
            {
              "extended_attributes": [],
              "type_": ["Identifier", "A"],
              "name": "a",
              "required": false,
              "default_value": "Null",
            },
            {
              "extended_attributes": [],
              "type_": ["Identifier", "B"],
              "name": "b",
              "required": false,
              "default_value": "Undefined",
            },
            {
              "extended_attributes": [],
              "type_": "DOMString",
              "name": "name",
              "required": false,
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse enum" {
  let idl =
    #|enum Color { "red", "green", "blue" };
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Enum",
        { "name": "Color", "values": ["red", "green", "blue"] },
      ],
    },
  ])
}

///|
test "parse typedef" {
  let idl =
    #|typedef sequence<DOMString> StringList;
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Typedef",
        { "type_": ["Sequence", "DOMString"], "name": "StringList" },
      ],
    },
  ])
}

///|
test "parse callback function" {
  let idl =
    #|callback Handler = undefined (Event ev);
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "CallbackFunction",
        {
          "name": "Handler",
          "return_type": "Undefined",
          "arguments": [
            {
              "extended_attributes": [],
              "type_": {
                "extended_attributes": [],
                "type_": ["Identifier", "Event"],
              },
              "name": "ev",
              "optional": false,
              "variadic": false,
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse callback interface" {
  let idl =
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
  let result = @parser.parse(idl)
  json_inspect(result[0], content={
    "extended_attributes": [],
    "definition": [
      "CallbackInterface",
      {
        "name": "EventListener",
        "members": [
          {
            "extended_attributes": [],
            "callback_interface_member": [
              "Operation",
              {
                "return_type": "Undefined",
                "name": "handleEvent",
                "arguments": [
                  {
                    "extended_attributes": [],
                    "type_": {
                      "extended_attributes": [],
                      "type_": ["Identifier", "Event"],
                    },
                    "name": "event",
                    "optional": false,
                    "variadic": false,
                  },
                ],
                "static_": false,
              },
            ],
          },
        ],
      },
    ],
  })
}

///|
test "parse namespace" {
  let idl =
    #|namespace CSS {
    #|  boolean supports(DOMString property, DOMString value);
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Namespace",
        {
          "name": "CSS",
          "members": [
            {
              "extended_attributes": [],
              "namespace_member": [
                "Operation",
                {
                  "return_type": "Boolean",
                  "name": "supports",
                  "arguments": [
                    {
                      "extended_attributes": [],
                      "type_": {
                        "extended_attributes": [],
                        "type_": "DOMString",
                      },
                      "name": "property",
                      "optional": false,
                      "variadic": false,
                    },
                    {
                      "extended_attributes": [],
                      "type_": {
                        "extended_attributes": [],
                        "type_": "DOMString",
                      },
                      "name": "value",
                      "optional": false,
                      "variadic": false,
                    },
                  ],
                  "static_": false,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse includes statement" {
  let idl =
    #|Window includes GlobalEventHandlers;
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Includes",
        { "interface_name": "Window", "mixin_name": "GlobalEventHandlers" },
      ],
    },
  ])
}

///|
test "parse interface mixin" {
  let idl =
    #|interface mixin EventHandlers {
    #|  attribute EventHandler? onclick;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Mixin",
        {
          "name": "EventHandlers",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "Attribute",
                {
                  "type_": ["Nullable", ["Identifier", "EventHandler"]],
                  "name": "onclick",
                  "is_readonly": false,
                  "static_": false,
                  "is_inherit": false,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse partial interface" {
  let idl =
    #|partial interface Document {
    #|  readonly attribute Element? body;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "PartialInterface",
        {
          "name": "Document",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "Attribute",
                {
                  "type_": ["Nullable", ["Identifier", "Element"]],
                  "name": "body",
                  "is_readonly": true,
                  "static_": false,
                  "is_inherit": false,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with constructor" {
  let idl =
    #|interface URL {
    #|  constructor(DOMString url);
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "URL",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "Constructor",
                {
                  "arguments": [
                    {
                      "extended_attributes": [],
                      "type_": {
                        "extended_attributes": [],
                        "type_": "DOMString",
                      },
                      "name": "url",
                      "optional": false,
                      "variadic": false,
                    },
                  ],
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with getter" {
  let idl =
    #|interface Collection {
    #|  getter Element? item(unsigned long index);
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "Collection",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "SpecialOperation",
                {
                  "return_type": ["Nullable", ["Identifier", "Element"]],
                  "name": "item",
                  "arguments": [
                    {
                      "extended_attributes": [],
                      "type_": {
                        "extended_attributes": [],
                        "type_": "UnsignedLong",
                      },
                      "name": "index",
                      "optional": false,
                      "variadic": false,
                    },
                  ],
                  "special": "Getter",
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with iterable" {
  let idl =
    #|interface List {
    #|  iterable<DOMString>;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "List",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": ["Iterable", { "value_type": "DOMString" }],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with maplike" {
  let idl =
    #|interface Headers {
    #|  readonly maplike<DOMString, DOMString>;
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "Headers",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "Maplike",
                {
                  "key_type": "DOMString",
                  "value_type": "DOMString",
                  "is_readonly": true,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse interface with static operation" {
  let idl =
    #|interface URL {
    #|  static boolean canParse(DOMString url);
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "URL",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "RegularOperation",
                {
                  "return_type": "Boolean",
                  "name": "canParse",
                  "arguments": [
                    {
                      "extended_attributes": [],
                      "type_": {
                        "extended_attributes": [],
                        "type_": "DOMString",
                      },
                      "name": "url",
                      "optional": false,
                      "variadic": false,
                    },
                  ],
                  "static_": true,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse buffer type" {
  let idl =
    #|interface Blob {
    #|  ArrayBuffer arrayBuffer();
    #|};
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": [
        "Interface",
        {
          "name": "Blob",
          "members": [
            {
              "extended_attributes": [],
              "interface_member": [
                "RegularOperation",
                {
                  "return_type": "ArrayBuffer",
                  "name": "arrayBuffer",
                  "arguments": [],
                  "static_": false,
                },
              ],
            },
          ],
        },
      ],
    },
  ])
}

///|
test "parse single line comment" {
  let idl =
    #|// This is a comment
    #|interface Foo { };
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Foo", "members": [] }],
    },
  ])
}

///|
test "parse multi line comment" {
  let idl =
    #|/* This is a
    #|   multi-line comment */
    #|interface Foo { };
  json_inspect(@parser.parse(idl), content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Foo", "members": [] }],
    },
  ])
}

///|
test "tokenize returns positions" {
  let idl = "interface Foo { };"
  let tokens = @parser.tokenize(idl)
  assert_true(tokens.length() > 0)
  // First token is 'interface'
  let (_, start, end) = tokens[0]
  assert_eq(start.line, 1)
  assert_eq(start.column, 1)
  assert_eq(end.line, 1)
  assert_eq(end.column, 10) // "interface" is 9 chars
}

///|
test "position tracks line numbers" {
  let idl =
    #|interface
    #|Foo { };
  let tokens = @parser.tokenize(idl)
  // Find 'Foo' token - should be on line 2
  let foo_token = tokens
    .iter()
    .find_first(fn(t) {
      match t.0 {
        @parser.Token::IDENTIFIER(name) => name == "Foo"
        _ => false
      }
    })
  match foo_token {
    Some((_, start, _)) => assert_eq(start.line, 2)
    None => fail("Expected to find Foo token")
  }
}

///|
test "position tracks column numbers" {
  let idl = "   interface Foo { };"
  let tokens = @parser.tokenize(idl)
  // 'interface' starts at column 4 (after 3 spaces)
  let (_, start, _) = tokens[0]
  assert_eq(start.column, 4)
}

///|
test "position file is set" {
  let idl = "interface Foo { };"
  // Note: tokenize doesn't take file parameter in current API
  // but the Position struct supports it
  let tokens = @parser.tokenize(idl)
  let (_, start, _) = tokens[0]
  assert_eq(start.file, "")
}

///|
test "comprehensive integration test" {
  let idl =
    #|// Test WebIDL Parser - Comprehensive Test
    #|/* This tests all supported WebIDL constructs:
    #|   - Interface, partial interface, interface mixin
    #|   - Namespace, partial namespace
    #|   - Dictionary, partial dictionary
    #|   - Callback function, callback interface
    #|   - Enum, typedef, includes
    #|   - Special operations, iterable, maplike, setlike
    #|   - Extended attributes including NamedArgList
    #|*/
    #|
    #|// Interface with constructor and operations
    #|[Exposed=Window]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? listener);
    #|  boolean dispatchEvent(Event event);
    #|};
    #|
    #|// Callback interface
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
    #|
    #|// Partial interface
    #|[Exposed=Window]
    #|partial interface Document {
    #|  readonly attribute Element? documentElement;
    #|  Element? getElementById(DOMString elementId);
    #|};
    #|
    #|// Interface mixin
    #|interface mixin WindowEventHandlers {
    #|  attribute EventHandler? onload;
    #|  attribute EventHandler? onerror;
    #|};
    #|
    #|// Partial interface mixin
    #|partial interface mixin GlobalEventHandlers {
    #|  attribute EventHandler? onclick;
    #|};
    #|
    #|// Namespace
    #|namespace CSS {
    #|  readonly attribute DOMString cssText;
    #|  boolean supports(DOMString property, DOMString value);
    #|};
    #|
    #|// Partial namespace
    #|partial namespace CSS {
    #|  CSSStyleDeclaration parseStyleValue(DOMString property, DOMString value);
    #|};
    #|
    #|// Dictionary with inheritance
    #|dictionary AddEventListenerOptions : EventListenerOptions {
    #|  boolean passive = false;
    #|  boolean once = false;
    #|};
    #|
    #|dictionary EventListenerOptions {
    #|  boolean capture = false;
    #|};
    #|
    #|// Partial dictionary
    #|partial dictionary RequestInit {
    #|  DOMString method;
    #|  required HeadersInit headers;
    #|};
    #|
    #|// Enum
    #|enum ScrollBehavior { "auto", "instant", "smooth" };
    #|
    #|// Typedef
    #|typedef sequence<DOMString> DOMStringList;
    #|
    #|// Callback function
    #|callback EventHandler = undefined (Event ev);
    #|
    #|// Includes statement
    #|Window includes WindowEventHandlers;
    #|
    #|// Interface with special operations
    #|interface HTMLCollection : Node {
    #|  readonly attribute unsigned long length;
    #|  getter Element? item(unsigned long index);
    #|  getter Element? namedItem(DOMString name);
    #|  iterable<Element>;
    #|};
    #|
    #|// Interface with maplike
    #|interface Headers {
    #|  readonly maplike<DOMString, DOMString>;
    #|};
    #|
    #|// Interface with setlike
    #|interface DOMTokenList {
    #|  setlike<DOMString>;
    #|};
    #|
    #|// Interface with static member
    #|[Exposed=Window]
    #|interface URL {
    #|  constructor(DOMString url, optional DOMString base);
    #|  static boolean canParse(DOMString url, optional DOMString base);
    #|};
    #|
    #|// Extended attribute with NamedArgList: [Constructor=Image(DOMString src)]
    #|[Exposed=Window, LegacyFactoryFunction=Image(optional DOMString src)]
    #|interface HTMLImageElement : HTMLElement {
    #|  attribute DOMString src;
    #|  readonly attribute unsigned long width;
    #|};
  let defs = @parser.parse(idl)
  // 19 top-level definitions
  assert_eq(defs.length(), 19)
  // Verify each definition type in order
  assert_true(defs[0].definition is Definition::Interface(_)) // EventTarget
  assert_true(defs[1].definition is Definition::CallbackInterface(_)) // EventListener
  assert_true(defs[2].definition is Definition::PartialInterface(_)) // Document
  assert_true(defs[3].definition is Definition::Mixin(_)) // WindowEventHandlers
  assert_true(defs[4].definition is Definition::PartialMixin(_)) // GlobalEventHandlers
  assert_true(defs[5].definition is Definition::Namespace(_)) // CSS
  assert_true(defs[6].definition is Definition::PartialNamespace(_)) // CSS
  assert_true(defs[7].definition is Definition::Dictionary(_)) // AddEventListenerOptions
  assert_true(defs[8].definition is Definition::Dictionary(_)) // EventListenerOptions
  assert_true(defs[9].definition is Definition::PartialDictionary(_)) // RequestInit
  assert_true(defs[10].definition is Definition::Enum(_)) // ScrollBehavior
  assert_true(defs[11].definition is Definition::Typedef(_)) // DOMStringList
  assert_true(defs[12].definition is Definition::CallbackFunction(_)) // EventHandler
  assert_true(defs[13].definition is Definition::Includes(_)) // Window includes
  assert_true(defs[14].definition is Definition::Interface(_)) // HTMLCollection
  assert_true(defs[15].definition is Definition::Interface(_)) // Headers
  assert_true(defs[16].definition is Definition::Interface(_)) // DOMTokenList
  assert_true(defs[17].definition is Definition::Interface(_)) // URL
  assert_true(defs[18].definition is Definition::Interface(_)) // HTMLImageElement
  // Verify extended attributes on first def
  assert_eq(defs[0].extended_attributes.length(), 1)
  // Verify NamedArgList extended attribute on last def
  assert_eq(defs[18].extended_attributes.length(), 2)
  guard defs[18].extended_attributes[1]
    is ExtendedAttribute::NamedArgList(name, value, _) else {
    fail("expected NamedArgList")
  }
  assert_eq(name, "LegacyFactoryFunction")
  assert_eq(value, "Image")
}

///|
test "parse cssom snippet" {
  let idl =
    #|[Exposed=Window]
    #|interface MediaList {
    #|  stringifier attribute [LegacyNullToEmptyString] CSSOMString mediaText;
    #|  readonly attribute unsigned long length;
    #|  getter CSSOMString? item(unsigned long index);
    #|  undefined appendMedium(CSSOMString medium);
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse PutForwards attribute" {
  let idl =
    #|[Exposed=Window]
    #|interface StyleSheet {
    #|  [SameObject, PutForwards=mediaText] readonly attribute MediaList media;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse union type attribute" {
  let idl =
    #|[Exposed=Window]
    #|interface StyleSheet {
    #|  readonly attribute (Element or ProcessingInstruction)? ownerNode;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse dictionary with null default" {
  let idl =
    #|dictionary CSSStyleSheetInit {
    #|  DOMString baseURL = null;
    #|  (MediaList or DOMString) media = "";
    #|  boolean disabled = false;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse cssom.idl file" {
  let result = @parser.parse_file("node_modules/@webref/idl/cssom.idl")
  inspect(result.length() > 0, content="true")
}

///|
test "parse cssom-view.idl file" {
  let result = @parser.parse_file("node_modules/@webref/idl/cssom-view.idl")
  inspect(result.length() > 0, content="true")
}
