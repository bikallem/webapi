///|
/// Read an unsigned LEB128-encoded integer from bytes at the given offset.
/// Returns (value, new_offset).
fn read_leb128(bytes : Bytes, offset : Int) -> (Int, Int) {
  let mut result = 0
  let mut shift = 0
  let mut pos = offset
  while true {
    let byte = bytes[pos].to_int()
    result = result | ((byte & 0x7f) << shift)
    pos += 1
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
fn read_utf8_string(bytes : Bytes, offset : Int) -> (String, Int) {
  let (len, pos) = read_leb128(bytes, offset)
  let buf = StringBuilder::new()
  for i in 0..<len {
    buf.write_char(bytes[pos + i].to_int().unsafe_to_char())
  }
  (buf.to_string(), pos + len)
}

///|
/// Skip a wasm valtype. Simple types are 1 byte; ref types (0x63, 0x64) are
/// followed by a heap type (LEB128-encoded type index or single-byte abstract type).
fn skip_valtype(bytes : Bytes, offset : Int) -> Int {
  let b = bytes[offset].to_int()
  match b {
    0x63 | 0x64 => {
      // (ref null ht) or (ref ht): skip the heaptype (LEB128)
      let (_, pos) = read_leb128(bytes, offset + 1)
      pos
    }
    _ => offset + 1
  }
}

///|
/// Skip a wasm reftype. Same as valtype for our purposes.
fn skip_reftype(bytes : Bytes, offset : Int) -> Int {
  skip_valtype(bytes, offset)
}

///|
/// Skip over a wasm limits encoding (flags byte + min + optional max).
fn skip_limits(bytes : Bytes, offset : Int) -> Int {
  let flags = bytes[offset].to_int()
  let (_, pos) = read_leb128(bytes, offset + 1) // min
  if (flags & 0x01) != 0 {
    let (_, pos2) = read_leb128(bytes, pos) // max
    pos2
  } else {
    pos
  }
}

///|
/// Parse wasm binary import section and return (module_name, field_name) pairs.
pub fn parse_wasm_imports(bytes : Bytes) -> Array[(String, String)] {
  // Validate magic number: \0asm
  guard bytes.length() >= 8 else { abort("too short for wasm header") }
  guard bytes[0] == b'\x00' &&
    bytes[1] == b'\x61' &&
    bytes[2] == b'\x73' &&
    bytes[3] == b'\x6d' else {
    abort("not a wasm binary (bad magic)")
  }
  let imports : Array[(String, String)] = []
  let mut pos = 8 // skip magic + version
  while pos < bytes.length() {
    let section_id = bytes[pos].to_int()
    pos += 1
    let (section_size, section_start) = read_leb128(bytes, pos)
    let section_end = section_start + section_size
    if section_id == 2 {
      // Import section
      let (count, p0) = read_leb128(bytes, section_start)
      let mut p = p0
      for _i in 0..<count {
        let (module_name, p2) = read_utf8_string(bytes, p)
        let (field_name, p3) = read_utf8_string(bytes, p2)
        imports.push((module_name, field_name))
        let kind = bytes[p3].to_int()
        p = p3 + 1
        match kind {
          0 => {
            // func: skip type index
            let (_, p4) = read_leb128(bytes, p)
            p = p4
          }
          1 =>
            // table: skip reftype + limits
            p = skip_limits(bytes, skip_reftype(bytes, p))
          2 =>
            // memory: skip limits
            p = skip_limits(bytes, p)
          3 =>
            // global: skip valtype + mutability (1 byte)
            p = skip_valtype(bytes, p) + 1
          4 => {
            // tag: skip tag kind + type index
            p += 1
            let (_, p4) = read_leb128(bytes, p)
            p = p4
          }
          _ => abort("unknown import kind: " + kind.to_string())
        }
      }
      break // found import section, done
    }
    pos = section_end
  }
  imports
}
