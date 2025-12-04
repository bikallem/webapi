# Counter Web App Example

A simple counter web application demonstrating MoonBit DOM bindings.

## Features

- **Increment button** - Increases the counter value
- **Decrement button** - Decreases the counter value  
- **Reset button** - Resets the counter to zero
- **Real-time display** - Counter updates instantly on button clicks
- **Modern UI** - Gradient background with smooth animations

## Files

- `counter.html` - Standalone HTML demo (ready to open in browser)
- `main.mbt` - MoonBit implementation using webapi package
- `moon.pkg.json` - Package configuration for MoonBit build

## Running the Example

### Option 1: HTML Demo (Quickest)

Open `counter.html` directly in your web browser. No build required!

```bash
# On macOS
open counter.html

# On Linux
xdg-open counter.html

# On Windows
start counter.html
```

### Option 2: MoonBit Implementation

Build and run the MoonBit version:

```bash
# From project root
cd examples/counter
moon build --target js
moon run --target js
```

## Implementation

The counter uses MoonBit's DOM bindings to:

1. **Get DOM elements** - `document().get_element_by_id()`
2. **Handle events** - `add_event_listener()` with closures
3. **Update state** - Mutable `Ref[Int]` for counter value
4. **Manipulate DOM** - `set_text_content()` to update display

### Key MoonBit Pattern

```moonbit
// Mutable state
let count : Ref[Int] = Ref::new(0)

// Event listener with closure
increment_btn.add_event_listener(
  "click",
  fn(_event) {
    count.val = count.val + 1
    update_display()
  },
)
```

## Styling

The app features:

- **Purple gradient background** - Linear gradient from #667eea to #764ba2
- **White card UI** - Centered container with rounded corners and shadow
- **Color-coded buttons** - Red (decrement), Green (increment), Gray (reset)
- **Hover animations** - Scale effect with background color change

## Browser Compatibility

Works on all modern browsers:
- ✅ Chrome/Edge 60+
- ✅ Firefox 55+
- ✅ Safari 12+
- ✅ Opera 47+
