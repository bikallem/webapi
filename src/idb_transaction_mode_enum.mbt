// Do not edit. This file is generated.
// MoonBit type: IDBTransactionMode
// Specifications: IndexedDB.idl

pub(all) enum IDBTransactionMode {
  Readonly
  Readwrite
  Versionchange
} derive(Eq)

pub impl Show for IDBTransactionMode with output(self : IDBTransactionMode, logger : &Logger) -> Unit {
  match self {
    IDBTransactionMode::Readonly => logger.write_string("Readonly")
    IDBTransactionMode::Readwrite => logger.write_string("Readwrite")
    IDBTransactionMode::Versionchange => logger.write_string("Versionchange")
  }
}

pub impl TJsValue for IDBTransactionMode with to_js(self: IDBTransactionMode) -> JsValue {
  match self {
    IDBTransactionMode::Readonly => TJsValue::to_js("readonly")
    IDBTransactionMode::Readwrite => TJsValue::to_js("readwrite")
    IDBTransactionMode::Versionchange => TJsValue::to_js("versionchange")
  }
}

pub fn IDBTransactionMode::from(value: String) -> IDBTransactionMode? {
  match value {
    "readonly" => Some(IDBTransactionMode::Readonly)
    "readwrite" => Some(IDBTransactionMode::Readwrite)
    "versionchange" => Some(IDBTransactionMode::Versionchange)
    _ => None
  }
}

fn IDBTransactionMode::from_unchecked(value: String) -> IDBTransactionMode {
  match value {
    "readonly" => IDBTransactionMode::Readonly
    "readwrite" => IDBTransactionMode::Readwrite
    "versionchange" => IDBTransactionMode::Versionchange
    _ => IDBTransactionMode::Readonly
  }
}

pub fn IDBTransactionMode::value(self: IDBTransactionMode) -> String {
  match self {
    IDBTransactionMode::Readonly => "readonly"
    IDBTransactionMode::Readwrite => "readwrite"
    IDBTransactionMode::Versionchange => "versionchange"
  }
}

pub impl FromJsAny for IDBTransactionMode with from_js_any(value : JsAny) -> IDBTransactionMode {
  IDBTransactionMode::from_unchecked(value)
}