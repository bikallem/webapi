///|
/// Simple counter web app with increment and decrement buttons
fn main {
  let body = document.body().unwrap()

  // Create container div
  let container = document.create_element("div")
  container.set_id("counter-app")
  container.set_inner_html(
    (
      #|<style>
      #|  body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
      #|  #counter-app { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 10px 25px rgba(0,0,0,0.2); text-align: center; }
      #|  h1 { color: #333; margin: 0 0 20px 0; font-size: 28px; }
      #|  #count-display { font-size: 48px; font-weight: bold; color: #667eea; margin: 20px 0; }
      #|  button { padding: 12px 24px; font-size: 16px; margin: 0 10px; border: none; border-radius: 5px; cursor: pointer; transition: all 0.3s; }
      #|  #decrement { background: #ff6b6b; color: white; }
      #|  #decrement:hover { background: #ff5252; transform: scale(1.05); }
      #|  #increment { background: #51cf66; color: white; }
      #|  #increment:hover { background: #40c057; transform: scale(1.05); }
      #|  #reset { background: #94a3b8; color: white; margin-left: 10px; }
      #|  #reset:hover { background: #64748b; transform: scale(1.05); }
      #|</style>
      #|<h1>Counter App</h1>
      #|<div id="count-display">0</div>
      #|<div>
      #|  <button id="decrement">−</button>
      #|  <button id="increment">+</button>
      #|  <button id="reset">Reset</button>
      #|</div>
      #|
    ),
  )
  let _node : &TNode = body.append_child(container)

  // Create mutable counter state using Ref
  let count : Ref[Int] = Ref::new(0)
  let count_display = document.get_element_by_id("count-display").unwrap()

  // Helper to update display
  let update_display = fn() {
    count_display.set_text_content(count.val.to_string())
  }

  // Increment button
  let increment_btn = document.get_element_by_id("increment").unwrap()
  increment_btn.add_event_listener("click", fn(_event) {
    count.val = count.val + 1
    update_display()
  })

  // Decrement button
  let decrement_btn = document.get_element_by_id("decrement").unwrap()
  decrement_btn.add_event_listener("click", fn(_event) {
    count.val = count.val - 1
    update_display()
  })

  // Reset button
  let reset_btn = document.get_element_by_id("reset").unwrap()
  reset_btn.add_event_listener("click", fn(_event) {
    count.val = 0
    update_display()
  })
}
