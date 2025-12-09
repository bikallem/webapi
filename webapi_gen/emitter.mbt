///|
/// Convert a string to snake case
fn to_snake_case(s : String) -> String {
  let buf = StringBuilder::new()
  for i, c in s {
    match c {
      'A'..='Z' => {
        if i > 0 {
          buf.write_char('_')
        }
        buf.write_char(Int::to_char(c.to_int() + 32).unwrap())
      }
      c => buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
/// Convert a string to PascalCase
fn to_pascal_case(s : String) -> String {
  let buf = StringBuilder::new()
  let mut capitalize_next = true
  for c in s {
    match c {
      '_' | '-' | ' ' => capitalize_next = true
      c if capitalize_next => {
        match c {
          'a'..='z' => buf.write_char(Int::to_char(c.to_int() - 32).unwrap()) // uppercase
          c => buf.write_char(c)
        }
        capitalize_next = false
      }
      c => buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
test "to_snake_case converts PascalCase" {
  inspect(to_snake_case("HTMLElement"), content="h_t_m_l_element")
  inspect(to_snake_case("getElementById"), content="get_element_by_id")
  inspect(to_snake_case("DOMString"), content="d_o_m_string")
  inspect(to_snake_case("addEventListener"), content="add_event_listener")
}

///|
test "to_snake_case handles already snake_case" {
  inspect(to_snake_case("already_snake"), content="already_snake")
  inspect(to_snake_case("lowercase"), content="lowercase")
}

///|
test "to_pascal_case converts snake_case" {
  inspect(to_pascal_case("html_element"), content="HtmlElement")
  inspect(to_pascal_case("get_element_by_id"), content="GetElementById")
  inspect(to_pascal_case("dom_string"), content="DomString")
}

///|
test "to_pascal_case handles hyphenated strings" {
  inspect(to_pascal_case("no-repeat"), content="NoRepeat")
  inspect(to_pascal_case("read-write"), content="ReadWrite")
}

///|
test "to_pascal_case handles already PascalCase" {
  inspect(to_pascal_case("HTMLElement"), content="HTMLElement")
  inspect(to_pascal_case("DOMString"), content="DOMString")
}
