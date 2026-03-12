///|
struct ObjectEntry {
  key : String
  start : Int
  value_start : Int
  value_end : Int
  end : Int
}

///|
fn code_unit_at(source : String, pos : Int) -> UInt16 {
  source.code_unit_at(pos)
}

///|
fn slice(source : String, start : Int, end_ : Int) -> String {
  source[start:end_].to_string()
}

///|
fn is_js_space(ch : UInt16) -> Bool {
  match ch {
    ' ' | '\n' | '\r' | '\t' => true
    _ => false
  }
}

///|
fn skip_line_comment(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos + 2
  while i < limit && code_unit_at(source, i) != '\n' {
    i += 1
  }
  i
}

///|
fn skip_block_comment(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos + 2
  while i + 1 < limit {
    if code_unit_at(source, i) == '*' && code_unit_at(source, i + 1) == '/' {
      return i + 2
    }
    i += 1
  }
  limit
}

///|
fn skip_js_string(
  source : String,
  pos : Int,
  quote : UInt16,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos + 1
  let mut escaped = false
  while i < limit {
    let ch = code_unit_at(source, i)
    if escaped {
      escaped = false
      i += 1
    } else if ch == '\\' {
      escaped = true
      i += 1
    } else if ch == quote {
      return i + 1
    } else {
      i += 1
    }
  }
  limit
}

///|
fn skip_template_expression(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos
  let mut paren_depth = 0
  let mut bracket_depth = 0
  let mut brace_depth = 1
  while i < limit && brace_depth > 0 {
    let ch = code_unit_at(source, i)
    if ch == '"' {
      i = skip_js_string(source, i, '"', limit~)
    } else if ch == '\'' {
      i = skip_js_string(source, i, '\'', limit~)
    } else if ch == '`' {
      i = skip_template_literal(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i, limit~)
    } else {
      match ch {
        '(' => paren_depth += 1
        ')' if paren_depth > 0 => paren_depth -= 1
        '[' => bracket_depth += 1
        ']' if bracket_depth > 0 => bracket_depth -= 1
        '{' => brace_depth += 1
        '}' => brace_depth -= 1
        _ => ()
      }
      i += 1
    }
  }
  i
}

///|
fn skip_template_literal(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos + 1
  let mut escaped = false
  while i < limit {
    let ch = code_unit_at(source, i)
    if escaped {
      escaped = false
      i += 1
    } else if ch == '\\' {
      escaped = true
      i += 1
    } else if ch == '`' {
      return i + 1
    } else if ch == '$' && i + 1 < limit && code_unit_at(source, i + 1) == '{' {
      i = skip_template_expression(source, i + 2, limit~)
    } else {
      i += 1
    }
  }
  limit
}

///|
fn skip_js_whitespace_and_comments(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos
  while i < limit {
    let ch = code_unit_at(source, i)
    if is_js_space(ch) {
      i += 1
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i, limit~)
    } else {
      break
    }
  }
  i
}

///|
fn scan_expression_end(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int {
  let mut i = pos
  let mut paren_depth = 0
  let mut bracket_depth = 0
  let mut brace_depth = 0
  let mut last_end = pos
  while i < limit {
    let ch = code_unit_at(source, i)
    let top_level = paren_depth == 0 && bracket_depth == 0 && brace_depth == 0
    if top_level && is_js_space(ch) {
      i += 1
    } else if ch == '"' {
      i = skip_js_string(source, i, '"', limit~)
      last_end = i
    } else if ch == '\'' {
      i = skip_js_string(source, i, '\'', limit~)
      last_end = i
    } else if ch == '`' {
      i = skip_template_literal(source, i, limit~)
      last_end = i
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i, limit~)
      if !top_level {
        last_end = i
      }
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i, limit~)
      if !top_level {
        last_end = i
      }
    } else if ch == ',' && top_level {
      return last_end
    } else if ch == '}' && top_level {
      return last_end
    } else {
      match ch {
        '(' => paren_depth += 1
        ')' if paren_depth > 0 => paren_depth -= 1
        '[' => bracket_depth += 1
        ']' if bracket_depth > 0 => bracket_depth -= 1
        '{' => brace_depth += 1
        '}' if brace_depth > 0 => brace_depth -= 1
        _ => ()
      }
      i += 1
      last_end = i
    }
  }
  last_end
}

