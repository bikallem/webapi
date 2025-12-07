///|
/// Unit tests for WebIDL parser
test "parse empty input" {
  let result = @webidl_parser.parse("")
  assert_eq(result.length(), 0)
}

///|
test "parse simple interface" {
  let idl =
    #|interface Foo {
    #|  attribute DOMString bar;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "Foo")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with inheritance" {
  let idl =
    #|interface Child : Parent {
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "Child")
      assert_eq(i.inheritance, Some("Parent"))
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with extended attributes" {
  let idl =
    #|[Exposed=Window]
    #|interface EventTarget {
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "EventTarget")
      assert_eq(i.extended_attributes.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse dictionary" {
  let idl =
    #|dictionary Options {
    #|  boolean enabled = true;
    #|  DOMString name;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Dictionary(d) => {
      assert_eq(d.name, "Options")
      assert_eq(d.members.length(), 2)
    }
    _ => fail("Expected Dictionary")
  }
}

///|
test "parse enum" {
  let idl =
    #|enum Color { "red", "green", "blue" };
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Enum_(e) => {
      assert_eq(e.name, "Color")
      assert_eq(e.values.length(), 3)
    }
    _ => fail("Expected Enum")
  }
}

///|
test "parse typedef" {
  let idl =
    #|typedef sequence<DOMString> StringList;
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Typedef(t) => assert_eq(t.name, "StringList")
    _ => fail("Expected Typedef")
  }
}

///|
test "parse callback function" {
  let idl =
    #|callback Handler = undefined (Event ev);
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::CallbackFunction(c) => {
      assert_eq(c.name, "Handler")
      assert_eq(c.arguments.length(), 1)
    }
    _ => fail("Expected CallbackFunction")
  }
}

///|
test "parse callback interface" {
  let idl =
    #|callback interface EventListener {
    #|  undefined handleEvent(Event event);
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::CallbackInterface(c) => {
      assert_eq(c.name, "EventListener")
      assert_eq(c.members.length(), 1)
    }
    _ => fail("Expected CallbackInterface")
  }
}

///|
test "parse namespace" {
  let idl =
    #|namespace CSS {
    #|  boolean supports(DOMString property, DOMString value);
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Namespace(n) => {
      assert_eq(n.name, "CSS")
      assert_eq(n.members.length(), 1)
    }
    _ => fail("Expected Namespace")
  }
}

///|
test "parse includes statement" {
  let idl =
    #|Window includes GlobalEventHandlers;
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Includes(i) => {
      assert_eq(i.interface_name, "Window")
      assert_eq(i.mixin_name, "GlobalEventHandlers")
    }
    _ => fail("Expected Includes")
  }
}

///|
test "parse interface mixin" {
  let idl =
    #|interface mixin EventHandlers {
    #|  attribute EventHandler? onclick;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Mixin(m) => {
      assert_eq(m.name, "EventHandlers")
      assert_eq(m.members.length(), 1)
    }
    _ => fail("Expected Mixin")
  }
}

///|
test "parse partial interface" {
  let idl =
    #|partial interface Document {
    #|  readonly attribute Element? body;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::PartialInterface(p) => {
      assert_eq(p.name, "Document")
      assert_eq(p.members.length(), 1)
    }
    _ => fail("Expected PartialInterface")
  }
}

///|
test "parse interface with constructor" {
  let idl =
    #|interface URL {
    #|  constructor(DOMString url);
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "URL")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with getter" {
  let idl =
    #|interface Collection {
    #|  getter Element? item(unsigned long index);
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "Collection")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with iterable" {
  let idl =
    #|interface List {
    #|  iterable<DOMString>;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "List")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with maplike" {
  let idl =
    #|interface Headers {
    #|  readonly maplike<DOMString, DOMString>;
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "Headers")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse interface with static operation" {
  let idl =
    #|interface URL {
    #|  static boolean canParse(DOMString url);
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "URL")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface")
  }
}

///|
test "parse buffer type" {
  let idl =
    #|interface Blob {
    #|  ArrayBuffer arrayBuffer();
    #|};
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => assert_eq(i.name, "Blob")
    // Check that the operation return type is Type::ArrayBuffer
    _ => fail("Expected Interface")
  }
}

///|
test "parse single line comment" {
  let idl =
    #|// This is a comment
    #|interface Foo { };
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
}

///|
test "parse multi line comment" {
  let idl =
    #|/* This is a
    #|   multi-line comment */
    #|interface Foo { };
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 1)
}

