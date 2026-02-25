///|
/// Helper: build Bytes from an array of ints.
fn bytes_of(values : Array[Int]) -> Bytes {
  Bytes::from_iter(values.iter().map(fn(v) { v.to_byte() }))
}

///|
/// Helper: build a minimal wasm binary with only func imports.
fn make_wasm_with_func_imports(
  imports : Array[(String, String)]
) -> Bytes {
  let buf : Array[Int] = []
  // Build import section payload
  let payload : Array[Int] = []
  payload.push(imports.length()) // count (assumes < 128)
  for pair in imports {
    let mod_name = pair.0
    let field = pair.1
    payload.push(mod_name.length())
    for c in mod_name {
      payload.push(c.to_int())
    }
    payload.push(field.length())
    for c in field {
      payload.push(c.to_int())
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
fn make_modules(names : Array[String]) -> @hashset.HashSet[String] {
  let s : @hashset.HashSet[String] = @hashset.new()
  for n in names {
    s.add(n)
  }
  s
}

// ===== read_leb128 =====

///|
test "read_leb128: single byte" {
  let (value, offset) = read_leb128(bytes_of([42]), 0)
  assert_eq(value, 42)
  assert_eq(offset, 1)
}

///|
test "read_leb128: zero" {
  let (value, offset) = read_leb128(bytes_of([0]), 0)
  assert_eq(value, 0)
  assert_eq(offset, 1)
}

///|
test "read_leb128: multi-byte 300" {
  // 300 = 0b100101100 → LEB128: 0xAC 0x02
  let (value, offset) = read_leb128(bytes_of([0xAC, 0x02]), 0)
  assert_eq(value, 300)
  assert_eq(offset, 2)
}

///|
test "read_leb128: 127 (max single byte)" {
  let (value, _) = read_leb128(bytes_of([0x7F]), 0)
  assert_eq(value, 127)
}

///|
test "read_leb128: 128 (min two bytes)" {
  let (value, offset) = read_leb128(bytes_of([0x80, 0x01]), 0)
  assert_eq(value, 128)
  assert_eq(offset, 2)
}

///|
test "read_leb128: at nonzero offset" {
  let (value, offset) = read_leb128(bytes_of([0xFF, 0xFF, 5]), 2)
  assert_eq(value, 5)
  assert_eq(offset, 3)
}

// ===== read_utf8_string =====

///|
test "read_utf8_string: simple" {
  let (s, offset) = read_utf8_string(bytes_of([3, 0x61, 0x62, 0x63]), 0)
  assert_eq(s, "abc")
  assert_eq(offset, 4)
}

///|
test "read_utf8_string: empty" {
  let (s, offset) = read_utf8_string(bytes_of([0]), 0)
  assert_eq(s, "")
  assert_eq(offset, 1)
}

///|
test "read_utf8_string: at offset" {
  let (s, offset) = read_utf8_string(bytes_of([0xFF, 0xFF, 2, 0x68, 0x69]), 2)
  assert_eq(s, "hi")
  assert_eq(offset, 5)
}

// ===== skip_valtype =====

///|
test "skip_valtype: simple i32" {
  assert_eq(skip_valtype(bytes_of([0x7F]), 0), 1)
}

///|
test "skip_valtype: externref" {
  assert_eq(skip_valtype(bytes_of([0x6F]), 0), 1)
}

///|
test "skip_valtype: ref extern (0x64 + heaptype)" {
  assert_eq(skip_valtype(bytes_of([0x64, 0x6F]), 0), 2)
}

///|
test "skip_valtype: ref null extern (0x63 + heaptype)" {
  assert_eq(skip_valtype(bytes_of([0x63, 0x6F]), 0), 2)
}

///|
test "skip_valtype: ref with multi-byte type index" {
  // 0x64 followed by type index 200 (LEB128: 0xC8 0x01)
  assert_eq(skip_valtype(bytes_of([0x64, 0xC8, 0x01]), 0), 3)
}

// ===== skip_limits =====

///|
test "skip_limits: without max" {
  assert_eq(skip_limits(bytes_of([0x00, 10]), 0), 2)
}

///|
test "skip_limits: with max" {
  assert_eq(skip_limits(bytes_of([0x01, 10, 100]), 0), 3)
}

// ===== parse_wasm_imports =====

///|
test "parse_wasm_imports: two func imports" {
  let wasm = make_wasm_with_func_imports([("env", "foo"), ("env", "bar")])
  inspect(parse_wasm_imports(wasm), content=(#|[("env", "foo"), ("env", "bar")]
  ))
}

///|
test "parse_wasm_imports: no import section" {
  let wasm = bytes_of([
    0x00, 0x61, 0x73, 0x6d, // magic
    0x01, 0x00, 0x00, 0x00, // version
    0x00, 0x02, 0x00, 0x00, // custom section id=0, size=2, 2 bytes payload
  ])
  inspect(parse_wasm_imports(wasm), content=(#|[]
  ))
}

///|
test "parse_wasm_imports: different modules" {
  let wasm = make_wasm_with_func_imports([
    ("webapi_Node", "get"), ("webapi_Element", "set"), ("JsValue", "null"),
  ])
  inspect(parse_wasm_imports(wasm), content=(#|[("webapi_Node", "get"), ("webapi_Element", "set"), ("JsValue", "null")]
  ))
}

///|
test "parse_wasm_imports: global import with ref extern" {
  let payload : Array[Int] = [
    1, // count
    1, 0x5F, // module "_"
    1, 0x78, // field "x"
    3, // kind = global
    0x64, 0x6F, // valtype = (ref extern)
    0x00, // mutability = const
  ]
  let buf : Array[Int] = [
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, // header
    0x02, // import section id
  ]
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(parse_wasm_imports(bytes_of(buf)), content=(#|[("_", "x")]
  ))
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
    0, 0, // kind=func, type=0
  ]
  buf.push(0x02)
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(parse_wasm_imports(bytes_of(buf)), content=(#|[("m", "f")]
  ))
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
  let buf : Array[Int] = [
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00,
    0x02,
  ]
  buf.push(payload.length())
  for v in payload {
    buf.push(v)
  }
  inspect(parse_wasm_imports(bytes_of(buf)), content=(#|[("env", "foo"), ("_", "hello")]
  ))
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
  inspect(extract_module_name("  webapi_Node: {"), content="Some(\"webapi_Node\")")
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
  let result = filter_js_modules(source, make_modules(["ModA", "ModC"]))
  inspect(
    result,
    content=
      (#|// header
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
)
    ,
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
  let result = filter_js_modules(source, make_modules(["moonbit:ffi"]))
  inspect(
    result,
    content=
      (#|export const wasmImportObject = {
      #|  "moonbit:ffi": {
      #|    make_closure: (f, c) => f.bind(null, c)
      #|  },
      #|};
      #|
)
    ,
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
  let result = filter_js_modules(source, make_modules([]))
  inspect(
    result,
    content=
      (#|export const wasmImportObject = {
      #|};
      #|
)
    ,
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
  let result = filter_js_modules(source, make_modules(["Mod"]))
  inspect(
    result,
    content=
      (#|export const wasmImportObject = {
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
)
    ,
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
  let result = filter_js_modules(source, make_modules(["Mod"]))
  inspect(
    result,
    content=
      (#|/**
      #| * Auto-generated
      #| */
      #|
      #|export const wasmImportObject = {
      #|  Mod: {
      #|    x: () => 1
      #|  }
      #|};
      #|
)
    ,
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
  let result = filter_js_modules(source, make_modules(["A", "B"]))
  inspect(
    result,
    content=
      (#|export const wasmImportObject = {
      #|  A: {
      #|    x: () => 1
      #|  },
      #|
      #|  B: {
      #|    y: () => 2
      #|  }
      #|};
      #|
)
    ,
  )
}
