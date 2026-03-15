///|
fn is_js_ident_char(ch : UInt16) -> Bool {
  (ch >= 'a' && ch <= 'z') ||
  (ch >= 'A' && ch <= 'Z') ||
  (ch >= '0' && ch <= '9') ||
  ch == '_' ||
  ch == '$'
}

///|
pub fn minify_js(source : String) -> String {
  let len = source.length()
  let out = StringBuilder::new()
  let mut i = 0
  let mut pending_space = false
  let mut last_was_ident = false
  while i < len {
    let ch = code_unit_at(source, i)
    if ch == '/' && i + 1 < len && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i)
      pending_space = true
    } else if ch == '/' && i + 1 < len && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i)
      pending_space = true
    } else if ch == '"' {
      let end_ = skip_js_string(source, i, '"')
      out.write_string(slice(source, i, end_))
      i = end_
      pending_space = false
      last_was_ident = false
    } else if ch == '\'' {
      let end_ = skip_js_string(source, i, '\'')
      out.write_string(slice(source, i, end_))
      i = end_
      pending_space = false
      last_was_ident = false
    } else if ch == '`' {
      let end_ = skip_template_literal(source, i)
      out.write_string(slice(source, i, end_))
      i = end_
      pending_space = false
      last_was_ident = false
    } else if is_js_space(ch) {
      pending_space = true
      i += 1
    } else {
      if pending_space && last_was_ident && is_js_ident_char(ch) {
        out.write_char(' ')
      }
      pending_space = false
      out.write_char(ch.to_int().unsafe_to_char())
      last_was_ident = is_js_ident_char(ch)
      i += 1
    }
  }
  out.to_string()
}