///|
test "tokenize returns positions" {
  let idl = "interface Foo { };"
  let tokens = @webidl_parser.tokenize(idl)
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
  let tokens = @webidl_parser.tokenize(idl)
  // Find 'Foo' token - should be on line 2
  let foo_token = tokens
    .iter()
    .find_first(fn(t) {
      match t.0 {
        @webidl_parser.Token::IDENTIFIER(name) => name == "Foo"
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
  let tokens = @webidl_parser.tokenize(idl)
  // 'interface' starts at column 4 (after 3 spaces)
  let (_, start, _) = tokens[0]
  assert_eq(start.column, 4)
}

///|
test "position file is set" {
  let idl = "interface Foo { };"
  // Note: tokenize doesn't take file parameter in current API
  // but the Position struct supports it
  let tokens = @webidl_parser.tokenize(idl)
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
  let result = @webidl_parser.parse(idl)
  assert_eq(result.length(), 19)

  // 1. Interface: EventTarget (3 members)
  match result[0] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "EventTarget")
      assert_eq(i.members.length(), 3)
    }
    _ => fail("Expected Interface EventTarget")
  }

  // 2. Callback Interface: EventListener
  match result[1] {
    @webidl_parser.Definition::CallbackInterface(c) =>
      assert_eq(c.name, "EventListener")
    _ => fail("Expected CallbackInterface EventListener")
  }

  // 3. Partial Interface: Document (2 members)
  match result[2] {
    @webidl_parser.Definition::PartialInterface(p) => {
      assert_eq(p.name, "Document")
      assert_eq(p.members.length(), 2)
    }
    _ => fail("Expected PartialInterface Document")
  }

  // 4. Mixin: WindowEventHandlers (2 members)
  match result[3] {
    @webidl_parser.Definition::Mixin(m) => {
      assert_eq(m.name, "WindowEventHandlers")
      assert_eq(m.members.length(), 2)
    }
    _ => fail("Expected Mixin WindowEventHandlers")
  }

  // 5. Partial Mixin: GlobalEventHandlers (1 members)
  match result[4] {
    @webidl_parser.Definition::PartialMixin(p) => {
      assert_eq(p.name, "GlobalEventHandlers")
      assert_eq(p.members.length(), 1)
    }
    _ => fail("Expected PartialMixin GlobalEventHandlers")
  }

  // 6. Namespace: CSS (2 members)
  match result[5] {
    @webidl_parser.Definition::Namespace(n) => {
      assert_eq(n.name, "CSS")
      assert_eq(n.members.length(), 2)
    }
    _ => fail("Expected Namespace CSS")
  }

  // 7. Partial Namespace: CSS (1 members)
  match result[6] {
    @webidl_parser.Definition::PartialNamespace(p) => {
      assert_eq(p.name, "CSS")
      assert_eq(p.members.length(), 1)
    }
    _ => fail("Expected PartialNamespace CSS")
  }

  // 8. Dictionary: AddEventListenerOptions (2 members)
  match result[7] {
    @webidl_parser.Definition::Dictionary(d) => {
      assert_eq(d.name, "AddEventListenerOptions")
      assert_eq(d.members.length(), 2)
    }
    _ => fail("Expected Dictionary AddEventListenerOptions")
  }

  // 9. Dictionary: EventListenerOptions (1 members)
  match result[8] {
    @webidl_parser.Definition::Dictionary(d) => {
      assert_eq(d.name, "EventListenerOptions")
      assert_eq(d.members.length(), 1)
    }
    _ => fail("Expected Dictionary EventListenerOptions")
  }

  // 10. Partial Dictionary: RequestInit (2 members)
  match result[9] {
    @webidl_parser.Definition::PartialDictionary(p) => {
      assert_eq(p.name, "RequestInit")
      assert_eq(p.members.length(), 2)
    }
    _ => fail("Expected PartialDictionary RequestInit")
  }

  // 11. Enum: ScrollBehavior (3 values)
  match result[10] {
    @webidl_parser.Definition::Enum_(e) => {
      assert_eq(e.name, "ScrollBehavior")
      assert_eq(e.values.length(), 3)
    }
    _ => fail("Expected Enum ScrollBehavior")
  }

  // 12. Typedef: DOMStringList
  match result[11] {
    @webidl_parser.Definition::Typedef(t) => assert_eq(t.name, "DOMStringList")
    _ => fail("Expected Typedef DOMStringList")
  }

  // 13. Callback: EventHandler
  match result[12] {
    @webidl_parser.Definition::CallbackFunction(c) =>
      assert_eq(c.name, "EventHandler")
    _ => fail("Expected CallbackFunction EventHandler")
  }

  // 14. Includes: Window includes WindowEventHandlers
  match result[13] {
    @webidl_parser.Definition::Includes(i) => {
      assert_eq(i.interface_name, "Window")
      assert_eq(i.mixin_name, "WindowEventHandlers")
    }
    _ => fail("Expected Includes")
  }

  // 15. Interface: HTMLCollection (4 members)
  match result[14] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "HTMLCollection")
      assert_eq(i.members.length(), 4)
    }
    _ => fail("Expected Interface HTMLCollection")
  }

  // 16. Interface: Headers (1 members)
  match result[15] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "Headers")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface Headers")
  }

  // 17. Interface: DOMTokenList (1 members)
  match result[16] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "DOMTokenList")
      assert_eq(i.members.length(), 1)
    }
    _ => fail("Expected Interface DOMTokenList")
  }

  // 18. Interface: URL (2 members)
  match result[17] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "URL")
      assert_eq(i.members.length(), 2)
    }
    _ => fail("Expected Interface URL")
  }

  // 19. Interface: HTMLImageElement (2 members)
  match result[18] {
    @webidl_parser.Definition::Interface(i) => {
      assert_eq(i.name, "HTMLImageElement")
      assert_eq(i.members.length(), 2)
    }
    _ => fail("Expected Interface HTMLImageElement")
  }
}
