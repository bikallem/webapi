///|
/// Helper: build Bytes from an array of ints.
fn bytes_of(values : Array[Int]) -> Bytes {
  Bytes::from_iter(values.iter().map(fn(v) { v.to_byte() }))
}

///|
/// Helper: build a minimal wasm binary with only func imports.
fn make_wasm_with_func_imports(imports : Array[(String, String)]) -> Bytes {
  let buf : Array[Int] = []
  // Build import section payload
  let payload : Array[Int] = []
  payload.push(imports.length()) // count (assumes < 128)
  for pair in imports {
    let mod_name = pair.0
    let field = pair.1
    let mod_name_utf8 = @utf8.encode(mod_name)
    payload.push(mod_name_utf8.length())
    for b in mod_name_utf8 {
      payload.push(b.to_int())
    }
    let field_utf8 = @utf8.encode(field)
    payload.push(field_utf8.length())
    for b in field_utf8 {
      payload.push(b.to_int())
    }
    payload.push(0) // kind = func
    payload.push(0) // type index = 0
  }
  // Magic + version
  buf.push(0x00)
  buf.push(0x61)
  buf.push(0x73)
  buf.push(0x6d)
  buf.push(0x01)
  buf.push(0x00)
  buf.push(0x00)
  buf.push(0x00)
  // Import section: id=2, size, payload
  buf.push(0x02)
  buf.push(payload.length()) // size (assumes < 128)
  for v in payload {
    buf.push(v)
  }
  bytes_of(buf)
}

///|
/// Helper: build required imports map from (module, field) pairs.
/// If fields is empty for a module, all functions in that module are kept.
fn make_imports(
  pairs : Array[(String, Array[String])],
) -> Map[String, @hashset.HashSet[String]] {
  let m : Map[String, @hashset.HashSet[String]] = {}
  for pair in pairs {
    let (mod_name, fields) = pair
    let s : @hashset.HashSet[String] = @hashset.new()
    for f in fields {
      s.add(f)
    }
    m[mod_name] = s
  }
  m
}

// ===== read_leb128 =====

///|
test "read_leb128: single byte" {
  let (value, offset) = try! read_leb128(bytes_of([42]), 0)
  assert_eq(value, 42)
  assert_eq(offset, 1)
}

///|
test "read_leb128: zero" {
  let (value, offset) = try! read_leb128(bytes_of([0]), 0)
  assert_eq(value, 0)
  assert_eq(offset, 1)
}

///|
test "read_leb128: multi-byte 300" {
  // 300 = 0b100101100 → LEB128: 0xAC 0x02
  let (value, offset) = try! read_leb128(bytes_of([0xAC, 0x02]), 0)
  assert_eq(value, 300)
  assert_eq(offset, 2)
}

///|
test "read_leb128: 127 (max single byte)" {
  let (value, _) = try! read_leb128(bytes_of([0x7F]), 0)
  assert_eq(value, 127)
}

///|
test "read_leb128: 128 (min two bytes)" {
  let (value, offset) = try! read_leb128(bytes_of([0x80, 0x01]), 0)
  assert_eq(value, 128)
  assert_eq(offset, 2)
}

///|
test "read_leb128: at nonzero offset" {
  let (value, offset) = try! read_leb128(bytes_of([0xFF, 0xFF, 5]), 2)
  assert_eq(value, 5)
  assert_eq(offset, 3)
}

// ===== read_utf8_string =====

///|
test "read_utf8_string: simple" {
  let (s, offset) = try! read_utf8_string(bytes_of([3, 0x61, 0x62, 0x63]), 0)
  assert_eq(s, "abc")
  assert_eq(offset, 4)
}

///|
test "read_utf8_string: empty" {
  let (s, offset) = try! read_utf8_string(bytes_of([0]), 0)
  assert_eq(s, "")
  assert_eq(offset, 1)
}

