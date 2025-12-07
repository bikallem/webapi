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
