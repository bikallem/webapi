// Do not edit. This file is generated.
// MoonBit type: IDBRequestReadyState
// Specifications: IndexedDB.idl

pub(all) enum IDBRequestReadyState {
  Pending
  Done
} derive(Eq)

pub impl Show for IDBRequestReadyState with output(self : IDBRequestReadyState, logger : &Logger) -> Unit {
  match self {
    IDBRequestReadyState::Pending => logger.write_string("Pending")
    IDBRequestReadyState::Done => logger.write_string("Done")
  }
}

pub impl TJsValue for IDBRequestReadyState with to_js(self: IDBRequestReadyState) -> JsValue {
  match self {
    IDBRequestReadyState::Pending => TJsValue::to_js("pending")
    IDBRequestReadyState::Done => TJsValue::to_js("done")
  }
}

pub fn IDBRequestReadyState::from(value: String) -> IDBRequestReadyState? {
  match value {
    "pending" => Some(IDBRequestReadyState::Pending)
    "done" => Some(IDBRequestReadyState::Done)
    _ => None
  }
}

fn IDBRequestReadyState::from_unchecked(value: String) -> IDBRequestReadyState {
  match value {
    "pending" => IDBRequestReadyState::Pending
    "done" => IDBRequestReadyState::Done
    _ => IDBRequestReadyState::Pending
  }
}

pub fn IDBRequestReadyState::value(self: IDBRequestReadyState) -> String {
  match self {
    IDBRequestReadyState::Pending => "pending"
    IDBRequestReadyState::Done => "done"
  }
}

pub impl FromJsAny for IDBRequestReadyState with from_js_any(value : JsAny) -> IDBRequestReadyState {
  IDBRequestReadyState::from_unchecked(value)
}