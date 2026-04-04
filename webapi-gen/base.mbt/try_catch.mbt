///|
/// Executes `on_ok` and, if it throws, calls `on_err` with the error message.
///
/// On the JS target, MoonBit abort/panic compile to `throw`, so all errors
/// (abort, panic, raise) are caught by the JS-level try/catch.
///
/// On the wasm-gc target, `abort` traps the WebAssembly module and is
/// unrecoverable — only `raise` errors and JS exceptions are caught.
pub fn try_catch(on_ok : () -> Unit, on_err : (String) -> Unit) -> Unit {
  try_catch_ffi(on_ok, on_err)
}

///|
#cfg(target="js")
extern "js" fn try_catch_ffi(
  on_ok : () -> Unit,
  on_err : (String) -> Unit,
) -> Unit = "(f, g) => { try { f(); } catch(e) { g('' + e); } }"

///|
#cfg(target="wasm-gc")
fn try_catch_ffi(
  on_ok : () -> Unit,
  on_err : (String) -> Unit,
) -> Unit = "webapi_TryCatch" "tryCatch"
