///|
test "emit_js_getter" {
  let result = emit_js_getter("innerHTML")
  inspect(result, content="    get_innerHTML: (obj) => obj.innerHTML")
}

///|
test "emit_js_setter" {
  let result = emit_js_setter("innerHTML")
  inspect(
    result,
    content="    set_innerHTML: (obj, value) => { obj.innerHTML = value; }",
  )
}
