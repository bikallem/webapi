///|
/// Count net brace changes in a line, ignoring braces inside string literals.
fn count_braces(line : String) -> Int {
  let mut depth = 0
  let mut in_single = false
  let mut in_double = false
  let mut in_template = false
  let mut escaped = false
  for c in line {
    if escaped {
      escaped = false
      continue
    }
    if c == '\\' {
      escaped = true
      continue
    }
    if in_single {
      if c == '\'' {
        in_single = false
      }
      continue
    }
    if in_double {
      if c == '"' {
        in_double = false
      }
      continue
    }
    if in_template {
      if c == '`' {
        in_template = false
      }
      continue
    }
    match c {
      '\'' => in_single = true
      '"' => in_double = true
      '`' => in_template = true
      '{' => depth += 1
      '}' => depth -= 1
      _ => ()
    }
  }
  depth
}

///|
/// Extract a module name from a line like `  moduleName: {` or `  "module:name": {`.
/// Returns the name (without quotes) if the line starts a module block at brace depth 1.
fn extract_module_name(line : String) -> String? {
  // Must start with exactly 2 spaces
  guard line.length() >= 5 else { return None }
  guard line[0] == ' ' && line[1] == ' ' && line[2] != ' ' else { return None }
  guard line.has_suffix(": {") else { return None }
  // strip "  " prefix and ": {" suffix
  let name_part = line[2:line.length() - 3].to_string() catch {
    _ => return None
  }
  if name_part.has_prefix("\"") && name_part.has_suffix("\"") {
    let unquoted = name_part[1:name_part.length() - 1].to_string() catch {
      _ => return None
    }
    Some(unquoted)
  } else {
    Some(name_part)
  }
}

///|
/// Filter webapi.mjs source to only include modules in the required set.
pub fn filter_js_modules(
  source : String,
  required_modules : @hashset.HashSet[String],
) -> String {
  let lines : Array[String] = source
    .split("\n")
    .map(fn(sv) { sv.to_string() })
    .collect()
  let out = StringBuilder::new()
  let mut in_object = false // inside wasmImportObject
  let mut depth = 0 // brace depth relative to wasmImportObject
  let mut in_block = false // inside a module block
  let mut block_buf : Array[String] = []
  let mut block_depth = 0
  let mut keep_block = false
  let mut first_kept = true
  for line in lines {
    if not(in_object) {
      out.write_string(line)
      out.write_char('\n')
      if line.contains("wasmImportObject") && line.contains("{") {
        in_object = true
        depth = 1
      }
      continue
    }
    // Inside wasmImportObject
    let brace_delta = count_braces(line)
    if in_block {
      block_buf.push(line)
      block_depth += brace_delta
      if block_depth == 0 {
        // Block ended, back to depth 1
        in_block = false
        if keep_block {
          if not(first_kept) {
            out.write_char('\n')
          }
          first_kept = false
          for bline in block_buf {
            out.write_string(bline)
            out.write_char('\n')
          }
        }
        block_buf = []
      }
      continue
    }
    // Check for module block start before updating depth, since the block
    // tracks its own depth internally and we don't want to double-count.
    match extract_module_name(line) {
      Some(name) => {
        in_block = true
        block_buf = [line]
        block_depth = brace_delta
        keep_block = required_modules.contains(name)
        continue
      }
      None => ()
    }
    depth += brace_delta
    if depth <= 0 {
      // Closing of wasmImportObject
      out.write_string(line)
      out.write_char('\n')
      in_object = false
    }
  }
  let result = out.to_string()
  if result.has_suffix("\n\n") {
    result[:result.length() - 1].to_string() catch {
      _ => result
    }
  } else {
    result
  }
}
