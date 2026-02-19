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
/// Creates a state value with named fields.
fn make_state(
  current_input : String,
  accumulator : Double,
  has_accumulator : Bool,
  pending_operator : String,
  should_reset_input : Bool,
  has_error : Bool,
) -> CalculatorState {
  CalculatorState::{
    current_input,
    accumulator,
    has_accumulator,
    pending_operator,
    should_reset_input,
    has_error,
  }
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
  make_state("0", 0.0, false, "", false, false)
}

///|
/// Returns a state representing runtime error display.
fn show_error_state() -> CalculatorState {
  make_state("0", 0.0, false, "", true, true)
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
  let mut current_input = state.current_input
  let mut should_reset_input = state.should_reset_input

  if should_reset_input || current_input == "0" {
    current_input = digit
    should_reset_input = false
  } else {
    current_input = current_input + digit
  }

  make_state(
    current_input,
    state.accumulator,
    state.has_accumulator,
    state.pending_operator,
    should_reset_input,
    state.has_error,
  )
}

///|
/// Handles decimal-point insertion.
fn handle_decimal(state : CalculatorState) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  let mut current_input = state.current_input
  let mut should_reset_input = state.should_reset_input

  if should_reset_input {
    current_input = "0"
    should_reset_input = false
  }
  if current_input.find(".") is None {
    current_input = current_input + "."
  }

  make_state(
    current_input,
    state.accumulator,
    state.has_accumulator,
    state.pending_operator,
    should_reset_input,
    state.has_error,
  )
}

///|
/// Toggles sign for the current input value.
fn handle_sign_toggle(state : CalculatorState) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  let mut current_input = state.current_input
  let mut should_reset_input = state.should_reset_input

  if should_reset_input {
    current_input = "0"
    should_reset_input = false
  }
  if current_input.has_prefix("-") {
    current_input = current_input.view(start_offset=1).to_string()
  } else if current_input != "0" {
    current_input = "-" + current_input
  }

  make_state(
    current_input,
    state.accumulator,
    state.has_accumulator,
    state.pending_operator,
    should_reset_input,
    state.has_error,
  )
}

///|
/// Removes the last character in current input.
fn handle_backspace(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    clear_all_state()
  } else {
    let mut current_input = state.current_input
    let mut should_reset_input = state.should_reset_input

    if should_reset_input {
      current_input = "0"
      should_reset_input = false
    } else {
      let len = current_input.length()
      if len <= 1 || (len == 2 && current_input.has_prefix("-")) {
        current_input = "0"
      } else {
        current_input = current_input.view(end_offset=len - 1).to_string()
      }
    }

    make_state(
      current_input,
      state.accumulator,
      state.has_accumulator,
      state.pending_operator,
      should_reset_input,
      state.has_error,
    )
  }
}

///|
/// Clears only the current input field.
fn handle_clear_entry(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    clear_all_state()
  } else {
    make_state(
      "0",
      state.accumulator,
      state.has_accumulator,
      state.pending_operator,
      false,
      state.has_error,
    )
  }
}

///|
/// Stores selected operator and computes chained operations.
fn handle_operator(state : CalculatorState, op : String) -> CalculatorState {
  let state = if state.has_error { clear_all_state() } else { state }
  let mut current_input = state.current_input
  let mut accumulator = state.accumulator
  let mut has_accumulator = state.has_accumulator
  let pending_operator = state.pending_operator
  let should_reset_input = state.should_reset_input

  match parse_number(current_input) {
    Some(current_value) => {
      if !has_accumulator {
        accumulator = current_value
        has_accumulator = true
      } else if pending_operator != "" && !should_reset_input {
        match apply_operator(accumulator, current_value, pending_operator) {
          Some(result) => {
            accumulator = result
            current_input = format_number(result)
          }
          None => return show_error_state()
        }
      }

      make_state(current_input, accumulator, has_accumulator, op, true, false)
    }
    None => show_error_state()
  }
}

///|
/// Computes final result for "=".
fn handle_equal(state : CalculatorState) -> CalculatorState {
  if state.has_error {
    clear_all_state()
  } else if !state.has_accumulator || state.pending_operator == "" {
    state
  } else {
    match parse_number(state.current_input) {
      Some(current_value) =>
        match
          apply_operator(
            state.accumulator,
            current_value,
            state.pending_operator,
          ) {
          Some(result) =>
            make_state(format_number(result), 0.0, false, "", true, false)
          None => show_error_state()
        }
      None => show_error_state()
    }
  }
}