///|
test "read_utf8_string: at offset" {
  let (s, offset) = try! read_utf8_string(
    bytes_of([0xFF, 0xFF, 2, 0x68, 0x69]),
    2,
  )
  assert_eq(s, "hi")
  assert_eq(offset, 5)
}

///|
test "read_utf8_string: decodes non-ascii UTF-8" {
  let (s, offset) = try! read_utf8_string(
    bytes_of([6, 0xE4, 0xBD, 0xA0, 0xE5, 0xA5, 0xBD]),
    0,
  )
  assert_eq(s, "你好")
  assert_eq(offset, 7)
}

///|
test "read_utf8_string: invalid UTF-8 raises InvalidUtf8" {
  try read_utf8_string(bytes_of([2, 0xC3, 0x28]), 0) catch {
    InvalidUtf8(offset) => assert_eq(offset, 1)
    _ => fail("expected InvalidUtf8")
  } noraise {
    _ => fail("expected InvalidUtf8")
  }
}

// ===== skip_valtype =====

///|
test "skip_valtype: simple i32" {
  assert_eq(try! skip_valtype(bytes_of([0x7F]), 0), 1)
}

///|
test "skip_valtype: externref" {
  assert_eq(try! skip_valtype(bytes_of([0x6F]), 0), 1)
}

///|
test "skip_valtype: ref extern (0x64 + heaptype)" {
  assert_eq(try! skip_valtype(bytes_of([0x64, 0x6F]), 0), 2)
}

///|
test "skip_valtype: ref null extern (0x63 + heaptype)" {
  assert_eq(try! skip_valtype(bytes_of([0x63, 0x6F]), 0), 2)
}

///|
test "skip_valtype: ref with multi-byte type index" {
  // 0x64 followed by type index 200 (LEB128: 0xC8 0x01)
  assert_eq(try! skip_valtype(bytes_of([0x64, 0xC8, 0x01]), 0), 3)
}

// ===== skip_limits =====

///|
test "skip_limits: without max" {
  assert_eq(try! skip_limits(bytes_of([0x00, 10]), 0), 2)
}

///|
test "skip_limits: with max" {
  assert_eq(try! skip_limits(bytes_of([0x01, 10, 100]), 0), 3)
}

// ===== parse_wasm_imports =====

///|
test "parse_wasm_imports: two func imports" {
  let wasm = make_wasm_with_func_imports([("env", "foo"), ("env", "bar")])
  inspect(
    try! parse_wasm_imports(wasm),
    content=(
      #|[("env", "foo"), ("env", "bar")]
    ),
  )
}

///|
test "parse_wasm_imports: no import section" {
  let wasm = bytes_of([
    0x00, 0x61, 0x73, 0x6d, // magic
     0x01, 0x00, 0x00, 0x00, // version
     0x00, 0x02, 0x00, 0x00, // custom section id=0, size=2, 2 bytes payload
  ])
  inspect(
    try! parse_wasm_imports(wasm),
    content=(
      #|[]
    ),
  )
}

///|
test "parse_wasm_imports: different modules" {
  let wasm = make_wasm_with_func_imports([
    ("webapi_Node", "get"),
    ("webapi_Element", "set"),
    ("JsValue", "null"),
  ])
  inspect(
    try! parse_wasm_imports(wasm),
    content=(
      #|[("webapi_Node", "get"), ("webapi_Element", "set"), ("JsValue", "null")]
    ),
  )
}

///|
test "parse_wasm_imports: decodes UTF-8 module and field names" {
  let wasm = make_wasm_with_func_imports([("模块", "函數")])
  inspect(
    try! parse_wasm_imports(wasm),
    content=(
      #|[("模块", "函數")]
    ),
  )
}

///|
test "parse_wasm_imports: global import with ref extern" {
  let payload : Array[Int] = [
    1, // count
     1, 0x5F, // module "_"
     1, 0x78, // field "x"
     3, // kind = global
     0x64, 0x6F, // valtype = (ref extern)
     0x00,
  ] // mutability = const
  let buf : Array[Int] = [
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, // header
     0x02,
  ] // import section id
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(
    try! parse_wasm_imports(bytes_of(buf)),
    content=(
      #|[("_", "x")]
    ),
  )
}