///|
fn find_next_open_brace(
  source : String,
  pos : Int,
  limit? : Int = source.length(),
) -> Int? {
  let mut i = pos
  while i < limit {
    let ch = code_unit_at(source, i)
    if ch == '{' {
      return Some(i)
    }
    if ch == '"' {
      i = skip_js_string(source, i, '"', limit~)
    } else if ch == '\'' {
      i = skip_js_string(source, i, '\'', limit~)
    } else if ch == '`' {
      i = skip_template_literal(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i, limit~)
    } else {
      i += 1
    }
  }
  None
}

///|
fn find_matching_brace(
  source : String,
  open_brace : Int,
  limit? : Int = source.length(),
) -> Int? {
  guard open_brace < limit && code_unit_at(source, open_brace) == '{' else {
    return None
  }
  let mut i = open_brace + 1
  let mut depth = 1
  while i < limit {
    let ch = code_unit_at(source, i)
    if ch == '"' {
      i = skip_js_string(source, i, '"', limit~)
    } else if ch == '\'' {
      i = skip_js_string(source, i, '\'', limit~)
    } else if ch == '`' {
      i = skip_template_literal(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '/' {
      i = skip_line_comment(source, i, limit~)
    } else if ch == '/' && i + 1 < limit && code_unit_at(source, i + 1) == '*' {
      i = skip_block_comment(source, i, limit~)
    } else {
      match ch {
        '{' => depth += 1
        '}' => {
          depth -= 1
          if depth == 0 {
            return Some(i)
          }
        }
        _ => ()
      }
      i += 1
    }
  }
  None
}

///|
fn parse_property_key(
  source : String,
  pos : Int,
  limit : Int,
) -> (String, Int)? {
  guard pos < limit else { return None }
  let ch = code_unit_at(source, pos)
  if ch == '"' || ch == '\'' {
    let end_ = skip_js_string(source, pos, ch, limit~)
    guard end_ > pos + 1 else { return None }
    Some((slice(source, pos + 1, end_ - 1), end_))
  } else {
    let mut end_ = pos
    while end_ < limit {
      let next = code_unit_at(source, end_)
      if is_js_space(next) || next == ':' {
        break
      }
      end_ += 1
    }
    guard end_ > pos else { return None }
    Some((slice(source, pos, end_), end_))
  }
}

///|
fn parse_object_entries(
  source : String,
  obj_start : Int,
  obj_end : Int,
) -> Array[ObjectEntry]? {
  let entries : Array[ObjectEntry] = []
  let mut pos = obj_start + 1
  while true {
    pos = skip_js_whitespace_and_comments(source, pos, limit=obj_end)
    if pos >= obj_end {
      break
    }
    let start = pos
    let (key, after_key) = match parse_property_key(source, pos, obj_end) {
      Some(parsed) => parsed
      None => return None
    }
    let colon_pos = skip_js_whitespace_and_comments(
      source,
      after_key,
      limit=obj_end,
    )
    guard colon_pos < obj_end && code_unit_at(source, colon_pos) == ':' else {
      return None
    }
    let value_start = skip_js_whitespace_and_comments(
      source,
      colon_pos + 1,
      limit=obj_end,
    )
    let value_end = scan_expression_end(source, value_start, limit=obj_end)
    let delimiter_pos = skip_js_whitespace_and_comments(
      source,
      value_end,
      limit=obj_end,
    )
    let end_ = if delimiter_pos < obj_end &&
      code_unit_at(source, delimiter_pos) == ',' {
      delimiter_pos + 1
    } else {
      value_end
    }
    entries.push({ key, start, value_start, value_end, end: end_ })
    pos = end_
  }
  Some(entries)
}

///|
fn collapse_leading_blank_lines(prefix : String) -> String {
  let mut i = 0
  let mut last_newline = -1
  while i < prefix.length() {
    match code_unit_at(prefix, i) {
      ' ' | '\t' | '\r' => i += 1
      '\n' => {
        last_newline = i
        i += 1
      }
      _ => break
    }
  }
  if last_newline > 0 {
    slice(prefix, last_newline, prefix.length())
  } else {
    prefix
  }
}

///|
fn rewrite_object_entries(
  source : String,
  obj_start : Int,
  obj_end : Int,
  entries : Array[ObjectEntry],
  render_entry : (ObjectEntry) -> String?,
) -> String {
  let multiline = slice(source, obj_start, obj_end + 1).contains("\n")
  let rendered : Array[String?] = []
  let mut last_kept = -1
  for i in 0..<entries.length() {
    let content = render_entry(entries[i])
    if content is Some(_) {
      last_kept = i
    }
    rendered.push(content)
  }
  let out = StringBuilder::new()
  out.write_string(slice(source, obj_start, obj_start + 1))
  let mut prev_end = obj_start + 1
  let mut wrote_any = false
  for i in 0..<entries.length() {
    let entry = entries[i]
    match rendered[i] {
      Some(content) => {
        let prefix = slice(source, prev_end, entry.start)
        if multiline && !wrote_any {
          out.write_string(collapse_leading_blank_lines(prefix))
        } else {
          out.write_string(prefix)
        }
        if !multiline && i == last_kept && content.has_suffix(",") {
          out.write_string(slice(content, 0, content.length() - 1))
        } else {
          out.write_string(content)
        }
        wrote_any = true
      }
      None => ()
    }
    prev_end = entry.end
  }
  out.write_string(slice(source, prev_end, obj_end + 1))
  out.to_string()
}

///|
fn filter_module_entry(
  source : String,
  entry : ObjectEntry,
  required_fields : @hashset.HashSet[String],
) -> String {
  guard entry.value_start < entry.value_end &&
    code_unit_at(source, entry.value_start) == '{' else {
    return slice(source, entry.start, entry.end)
  }
  let inner_end = match
    find_matching_brace(source, entry.value_start, limit=entry.value_end) {
    Some(end_) => end_
    None => return slice(source, entry.start, entry.end)
  }
  let inner_entries = match
    parse_object_entries(source, entry.value_start, inner_end) {
    Some(entries) => entries
    None => return slice(source, entry.start, entry.end)
  }
  let filtered_value = rewrite_object_entries(
    source,
    entry.value_start,
    inner_end,
    inner_entries,
    fn(inner_entry) {
      if required_fields.is_empty() || required_fields.contains(inner_entry.key) {
        Some(slice(source, inner_entry.start, inner_entry.end))
      } else {
        None
      }
    },
  )
  slice(source, entry.start, entry.value_start) +
  filtered_value +
  slice(source, inner_end + 1, entry.end)
}

///|
/// Filter webapi.mjs source to only include required modules and functions.
/// The map keys are module names and values are sets of required function names.
pub fn filter_js_modules(
  source : String,
  required_imports : Map[String, @hashset.HashSet[String]],
) -> String {
  let name_pos = match source.find("wasmImportObject") {
    Some(pos) => pos
    None => return source
  }
  let obj_start = match
    find_next_open_brace(source, name_pos + "wasmImportObject".length()) {
    Some(pos) => pos
    None => return source
  }
  let obj_end = match find_matching_brace(source, obj_start) {
    Some(pos) => pos
    None => return source
  }
  let entries = match parse_object_entries(source, obj_start, obj_end) {
    Some(entries) => entries
    None => return source
  }
  let filtered_object = rewrite_object_entries(
    source,
    obj_start,
    obj_end,
    entries,
    fn(entry) {
      match required_imports.get(entry.key) {
        Some(required_fields) =>
          Some(filter_module_entry(source, entry, required_fields))
        None => None
      }
    },
  )
  let result = slice(source, 0, obj_start) +
    filtered_object +
    slice(source, obj_end + 1, source.length())
  if !result.has_suffix("\n") {
    result + "\n"
  } else {
    result
  }
}
