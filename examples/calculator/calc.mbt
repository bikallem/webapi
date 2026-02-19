///|
/// Runtime state for the calculator engine.
struct CalculatorState {
  current_input : String
  accumulator : Double
  has_accumulator : Bool
  pending_operator : String
  should_reset_input : Bool
  has_error : Bool
}

///|
/// Parses a decimal number from user input text.
fn parse_number(text : String) -> Double? {
  if text == "" || text == "-" || text == "." || text == "-." {
    None
  } else {
    let mut idx = 0
    let mut negative = false
    if text.has_prefix("-") {
      negative = true
      idx = 1
    }

    let mut seen_dot = false
    let mut invalid = false
    let mut value = 0.0
    let mut fractional_divisor = 1.0

    for i in idx..<text.length() {
      match text.get_char(i) {
        Some(ch) =>
          if ch == '.' {
            if seen_dot {
              invalid = true
            } else {
              seen_dot = true
            }
          } else if ch >= '0' && ch <= '9' {
            let digit = (ch.to_int() - '0'.to_int()).to_double()
            if seen_dot {
              fractional_divisor = fractional_divisor * 10.0
              value = value + digit / fractional_divisor
            } else {
              value = value * 10.0 + digit
            }
          } else {
            invalid = true
          }
        None => invalid = true
      }
    }

    if invalid {
      None
    } else if negative {
      Some(0.0 - value)
    } else {
      Some(value)
    }
  }
}

///|
/// Formats the result and strips trailing ".0" style output.
fn format_number(value : Double) -> String {
  let rounded = value.round()
  if (value - rounded).abs() < 0.000000001 {
    rounded.to_int().to_string()
  } else {
    value.to_string()
  }
}

///|
/// Returns the default "cleared" state.
fn clear_all_state() -> CalculatorState {
  {
    current_input: "0",
    accumulator: 0.0,
    has_accumulator: false,
    pending_operator: "",
    should_reset_input: false,
    has_error: false,
  }
}

///|
/// Returns a state representing runtime error display.
fn show_error_state() -> CalculatorState {
  { ..clear_all_state(), should_reset_input: true, has_error: true }
}

///|
/// Applies a binary operator; division by zero returns None.
fn apply_operator(left : Double, right : Double, op : String) -> Double? {
  match op {
    "+" => Some(left + right)
    "-" => Some(left - right)
    "*" => Some(left * right)
    "/" => if right == 0.0 { None } else { Some(left / right) }
    _ => None
  }
}

///|
/// Handles numeric key presses.
fn handle_digit(state : CalculatorState, digit : String) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  if state.should_reset_input || state.current_input == "0" {
    { ..state, current_input: digit, should_reset_input: false }
  } else {
    { ..state, current_input: state.current_input + digit }
  }
}

///|
/// Handles decimal-point insertion.
fn handle_decimal(state : CalculatorState) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  let state = if state.should_reset_input {
    { ..state, current_input: "0", should_reset_input: false }
  } else {
    state
  }
  if state.current_input.find(".") is None {
    { ..state, current_input: state.current_input + "." }
  } else {
    state
  }
}

///|
/// Toggles sign for the current input value.
fn handle_sign_toggle(state : CalculatorState) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  let state = if state.should_reset_input {
    { ..state, current_input: "0", should_reset_input: false }
  } else {
    state
  }
  if state.current_input.has_prefix("-") {
    {
      ..state,
      current_input: state.current_input.view(start_offset=1).to_string(),
    }
  } else if state.current_input != "0" {
    { ..state, current_input: "-" + state.current_input }
  } else {
    state
  }
}

///|
/// Removes the last character in current input.
fn handle_backspace(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    return clear_all_state()
  }
  if state.should_reset_input {
    return { ..state, current_input: "0", should_reset_input: false }
  }
  let len = state.current_input.length()
  let current_input = if len <= 1 ||
    (len == 2 && state.current_input.has_prefix("-")) {
    "0"
  } else {
    state.current_input.view(end_offset=len - 1).to_string()
  }
  { ..state, current_input, }
}

///|
/// Clears only the current input field.
fn handle_clear_entry(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    clear_all_state()
  } else {
    { ..state, current_input: "0", should_reset_input: false }
  }
}

///|
/// Stores selected operator and computes chained operations.
fn handle_operator(state : CalculatorState, op : String) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  match parse_number(state.current_input) {
    Some(current_value) => {
      let (accumulator, current_input) = if !state.has_accumulator {
        (current_value, state.current_input)
      } else if state.pending_operator != "" && !state.should_reset_input {
        match
          apply_operator(
            state.accumulator,
            current_value,
            state.pending_operator,
          ) {
          Some(result) => (result, format_number(result))
          None => return show_error_state()
        }
      } else {
        (state.accumulator, state.current_input)
      }
      {
        current_input,
        accumulator,
        has_accumulator: true,
        pending_operator: op,
        should_reset_input: true,
        has_error: false,
      }
    }
    None => show_error_state()
  }
}

///|
/// Computes final result for "=".
fn handle_equal(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    return clear_all_state()
  }
  if !state.has_accumulator || state.pending_operator == "" {
    return state
  }
  match parse_number(state.current_input) {
    Some(current_value) =>
      match
        apply_operator(state.accumulator, current_value, state.pending_operator) {
        Some(result) =>
          {
            ..clear_all_state(),
            current_input: format_number(result),
            should_reset_input: true,
          }
        None => show_error_state()
      }
    None => show_error_state()
  }
}

///|
/// Processes a key string and returns the new state, or None if unrecognized.
fn process_key(state : CalculatorState, key : String) -> CalculatorState? {
  match key {
    "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" =>
      Some(handle_digit(state, key))
    "." => Some(handle_decimal(state))
    "+/-" => Some(handle_sign_toggle(state))
    "+" | "-" | "*" | "/" => Some(handle_operator(state, key))
    "=" => Some(handle_equal(state))
    "C" => Some(clear_all_state())
    "CE" => Some(handle_clear_entry(state))
    "DEL" => Some(handle_backspace(state))
    _ => None
  }
}