///|
test "parse_wasm_imports: skips section before imports" {
  let buf : Array[Int] = [
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, // header
     0x01, 0x03, 0x00, 0x00, 0x00, // type section: id=1, size=3, dummy
  ]
  let payload : Array[Int] = [
    1, // count
     1, 0x6D, // module "m"
     1, 0x66, // field "f"
     0, 0,
  ] // kind=func, type=0
  buf.push(0x02)
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(
    try! parse_wasm_imports(bytes_of(buf)),
    content=(
      #|[("m", "f")]
    ),
  )
}

///|
test "parse_wasm_imports: mixed func and global imports" {
  let payload : Array[Int] = [
    2, // count
     3, 0x65, 0x6e, 0x76, // module "env"
     3, 0x66, 0x6f, 0x6f, // field "foo"
     0, 0, // kind=func, type=0
     1, 0x5F, // module "_"
     5, 0x68, 0x65, 0x6c, 0x6c, 0x6f, // field "hello"
     3, // kind=global
     0x6F, // valtype=externref (single byte)
     0x00, // mutability=const
  ]
  let buf : Array[Int] = [0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x02]
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(
    try! parse_wasm_imports(bytes_of(buf)),
    content=(
      #|[("env", "foo"), ("_", "hello")]
    ),
  )
}

///|
test "parse_wasm_imports: bad magic raises InvalidMagic" {
  try parse_wasm_imports(bytes_of([0x01, 0x02, 0x03, 0x04, 0, 0, 0, 0])) catch {
    InvalidMagic => ()
    _ => fail("expected InvalidMagic")
  } noraise {
    _ => fail("expected InvalidMagic")
  }
}

///|
test "parse_wasm_imports: truncated import payload raises UnexpectedEnd" {
  let wasm = bytes_of([
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x02, 0x04, 0x01, 0x01, 0x65,
    0x01,
  ])
  try parse_wasm_imports(wasm) catch {
    UnexpectedEnd(context, offset) => {
      assert_eq(context, "UTF-8 string")
      assert_eq(offset, 14)
    }
    _ => fail("expected UnexpectedEnd")
  } noraise {
    _ => fail("expected parse failure")
  }
}

///|
test "parse_wasm_imports: invalid UTF-8 raises InvalidUtf8" {
  let wasm = bytes_of([
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x02, 0x08, 0x01, 0x02, 0xC3,
    0x28, 0x01, 0x66, 0x00, 0x00,
  ])
  try parse_wasm_imports(wasm) catch {
    InvalidUtf8(offset) => assert_eq(offset, 12)
    _ => fail("expected InvalidUtf8")
  } noraise {
    _ => fail("expected parse failure")
  }
}

// ===== count_braces =====

///|
test "count_braces: open brace" {
  assert_eq(count_braces("  foo: {"), 1)
}

///|
test "count_braces: close brace" {
  assert_eq(count_braces("  },"), -1)
}

///|
test "count_braces: balanced" {
  assert_eq(count_braces("  x: (a) => { return a; },"), 0)
}

///|
test "count_braces: no braces" {
  assert_eq(count_braces("    hello: () => 42"), 0)
}

///|
test "count_braces: braces in double-quoted string" {
  let line = "    x: () => \"}{}{}\""
  assert_eq(count_braces(line), 0)
}

///|
test "count_braces: braces in single-quoted string" {
  assert_eq(count_braces("    x: () => '}{}'"), 0)
}

///|
test "count_braces: braces in template literal" {
  assert_eq(count_braces("    x: () => `}{}`"), 0)
}

///|
test "count_braces: escaped quote inside string" {
  let line = "    x: \"a\\\"}\""
  assert_eq(count_braces(line), 0)
}

// ===== extract_module_name =====

