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
/// Extract a function name from a line like `    funcName: (args) => ...`.
/// Returns the name if the line starts with exactly 4 spaces followed by a name and `: `.
fn extract_function_name(line : String) -> String? {
  guard line.length() >= 7 else { return None }
  guard line[0] == ' ' &&
    line[1] == ' ' &&
    line[2] == ' ' &&
    line[3] == ' ' &&
    line[4] != ' ' else {
    return None
  }
  // Find ": " after the name
  let mut i = 4
  while i < line.length() {
    if line[i] == ':' && i + 1 < line.length() && line[i + 1] == ' ' {
      let name = line[4:i].to_string() catch { _ => return None }
      return Some(name)
    }
    i += 1
  }
  None
}

///|
/// Filter the function lines within a module block, keeping only functions
/// whose names are in the required set. Returns the filtered lines including
/// the module header and closing brace.
fn filter_module_functions(
  block_lines : Array[String],
  required_fields : @hashset.HashSet[String],
) -> Array[String] {
  // block_lines[0] is the module header (e.g., "  ModName: {")
  // block_lines[last] is the closing brace (e.g., "  },")
  guard block_lines.length() >= 2 else { return block_lines }
  let header = block_lines[0]
  let closer = block_lines[block_lines.length() - 1]
  // Extract inner lines (between header and closer)
  let inner : Array[String] = []
  for i in 1..<(block_lines.length() - 1) {
    inner.push(block_lines[i])
  }
  // Parse functions from inner lines
  let kept : Array[Array[String]] = []
  let mut func_buf : Array[String] = []
  let mut func_name : String? = None
  let mut func_depth = 0
  for line in inner {
    match extract_function_name(line) {
      Some(name) if func_name is None => {
        // Start of a new function
        func_name = Some(name)
        func_buf = [line]
        func_depth = count_braces(line)
      }
      _ =>
        if func_name is None {
          // Blank line or non-function line outside a function — skip
          continue
        } else {
          func_buf.push(line)
          func_depth += count_braces(line)
        }
    }
    // Check if the current function is complete
    if func_name is Some(_) && func_depth <= 0 {
      guard func_name is Some(name) else { continue }
      if required_fields.contains(name) {
        kept.push(func_buf)
      }
      func_name = None
      func_buf = []
      func_depth = 0
    }
  }
  // Reconstruct block — keep original lines as-is (trailing commas are valid JS)
  let result : Array[String] = [header]
  for func_lines in kept {
    for fline in func_lines {
      result.push(fline)
    }
  }
  result.push(closer)
  result
}

///|
/// Filter webapi.mjs source to only include required modules and functions.
/// The map keys are module names and values are sets of required function names.
pub fn filter_js_modules(
  source : String,
  required_imports : Map[String, @hashset.HashSet[String]],
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
  let mut block_fields : @hashset.HashSet[String]? = None
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
          let filtered = match block_fields {
            Some(fields) => filter_module_functions(block_buf, fields)
            None => block_buf
          }
          if not(first_kept) {
            out.write_char('\n')
          }
          first_kept = false
          for bline in filtered {
            out.write_string(bline)
            out.write_char('\n')
          }
        }
        block_buf = []
        block_fields = None
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
        keep_block = required_imports.contains(name)
        block_fields = required_imports.get(name)
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
