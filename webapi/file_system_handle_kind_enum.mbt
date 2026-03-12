// Do not edit. This file is generated.
// MoonBit type: FileSystemHandleKind
// Specifications: fs.idl

pub(all) enum FileSystemHandleKind {
  File
  Directory
} derive(Eq)

pub impl Show for FileSystemHandleKind with output(self : FileSystemHandleKind, logger : &Logger) -> Unit {
  match self {
    FileSystemHandleKind::File => logger.write_string("File")
    FileSystemHandleKind::Directory => logger.write_string("Directory")
  }
}

pub impl TJsValue for FileSystemHandleKind with to_js(self: FileSystemHandleKind) -> JsValue {
  match self {
    FileSystemHandleKind::File => TJsValue::to_js("file")
    FileSystemHandleKind::Directory => TJsValue::to_js("directory")
  }
}

pub fn FileSystemHandleKind::from(value: String) -> FileSystemHandleKind? {
  match value {
    "file" => Some(FileSystemHandleKind::File)
    "directory" => Some(FileSystemHandleKind::Directory)
    _ => None
  }
}

fn FileSystemHandleKind::from_unchecked(value: String) -> FileSystemHandleKind {
  match value {
    "file" => FileSystemHandleKind::File
    "directory" => FileSystemHandleKind::Directory
    _ => abort("unknown FileSystemHandleKind enum value")
  }
}

pub fn FileSystemHandleKind::value(self: FileSystemHandleKind) -> String {
  match self {
    FileSystemHandleKind::File => "file"
    FileSystemHandleKind::Directory => "directory"
  }
}

pub impl FromJsAny for FileSystemHandleKind with from_js_any(value : JsAny) -> FileSystemHandleKind {
  FileSystemHandleKind::from_unchecked(value)
}