///|
test "extract_module_name: unquoted" {
  inspect(
    extract_module_name("  webapi_Node: {"),
    content="Some(\"webapi_Node\")",
  )
}

///|
test "extract_module_name: quoted" {
  inspect(
    extract_module_name("  \"moonbit:ffi\": {"),
    content="Some(\"moonbit:ffi\")",
  )
}

///|
test "extract_module_name: wrong indent (3 spaces)" {
  inspect(extract_module_name("   foo: {"), content="None")
}

///|
test "extract_module_name: no trailing brace" {
  inspect(extract_module_name("  foo: bar"), content="None")
}

///|
test "extract_module_name: too short" {
  inspect(extract_module_name("  a"), content="None")
}

///|
test "extract_module_name: no indent" {
  inspect(extract_module_name("foo: {"), content="None")
}

///|
test "extract_module_name: single space indent" {
  inspect(extract_module_name(" foo: {"), content="None")
}

// ===== extract_function_name =====

///|
test "extract_function_name: simple" {
  inspect(extract_function_name("    foo: () => 1"), content="Some(\"foo\")")
}

///|
test "extract_function_name: with arrow function body" {
  inspect(
    extract_function_name(
      "    setAttribute: (obj, name, value) => obj.setAttribute(name, value),",
    ),
    content="Some(\"setAttribute\")",
  )
}

///|
test "extract_function_name: multi-line start" {
  inspect(
    extract_function_name("    define: (tag, ctor) => {"),
    content="Some(\"define\")",
  )
}

///|
test "extract_function_name: underscore prefix" {
  inspect(
    extract_function_name("    get_textContent: (obj) => obj.textContent"),
    content="Some(\"get_textContent\")",
  )
}

///|
test "extract_function_name: wrong indent (2 spaces)" {
  inspect(extract_function_name("  foo: () => 1"), content="None")
}

///|
test "extract_function_name: wrong indent (6 spaces)" {
  inspect(extract_function_name("      foo: () => 1"), content="None")
}

///|
test "extract_function_name: no colon-space" {
  inspect(extract_function_name("    foo = 1"), content="None")
}

///|
test "extract_function_name: too short" {
  inspect(extract_function_name("    a"), content="None")
}

// ===== filter_js_modules =====

///|
test "filter_js_modules: keeps matching modules" {
  let source =
    #|// header
    #|export const wasmImportObject = {
    #|  ModA: {
    #|    foo: () => 1
    #|  },
    #|
    #|  ModB: {
    #|    bar: () => 2
    #|  },
    #|
    #|  ModC: {
    #|    baz: () => 3
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("ModA", ["foo"]), ("ModC", ["baz"])]),
  )
  inspect(
    result,
    content=(
      #|// header
      #|export const wasmImportObject = {
      #|  ModA: {
      #|    foo: () => 1
      #|  },
      #|
      #|  ModC: {
      #|    baz: () => 3
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: keeps quoted module names" {
  let source =
    #|export const wasmImportObject = {
    #|  "moonbit:ffi": {
    #|    make_closure: (f, c) => f.bind(null, c)
    #|  },
    #|
    #|  JsValue: {
    #|    null: () => null
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("moonbit:ffi", ["make_closure"])]),
  )
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  "moonbit:ffi": {
      #|    make_closure: (f, c) => f.bind(null, c)
      #|  },
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: no matching modules" {
  let source =
    #|export const wasmImportObject = {
    #|  ModA: {
    #|    foo: () => 1
    #|  }
    #|};
  let result = filter_js_modules(source, make_imports([]))
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: nested braces in method body" {
  let source =
    #|export const wasmImportObject = {
    #|  Mod: {
    #|    define: (tag, ctor) => {
    #|      class C extends HTMLElement {
    #|        constructor() { super(); ctor(this); }
    #|      }
    #|      customElements.define(tag, C);
    #|    }
    #|  }
    #|};
  let result = filter_js_modules(source, make_imports([("Mod", ["define"])]))
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  Mod: {
      #|    define: (tag, ctor) => {
      #|      class C extends HTMLElement {
      #|        constructor() { super(); ctor(this); }
      #|      }
      #|      customElements.define(tag, C);
      #|    }
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: preserves header" {
  let source =
    #|/**
    #| * Auto-generated
    #| */
    #|
    #|export const wasmImportObject = {
    #|  Mod: {
    #|    x: () => 1
    #|  }
    #|};
  let result = filter_js_modules(source, make_imports([("Mod", ["x"])]))
  inspect(
    result,
    content=(
      #|/**
      #| * Auto-generated
      #| */
      #|
      #|export const wasmImportObject = {
      #|  Mod: {
      #|    x: () => 1
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: all modules kept" {
  let source =
    #|export const wasmImportObject = {
    #|  A: {
    #|    x: () => 1
    #|  },
    #|
    #|  B: {
    #|    y: () => 2
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("A", ["x"]), ("B", ["y"])]),
  )
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  A: {
      #|    x: () => 1
      #|  },
      #|
      #|  B: {
      #|    y: () => 2
      #|  }
      #|};
      #|
    ),
  )
}

