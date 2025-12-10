///|
/// Unit tests for WebIDL parser
test "parse empty input" {
  let result = @parser.parse("")
  assert_eq(result.length(), 0)
}

///|
test "parse simple interface" (t : @test.Test) {
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
  t.write(result.to_json().stringify(indent=2))
  t.snapshot(filename="parse simple interface.json")
}

///|
test "parse interface with inheritance" {
  let idl =
    #|interface Child : Parent {
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "Child",
        "inheritance": "Parent",
        "members": [],
      },
    ],
  ])
}

///|
test "parse with union type" {
  let idl =
    #|interface Example {
    #|  attribute (DOMString or long) exampleAttr;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "Example",
        "members": [
          [
            "Attribute",
            {
              "extended_attributes": [],
              "type_": ["Union", ["DOMString", "Long"]],
              "name": "exampleAttr",
              "is_readonly": false,
              "static_": false,
              "is_inherit": false,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse interface with extended attributes" {
  let idl =
    #|[Exposed=Window]
    #|interface EventTarget {
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [["Ident", "Exposed", "Window"]],
        "name": "EventTarget",
        "members": [],
      },
    ],
  ])
}

///|
test "parse dictionary" {
  let idl =
    #|dictionary Options {
    #|  boolean enabled = true;
    #|  DOMString name;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Dictionary",
      {
        "extended_attributes": [],
        "name": "Options",
        "members": [
          {
            "extended_attributes": [],
            "type_": "Boolean",
            "name": "enabled",
            "required": false,
            "default_value": ["ConstValue", ["Boolean", true]],
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
  ])
}

///|
test "parse enum" {
  let idl =
    #|enum Color { "red", "green", "blue" };
  @json.inspect(@parser.parse(idl), content=[
    [
      "Enum",
      {
        "extended_attributes": [],
        "name": "Color",
        "values": ["red", "green", "blue"],
      },
    ],
  ])
}

///|
test "parse typedef" {
  let idl =
    #|typedef sequence<DOMString> StringList;
  @json.inspect(@parser.parse(idl), content=[
    [
      "Typedef",
      {
        "extended_attributes": [],
        "type_": ["Sequence", "DOMString"],
        "name": "StringList",
      },
    ],
  ])
}

///|
test "parse callback function" {
  let idl =
    #|callback Handler = undefined (Event ev);
  @json.inspect(@parser.parse(idl), content=[
    [
      "CallbackFunction",
      {
        "extended_attributes": [],
        "name": "Handler",
        "return_type": "Undefined",
        "arguments": [
          {
            "extended_attributes": [],
            "type_": ["Identifier", "Event"],
            "name": "ev",
            "optional": false,
            "variadic": false,
          },
        ],
      },
    ],
  ])
}

///|
test "parse callback interface" {
  let idl =
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
  let result = @parser.parse(idl)
  @json.inspect(result[0], content=[
    "CallbackInterface",
    {
      "extended_attributes": [],
      "name": "EventListener",
      "members": [
        [
          "Operation",
          {
            "extended_attributes": [],
            "return_type": "Undefined",
            "name": "handleEvent",
            "arguments": [
              {
                "extended_attributes": [],
                "type_": ["Identifier", "Event"],
                "name": "event",
                "optional": false,
                "variadic": false,
              },
            ],
            "static_": false,
          },
        ],
      ],
    },
  ])
}

///|
test "parse namespace" {
  let idl =
    #|namespace CSS {
    #|  boolean supports(DOMString property, DOMString value);
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Namespace",
      {
        "extended_attributes": [],
        "name": "CSS",
        "members": [
          [
            "Operation",
            {
              "extended_attributes": [],
              "return_type": "Boolean",
              "name": "supports",
              "arguments": [
                {
                  "extended_attributes": [],
                  "type_": "DOMString",
                  "name": "property",
                  "optional": false,
                  "variadic": false,
                },
                {
                  "extended_attributes": [],
                  "type_": "DOMString",
                  "name": "value",
                  "optional": false,
                  "variadic": false,
                },
              ],
              "static_": false,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse includes statement" {
  let idl =
    #|Window includes GlobalEventHandlers;
  @json.inspect(@parser.parse(idl), content=[
    [
      "Includes",
      {
        "extended_attributes": [],
        "interface_name": "Window",
        "mixin_name": "GlobalEventHandlers",
      },
    ],
  ])
}

///|
test "parse interface mixin" {
  let idl =
    #|interface mixin EventHandlers {
    #|  attribute EventHandler? onclick;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Mixin",
      {
        "extended_attributes": [],
        "name": "EventHandlers",
        "members": [
          [
            "Attribute",
            {
              "extended_attributes": [],
              "type_": ["Nullable", ["Identifier", "EventHandler"]],
              "name": "onclick",
              "is_readonly": false,
              "static_": false,
              "is_inherit": false,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse partial interface" {
  let idl =
    #|partial interface Document {
    #|  readonly attribute Element? body;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "PartialInterface",
      {
        "extended_attributes": [],
        "name": "Document",
        "members": [
          [
            "Attribute",
            {
              "extended_attributes": [],
              "type_": ["Nullable", ["Identifier", "Element"]],
              "name": "body",
              "is_readonly": true,
              "static_": false,
              "is_inherit": false,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse interface with constructor" {
  let idl =
    #|interface URL {
    #|  constructor(DOMString url);
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "URL",
        "members": [
          [
            "Constructor",
            {
              "extended_attributes": [],
              "arguments": [
                {
                  "extended_attributes": [],
                  "type_": "DOMString",
                  "name": "url",
                  "optional": false,
                  "variadic": false,
                },
              ],
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse interface with getter" {
  let idl =
    #|interface Collection {
    #|  getter Element? item(unsigned long index);
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "Collection",
        "members": [
          [
            "Operation",
            {
              "extended_attributes": [],
              "return_type": ["Nullable", ["Identifier", "Element"]],
              "name": "item",
              "arguments": [
                {
                  "extended_attributes": [],
                  "type_": "UnsignedLong",
                  "name": "index",
                  "optional": false,
                  "variadic": false,
                },
              ],
              "static_": false,
              "special": "Getter",
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse interface with iterable" {
  let idl =
    #|interface List {
    #|  iterable<DOMString>;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "List",
        "members": [
          ["Iterable", { "extended_attributes": [], "value_type": "DOMString" }],
        ],
      },
    ],
  ])
}

///|
test "parse interface with maplike" {
  let idl =
    #|interface Headers {
    #|  readonly maplike<DOMString, DOMString>;
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "Headers",
        "members": [
          [
            "Maplike",
            {
              "extended_attributes": [],
              "key_type": "DOMString",
              "value_type": "DOMString",
              "is_readonly": true,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse interface with static operation" {
  let idl =
    #|interface URL {
    #|  static boolean canParse(DOMString url);
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "URL",
        "members": [
          [
            "Operation",
            {
              "extended_attributes": [],
              "return_type": "Boolean",
              "name": "canParse",
              "arguments": [
                {
                  "extended_attributes": [],
                  "type_": "DOMString",
                  "name": "url",
                  "optional": false,
                  "variadic": false,
                },
              ],
              "static_": true,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse buffer type" {
  let idl =
    #|interface Blob {
    #|  ArrayBuffer arrayBuffer();
    #|};
  @json.inspect(@parser.parse(idl), content=[
    [
      "Interface",
      {
        "extended_attributes": [],
        "name": "Blob",
        "members": [
          [
            "Operation",
            {
              "extended_attributes": [],
              "return_type": "ArrayBuffer",
              "name": "arrayBuffer",
              "arguments": [],
              "static_": false,
            },
          ],
        ],
      },
    ],
  ])
}

///|
test "parse single line comment" {
  let idl =
    #|// This is a comment
    #|interface Foo { };
  @json.inspect(@parser.parse(idl), content=[
    ["Interface", { "extended_attributes": [], "name": "Foo", "members": [] }],
  ])
}

///|
test "parse multi line comment" {
  let idl =
    #|/* This is a
    #|   multi-line comment */
    #|interface Foo { };
  @json.inspect(@parser.parse(idl), content=[
    ["Interface", { "extended_attributes": [], "name": "Foo", "members": [] }],
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
test "comprehensive integration test" (t : @test.Test) {
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
  t.write(defs.to_json().stringify(indent=2))
  t.snapshot(filename="comprehensive integration test.json")
}
