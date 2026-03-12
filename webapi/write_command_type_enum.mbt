// Do not edit. This file is generated.
// MoonBit type: WriteCommandType
// Specifications: fs.idl

pub(all) enum WriteCommandType {
  Write
  Seek
  Truncate
} derive(Eq)

pub impl Show for WriteCommandType with output(self : WriteCommandType, logger : &Logger) -> Unit {
  match self {
    WriteCommandType::Write => logger.write_string("Write")
    WriteCommandType::Seek => logger.write_string("Seek")
    WriteCommandType::Truncate => logger.write_string("Truncate")
  }
}

pub impl TJsValue for WriteCommandType with to_js(self: WriteCommandType) -> JsValue {
  match self {
    WriteCommandType::Write => TJsValue::to_js("write")
    WriteCommandType::Seek => TJsValue::to_js("seek")
    WriteCommandType::Truncate => TJsValue::to_js("truncate")
  }
}

pub fn WriteCommandType::from(value: String) -> WriteCommandType? {
  match value {
    "write" => Some(WriteCommandType::Write)
    "seek" => Some(WriteCommandType::Seek)
    "truncate" => Some(WriteCommandType::Truncate)
    _ => None
  }
}

fn WriteCommandType::from_unchecked(value: String) -> WriteCommandType {
  match value {
    "write" => WriteCommandType::Write
    "seek" => WriteCommandType::Seek
    "truncate" => WriteCommandType::Truncate
    _ => abort("unknown WriteCommandType enum value")
  }
}

pub fn WriteCommandType::value(self: WriteCommandType) -> String {
  match self {
    WriteCommandType::Write => "write"
    WriteCommandType::Seek => "seek"
    WriteCommandType::Truncate => "truncate"
  }
}

pub impl FromJsAny for WriteCommandType with from_js_any(value : JsAny) -> WriteCommandType {
  WriteCommandType::from_unchecked(value)
}