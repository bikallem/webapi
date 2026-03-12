// Do not edit. This file is generated.
// MoonBit type: IDBCursorDirection
// Specifications: IndexedDB.idl

pub(all) enum IDBCursorDirection {
  Next
  Nextunique
  Prev
  Prevunique
} derive(Eq)

pub impl Show for IDBCursorDirection with output(self : IDBCursorDirection, logger : &Logger) -> Unit {
  match self {
    IDBCursorDirection::Next => logger.write_string("Next")
    IDBCursorDirection::Nextunique => logger.write_string("Nextunique")
    IDBCursorDirection::Prev => logger.write_string("Prev")
    IDBCursorDirection::Prevunique => logger.write_string("Prevunique")
  }
}

pub impl TJsValue for IDBCursorDirection with to_js(self: IDBCursorDirection) -> JsValue {
  match self {
    IDBCursorDirection::Next => TJsValue::to_js("next")
    IDBCursorDirection::Nextunique => TJsValue::to_js("nextunique")
    IDBCursorDirection::Prev => TJsValue::to_js("prev")
    IDBCursorDirection::Prevunique => TJsValue::to_js("prevunique")
  }
}

pub fn IDBCursorDirection::from(value: String) -> IDBCursorDirection? {
  match value {
    "next" => Some(IDBCursorDirection::Next)
    "nextunique" => Some(IDBCursorDirection::Nextunique)
    "prev" => Some(IDBCursorDirection::Prev)
    "prevunique" => Some(IDBCursorDirection::Prevunique)
    _ => None
  }
}

fn IDBCursorDirection::from_unchecked(value: String) -> IDBCursorDirection {
  match value {
    "next" => IDBCursorDirection::Next
    "nextunique" => IDBCursorDirection::Nextunique
    "prev" => IDBCursorDirection::Prev
    "prevunique" => IDBCursorDirection::Prevunique
    _ => abort("unknown IDBCursorDirection enum value")
  }
}

pub fn IDBCursorDirection::value(self: IDBCursorDirection) -> String {
  match self {
    IDBCursorDirection::Next => "next"
    IDBCursorDirection::Nextunique => "nextunique"
    IDBCursorDirection::Prev => "prev"
    IDBCursorDirection::Prevunique => "prevunique"
  }
}

pub impl FromJsAny for IDBCursorDirection with from_js_any(value : JsAny) -> IDBCursorDirection {
  IDBCursorDirection::from_unchecked(value)
}