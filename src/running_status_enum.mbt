// Do not edit. This file is generated.
// MoonBit type: RunningStatus
// Specifications: service-workers.idl

///|
pub(all) enum RunningStatus {
  Running
  NotRunning
} derive(Eq)

///|
pub impl Show for RunningStatus with output(
  self : RunningStatus,
  logger : &Logger,
) -> Unit {
  match self {
    RunningStatus::Running => logger.write_string("Running")
    RunningStatus::NotRunning => logger.write_string("NotRunning")
  }
}

///|
pub impl TJsValue for RunningStatus with to_js(self : RunningStatus) -> JsValue {
  match self {
    RunningStatus::Running => TJsValue::to_js("running")
    RunningStatus::NotRunning => TJsValue::to_js("not-running")
  }
}

///|
pub fn RunningStatus::from(value : String) -> RunningStatus? {
  match value {
    "running" => Some(RunningStatus::Running)
    "not-running" => Some(RunningStatus::NotRunning)
    _ => None
  }
}

///|
fn RunningStatus::from_unchecked(value : String) -> RunningStatus {
  match value {
    "running" => RunningStatus::Running
    "not-running" => RunningStatus::NotRunning
    _ => RunningStatus::Running
  }
}

///|
pub fn RunningStatus::value(self : RunningStatus) -> String {
  match self {
    RunningStatus::Running => "running"
    RunningStatus::NotRunning => "not-running"
  }
}

///|
pub impl FromJsAny for RunningStatus with from_js_any(value : JsAny) -> RunningStatus {
  RunningStatus::from_unchecked(value)
}
