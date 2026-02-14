// Do not edit. This file is generated.
// MoonBit type: IDBTransactionDurability
// Specifications: IndexedDB.idl

///|
pub(all) enum IDBTransactionDurability {
  Default
  Strict
  Relaxed
} derive(Eq)

///|
pub impl Show for IDBTransactionDurability with output(
  self : IDBTransactionDurability,
  logger : &Logger,
) -> Unit {
  match self {
    IDBTransactionDurability::Default => logger.write_string("Default")
    IDBTransactionDurability::Strict => logger.write_string("Strict")
    IDBTransactionDurability::Relaxed => logger.write_string("Relaxed")
  }
}

///|
pub impl TJsValue for IDBTransactionDurability with to_js(
  self : IDBTransactionDurability,
) -> JsValue {
  match self {
    IDBTransactionDurability::Default => TJsValue::to_js("default")
    IDBTransactionDurability::Strict => TJsValue::to_js("strict")
    IDBTransactionDurability::Relaxed => TJsValue::to_js("relaxed")
  }
}

///|
pub fn IDBTransactionDurability::from(
  value : String,
) -> IDBTransactionDurability? {
  match value {
    "default" => Some(IDBTransactionDurability::Default)
    "strict" => Some(IDBTransactionDurability::Strict)
    "relaxed" => Some(IDBTransactionDurability::Relaxed)
    _ => None
  }
}

///|
fn IDBTransactionDurability::from_unchecked(
  value : String,
) -> IDBTransactionDurability {
  match value {
    "default" => IDBTransactionDurability::Default
    "strict" => IDBTransactionDurability::Strict
    "relaxed" => IDBTransactionDurability::Relaxed
    _ => abort("unknown IDBTransactionDurability enum value")
  }
}

///|
pub fn IDBTransactionDurability::value(
  self : IDBTransactionDurability,
) -> String {
  let buf = StringBuilder::new()
  match self {
    IDBTransactionDurability::Default => buf.write_string("default")
    IDBTransactionDurability::Strict => buf.write_string("strict")
    IDBTransactionDurability::Relaxed => buf.write_string("relaxed")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for IDBTransactionDurability with from_js_any(value : JsAny) -> IDBTransactionDurability {
  IDBTransactionDurability::from_unchecked(value)
}
