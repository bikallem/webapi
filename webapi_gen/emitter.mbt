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
