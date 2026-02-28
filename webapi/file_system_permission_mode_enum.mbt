// Do not edit. This file is generated.
// MoonBit type: FileSystemPermissionMode
// Specifications: file-system-access.idl

///|
pub(all) enum FileSystemPermissionMode {
  Read
  Readwrite
} derive(Eq)

///|
pub impl Show for FileSystemPermissionMode with output(
  self : FileSystemPermissionMode,
  logger : &Logger,
) -> Unit {
  match self {
    FileSystemPermissionMode::Read => logger.write_string("Read")
    FileSystemPermissionMode::Readwrite => logger.write_string("Readwrite")
  }
}

///|
pub impl TJsValue for FileSystemPermissionMode with to_js(
  self : FileSystemPermissionMode,
) -> JsValue {
  match self {
    FileSystemPermissionMode::Read => TJsValue::to_js("read")
    FileSystemPermissionMode::Readwrite => TJsValue::to_js("readwrite")
  }
}

///|
pub fn FileSystemPermissionMode::from(
  value : String,
) -> FileSystemPermissionMode? {
  match value {
    "read" => Some(FileSystemPermissionMode::Read)
    "readwrite" => Some(FileSystemPermissionMode::Readwrite)
    _ => None
  }
}

///|
fn FileSystemPermissionMode::from_unchecked(
  value : String,
) -> FileSystemPermissionMode {
  match value {
    "read" => FileSystemPermissionMode::Read
    "readwrite" => FileSystemPermissionMode::Readwrite
    _ => abort("unknown FileSystemPermissionMode enum value")
  }
}

///|
pub fn FileSystemPermissionMode::value(
  self : FileSystemPermissionMode,
) -> String {
  match self {
    FileSystemPermissionMode::Read => "read"
    FileSystemPermissionMode::Readwrite => "readwrite"
  }
}

///|
pub impl FromJsAny for FileSystemPermissionMode with from_js_any(value : JsAny) -> FileSystemPermissionMode {
  FileSystemPermissionMode::from_unchecked(value)
}
