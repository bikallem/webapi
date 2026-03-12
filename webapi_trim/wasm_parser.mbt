///|
pub suberror WasmParseError {
  UnexpectedEnd(String, Int)
  InvalidMagic
  SectionPastEnd(Int, Int, Int)
  InvalidImportKind(Int, Int)
} derive(Show)

///|
pub fn WasmParseError::message(self : WasmParseError) -> String {
  match self {
    UnexpectedEnd(context, offset) =>
      "unexpected end of wasm while reading \{context} at byte \{offset}"
    InvalidMagic => "not a wasm binary (bad magic)"
    SectionPastEnd(section_id, section_end, length) =>
      "section \{section_id} ends at byte \{section_end}, past file length \{length}"
    InvalidImportKind(kind, offset) =>
      "unknown import kind \{kind} at byte \{offset}"
  }
}

///|
fn require_bytes(
  limit : Int,
  offset : Int,
  count : Int,
  context : String,
) -> Unit raise WasmParseError {
  guard offset >= 0 && count >= 0 && offset + count <= limit else {
    raise UnexpectedEnd(context, offset)
  }
}

///|
fn read_byte(
  bytes : Bytes,
  offset : Int,
  limit : Int,
  context : String,
) -> (Int, Int) raise WasmParseError {
  require_bytes(limit, offset, 1, context)
  (bytes[offset].to_int(), offset + 1)
}

///|
/// Read an unsigned LEB128-encoded integer from bytes at the given offset.
/// Returns (value, new_offset).
fn read_leb128(
  bytes : Bytes,
  offset : Int,
  limit? : Int = bytes.length(),
) -> (Int, Int) raise WasmParseError {
  let mut result = 0
  let mut shift = 0
  let mut pos = offset
  while true {
    let (byte, next_pos) = read_byte(bytes, pos, limit, "LEB128 value")
    result = result | ((byte & 0x7f) << shift)
    pos = next_pos
    if (byte & 0x80) == 0 {
      break
    }
    shift += 7
  }
  (result, pos)
}

///|
/// Read a length-prefixed UTF-8 string from bytes at the given offset.
/// Returns (string, new_offset).
fn read_utf8_string(
  bytes : Bytes,
  offset : Int,
  limit? : Int = bytes.length(),
) -> (String, Int) raise WasmParseError {
  let (len, pos) = read_leb128(bytes, offset, limit~)
  require_bytes(limit, pos, len, "UTF-8 string")
  let buf = StringBuilder::new()
  for i in 0..<len {
    buf.write_char(bytes[pos + i].to_int().unsafe_to_char())
  }
  (buf.to_string(), pos + len)
}

///|
/// Skip a wasm valtype. Simple types are 1 byte; ref types (0x63, 0x64) are
/// followed by a heap type (LEB128-encoded type index or single-byte abstract type).
fn skip_valtype(
  bytes : Bytes,
  offset : Int,
  limit? : Int = bytes.length(),
) -> Int raise WasmParseError {
  let (b, pos) = read_byte(bytes, offset, limit, "value type")
  match b {
    0x63 | 0x64 => {
      // (ref null ht) or (ref ht): skip the heaptype (LEB128)
      let (_, next_pos) = read_leb128(bytes, pos, limit~)
      next_pos
    }
    _ => pos
  }
}

///|
/// Skip a wasm reftype. Same as valtype for our purposes.
fn skip_reftype(
  bytes : Bytes,
  offset : Int,
  limit? : Int = bytes.length(),
) -> Int raise WasmParseError {
  skip_valtype(bytes, offset, limit~)
}

///|
/// Skip over a wasm limits encoding (flags byte + min + optional max).
fn skip_limits(
  bytes : Bytes,
  offset : Int,
  limit? : Int = bytes.length(),
) -> Int raise WasmParseError {
  let (flags, pos0) = read_byte(bytes, offset, limit, "limits flags")
  let (_, pos) = read_leb128(bytes, pos0, limit~) // min
  if (flags & 0x01) != 0 {
    let (_, pos2) = read_leb128(bytes, pos, limit~) // max
    pos2
  } else {
    pos
  }
}

///|
/// Parse wasm binary import section and return (module_name, field_name) pairs.
pub fn parse_wasm_imports(
  bytes : Bytes,
) -> Array[(String, String)] raise WasmParseError {
  // Validate magic number: \0asm
  guard bytes.length() >= 8 else {
    raise UnexpectedEnd("wasm header", bytes.length())
  }
  guard bytes[0] == b'\x00' &&
    bytes[1] == b'\x61' &&
    bytes[2] == b'\x73' &&
    bytes[3] == b'\x6d' else {
    raise InvalidMagic
  }
  let imports : Array[(String, String)] = []
  let mut pos = 8 // skip magic + version
  while pos < bytes.length() {
    let (section_id, pos0) = read_byte(bytes, pos, bytes.length(), "section id")
    let (section_size, section_start) = read_leb128(
      bytes,
      pos0,
      limit=bytes.length(),
    )
    let section_end = section_start + section_size
    guard section_end <= bytes.length() else {
      raise SectionPastEnd(section_id, section_end, bytes.length())
    }
    if section_id == 2 {
      // Import section
      let (count, p0) = read_leb128(bytes, section_start, limit=section_end)
      let mut p = p0
      for _i in 0..<count {
        let (module_name, p2) = read_utf8_string(bytes, p, limit=section_end)
        let (field_name, p3) = read_utf8_string(bytes, p2, limit=section_end)
        imports.push((module_name, field_name))
        let (kind, p4) = read_byte(bytes, p3, section_end, "import kind")
        p = p4
        match kind {
          0 => {
            // func: skip type index
            let (_, next_pos) = read_leb128(bytes, p, limit=section_end)
            p = next_pos
          }
          1 =>
            // table: skip reftype + limits
            p = skip_limits(
              bytes,
              skip_reftype(bytes, p, limit=section_end),
              limit=section_end,
            )
          2 =>
            // memory: skip limits
            p = skip_limits(bytes, p, limit=section_end)
          3 =>
            // global: skip valtype + mutability (1 byte)
            p = read_byte(
                bytes,
                skip_valtype(bytes, p, limit=section_end),
                section_end,
                "global mutability",
              ).1
          4 => {
            // tag: skip tag kind + type index
            let (_, tag_pos) = read_byte(bytes, p, section_end, "tag kind")
            let (_, next_pos) = read_leb128(bytes, tag_pos, limit=section_end)
            p = next_pos
          }
          _ => raise InvalidImportKind(kind, p3)
        }
      }
      break // found import section, done
    }
    pos = section_end
  }
  imports
}