// ===== function-level filtering =====

///|
test "filter_js_modules: keeps only required functions" {
  let source =
    #|export const wasmImportObject = {
    #|  JsValue: {
    #|    undefined: () => undefined,
    #|    null: () => null
    #|  }
    #|};
  let result = filter_js_modules(source, make_imports([("JsValue", ["null"])]))
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  JsValue: {
      #|    null: () => null
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: keeps multiple functions, removes others" {
  let source =
    #|export const wasmImportObject = {
    #|  webapi_Node: {
    #|    appendChild: (obj, node) => obj.appendChild(node),
    #|    removeChild: (obj, node) => obj.removeChild(node),
    #|    get_textContent: (obj) => obj.textContent,
    #|    set_textContent: (obj, v) => { obj.textContent = v; }
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("webapi_Node", ["appendChild", "get_textContent"])]),
  )
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  webapi_Node: {
      #|    appendChild: (obj, node) => obj.appendChild(node),
      #|    get_textContent: (obj) => obj.textContent,
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: keeps multi-line function" {
  let source =
    #|export const wasmImportObject = {
    #|  Mod: {
    #|    simple: () => 1,
    #|    complex: (tag, ctor) => {
    #|      class C extends HTMLElement {
    #|        constructor() { super(); ctor(this); }
    #|      }
    #|      customElements.define(tag, C);
    #|    },
    #|    other: () => 2
    #|  }
    #|};
  let result = filter_js_modules(source, make_imports([("Mod", ["complex"])]))
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  Mod: {
      #|    complex: (tag, ctor) => {
      #|      class C extends HTMLElement {
      #|        constructor() { super(); ctor(this); }
      #|      }
      #|      customElements.define(tag, C);
      #|    },
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: removes all functions leaves empty module" {
  let source =
    #|export const wasmImportObject = {
    #|  Mod: {
    #|    foo: () => 1,
    #|    bar: () => 2
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("Mod", ["nonexistent"])]),
  )
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  Mod: {
      #|  }
      #|};
      #|
    ),
  )
}

///|
test "filter_js_modules: function-level with multiple modules" {
  let source =
    #|export const wasmImportObject = {
    #|  ModA: {
    #|    a1: () => 1,
    #|    a2: () => 2,
    #|    a3: () => 3
    #|  },
    #|
    #|  ModB: {
    #|    b1: () => 10,
    #|    b2: () => 20
    #|  }
    #|};
  let result = filter_js_modules(
    source,
    make_imports([("ModA", ["a1", "a3"]), ("ModB", ["b2"])]),
  )
  inspect(
    result,
    content=(
      #|export const wasmImportObject = {
      #|  ModA: {
      #|    a1: () => 1,
      #|    a3: () => 3
      #|  },
      #|
      #|  ModB: {
      #|    b2: () => 20
      #|  }
      #|};
      #|
    ),
  )
}
