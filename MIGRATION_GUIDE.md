# Package Split Migration Guide

This guide provides step-by-step instructions for splitting the monolithic `src/` package into multiple packages.

## Prerequisites

- Understand the [PACKAGE_SPLIT_ANALYSIS.md](./PACKAGE_SPLIT_ANALYSIS.md)
- Review [DEPENDENCY_DIAGRAMS.md](./DEPENDENCY_DIAGRAMS.md)
- Choose your approach: Option 1 (Merged DOM+Events) or Option 2 (Core Pattern)

## Recommended Approach: Option 1 (Merged DOM+Events)

This guide uses Option 1 for simplicity. Adapt for Option 2 if needed.

## Phase 1: Set Up Package Structure

### Step 1: Create Package Directories

```bash
cd /path/to/mbt-DOM-gen

# Create package directories under src/
mkdir -p src/core
mkdir -p src/dom
mkdir -p src/html  
mkdir -p src/canvas
mkdir -p src/svg
mkdir -p src/geometry
```

### Step 2: Create Package Configurations

**src/core/moon.pkg.json:**
```json
{
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

**src/dom/moon.pkg.json:**
```json
{
  "import": [
    "bikallem/webapi/core"
  ],
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

**src/html/moon.pkg.json:**
```json
{
  "import": [
    "bikallem/webapi/core",
    "bikallem/webapi/dom"
  ],
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

**src/canvas/moon.pkg.json:**
```json
{
  "import": [
    "bikallem/webapi/core",
    "bikallem/webapi/dom"
  ],
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

**src/svg/moon.pkg.json:**
```json
{
  "import": [
    "bikallem/webapi/core",
    "bikallem/webapi/dom"
  ],
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

**src/geometry/moon.pkg.json:**
```json
{
  "import": [
    "bikallem/webapi/core"
  ],
  "supported-targets": ["js", "wasm-gc"],
  "link": {
    "wasm-gc": {
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

## Phase 2: Move Files to Packages

### Step 3: Move Core Files

Move these files from `src/` to `src/core/`:

```bash
# Core/primitives
mv src/js_value.mbt src/core/
mv src/js_promise.mbt src/core/
mv src/js_array.mbt src/core/
mv src/primitives.mbt src/core/
mv src/typed_arrays.mbt src/core/
mv src/globals.mbt src/core/

# Additional core types if needed
mv src/blob.mbt src/core/
mv src/blob_property_bag.mbt src/core/
mv src/blob_callback.mbt src/core/
```

### Step 4: Move Geometry Files

Move these files from `src/` to `src/geometry/`:

```bash
mv src/dom_matrix.mbt src/geometry/
mv src/dom_matrix_read_only.mbt src/geometry/
mv src/dom_matrix2_d_init.mbt src/geometry/
mv src/dom_matrix_init.mbt src/geometry/
mv src/dom_point.mbt src/geometry/
mv src/dom_point_read_only.mbt src/geometry/
mv src/dom_point_init.mbt src/geometry/
mv src/dom_rect.mbt src/geometry/
mv src/dom_rect_read_only.mbt src/geometry/
mv src/dom_rect_init.mbt src/geometry/
mv src/dom_quad_init.mbt src/geometry/
```

### Step 5: Move DOM Files (including Events)

Move these files from `src/` to `src/dom/`:

```bash
# Core DOM
mv src/node.mbt src/dom/
mv src/element.mbt src/dom/
mv src/document.mbt src/dom/
mv src/document_fragment.mbt src/dom/
mv src/document_type.mbt src/dom/
mv src/attr.mbt src/dom/
mv src/character_data.mbt src/dom/
mv src/text.mbt src/dom/
mv src/comment.mbt src/dom/
mv src/cdata_section.mbt src/dom/
mv src/processing_instruction.mbt src/dom/

# Collections
mv src/node_list.mbt src/dom/
mv src/named_node_map.mbt src/dom/
mv src/dom_token_list.mbt src/dom/
mv src/html_collection.mbt src/dom/

# Range, Selection, etc.
mv src/range.mbt src/dom/
mv src/shadow_root.mbt src/dom/
mv src/mutation_observer.mbt src/dom/
mv src/mutation_record.mbt src/dom/
mv src/mutation_callback.mbt src/dom/

# Events (part of DOM package in Option 1)
mv src/event_target.mbt src/dom/
mv src/event.mbt src/dom/
mv src/custom_event.mbt src/dom/
mv src/ui_event.mbt src/dom/
mv src/mouse_event.mbt src/dom/
mv src/keyboard_event.mbt src/dom/
mv src/focus_event.mbt src/dom/
mv src/input_event.mbt src/dom/
mv src/wheel_event.mbt src/dom/
mv src/event_listener.mbt src/dom/
mv src/event_handler.mbt src/dom/
mv src/event_handler_non_null.mbt src/dom/

# Event init types
mv src/event_init.mbt src/dom/
mv src/custom_event_init.mbt src/dom/
mv src/ui_event_init.mbt src/dom/
mv src/mouse_event_init.mbt src/dom/
mv src/keyboard_event_init.mbt src/dom/
mv src/focus_event_init.mbt src/dom/
mv src/input_event_init.mbt src/dom/
mv src/wheel_event_init.mbt src/dom/
mv src/drag_event_init.mbt src/dom/
mv src/event_modifier_init.mbt src/dom/
mv src/add_event_listener_options.mbt src/dom/
mv src/event_listener_options.mbt src/dom/

# More event types
mv src/error_event_init.mbt src/dom/
mv src/command_event_init.mbt src/dom/
mv src/composition_event_init.mbt src/dom/
mv src/form_data_event_init.mbt src/dom/
mv src/hash_change_event_init.mbt src/dom/
mv src/media_query_list_event_init.mbt src/dom/
mv src/message_event_init.mbt src/dom/
mv src/page_transition_event_init.mbt src/dom/
mv src/pop_state_event_init.mbt src/dom/
mv src/promise_rejection_event_init.mbt src/dom/
mv src/storage_event_init.mbt src/dom/
mv src/submit_event_init.mbt src/dom/
mv src/toggle_event_init.mbt src/dom/
mv src/track_event_init.mbt src/dom/

# Event handlers
mv src/on_error_event_handler.mbt src/dom/
mv src/on_error_event_handler_non_null.mbt src/dom/
mv src/on_before_unload_event_handler.mbt src/dom/
mv src/on_before_unload_event_handler_non_null.mbt src/dom/

# DOM-related options and enums
mv src/shadow_root_init.mbt src/dom/
mv src/shadow_root_mode.mbt src/dom/
mv src/get_root_node_options.mbt src/dom/
mv src/mutation_observer_init.mbt src/dom/
mv src/assigned_nodes_options.mbt src/dom/
mv src/element_creation_options.mbt src/dom/
mv src/element_definition_options.mbt src/dom/
mv src/custom_element_constructor.mbt src/dom/
mv src/slot_assignment_mode.mbt src/dom/
mv src/inner_html.mbt src/dom/
mv src/outer_html.mbt src/dom/
mv src/import_node_options.mbt src/dom/

# Document-related
mv src/document_ready_state.mbt src/dom/
mv src/document_visibility_state.mbt src/dom/
mv src/dom_parser_supported_type.mbt src/dom/

# Scrolling/positioning
mv src/scroll_behavior.mbt src/dom/
mv src/scroll_options.mbt src/dom/
mv src/scroll_to_options.mbt src/dom/
mv src/scroll_into_view_options.mbt src/dom/
mv src/scroll_into_view_container.mbt src/dom/
mv src/scroll_logical_position.mbt src/dom/
mv src/check_visibility_options.mbt src/dom/
mv src/box_quad_options.mbt src/dom/
mv src/convert_coordinate_options.mbt src/dom/
mv src/caret_position_from_point_options.mbt src/dom/
mv src/focus_options.mbt src/dom/
mv src/get_html_options.mbt src/dom/
mv src/static_range_init.mbt src/dom/
mv src/selection_mode.mbt src/dom/

# Misc DOM
mv src/css_box_type.mbt src/dom/
mv src/show_popover_options.mbt src/dom/
mv src/toggle_popover_options.mbt src/dom/
```

### Step 6: Move HTML Files

Move these files from `src/` to `src/html/`:

```bash
mv src/html_element.mbt src/html/
mv src/html_anchor_element.mbt src/html/
mv src/html_body_element.mbt src/html/
mv src/html_button_element.mbt src/html/
mv src/html_canvas_element.mbt src/html/
mv src/html_div_element.mbt src/html/
mv src/html_form_element.mbt src/html/
mv src/html_head_element.mbt src/html/
mv src/html_html_element.mbt src/html/
mv src/html_image_element.mbt src/html/
mv src/html_input_element.mbt src/html/
mv src/html_link_element.mbt src/html/
mv src/html_paragraph_element.mbt src/html/
mv src/html_script_element.mbt src/html/
mv src/html_slot_element.mbt src/html/
mv src/html_span_element.mbt src/html/
mv src/html_style_element.mbt src/html/
mv src/html_video_element.mbt src/html/
mv src/html_audio_element.mbt src/html/

# HTML-specific types
mv src/validity_state_flags.mbt src/html/
mv src/text_track_kind.mbt src/html/
mv src/text_track_mode.mbt src/html/
mv src/can_play_type_result.mbt src/html/
```

### Step 7: Move Canvas Files

Move these files from `src/` to `src/canvas/`:

```bash
mv src/canvas.mbt src/canvas/
mv src/canvas_rendering_context2_d.mbt src/canvas/
mv src/canvas_gradient.mbt src/canvas/
mv src/canvas_pattern.mbt src/canvas/
mv src/offscreen_canvas.mbt src/canvas/
mv src/offscreen_canvas_rendering_context2_d.mbt src/canvas/
mv src/image_bitmap.mbt src/canvas/
mv src/image_bitmap_rendering_context.mbt src/canvas/
mv src/image_data.mbt src/canvas/
mv src/rendering_context.mbt src/canvas/

# Canvas enums/options
mv src/canvas_image_source.mbt src/canvas/
mv src/canvas_line_cap.mbt src/canvas/
mv src/canvas_line_join.mbt src/canvas/
mv src/canvas_text_align.mbt src/canvas/
mv src/canvas_text_baseline.mbt src/canvas/
mv src/canvas_direction.mbt src/canvas/
mv src/canvas_fill_rule.mbt src/canvas/
mv src/canvas_font_kerning.mbt src/canvas/
mv src/canvas_font_stretch.mbt src/canvas/
mv src/canvas_font_variant_caps.mbt src/canvas/
mv src/canvas_text_rendering.mbt src/canvas/
mv src/canvas_color_type.mbt src/canvas/
mv src/fill_style.mbt src/canvas/
mv src/stroke_style.mbt src/canvas/
mv src/canvas_rendering_context2_d_settings.mbt src/canvas/
mv src/image_bitmap_rendering_context_settings.mbt src/canvas/
mv src/image_bitmap_options.mbt src/canvas/
mv src/image_bitmap_source.mbt src/canvas/
mv src/image_data_settings.mbt src/canvas/
mv src/image_data_pixel_format.mbt src/canvas/
mv src/image_encode_options.mbt src/canvas/
mv src/image_orientation.mbt src/canvas/
mv src/image_smoothing_quality.mbt src/canvas/
mv src/offscreen_rendering_context_id.mbt src/canvas/
mv src/predefined_color_space.mbt src/canvas/
mv src/color_space_conversion.mbt src/canvas/
mv src/premultiply_alpha.mbt src/canvas/
mv src/resize_quality.mbt src/canvas/
```

### Step 8: Move SVG Files

Move these files from `src/` to `src/svg/`:

```bash
mv src/svg_image_element.mbt src/svg/
mv src/svg_bounding_box_options.mbt src/svg/
mv src/html_or_svg_image_element.mbt src/svg/
```

### Step 9: Keep Remaining Files in Root

Some files may need to stay at the root level or be categorized differently:

```bash
# Browser/Window APIs - could go in a separate package or stay in root
# src/window.mbt
# src/history.mbt
# src/location.mbt
# src/navigator.mbt
# src/storage.mbt

# Abort/Control APIs
# src/abort_controller.mbt
# src/abort_signal.mbt

# CSS-related
# src/css_style_sheet_init.mbt

# Workers/Worklets
# src/worker_options.mbt
# src/worker_type.mbt
# src/worklet_options.mbt
# src/event_source_init.mbt
# src/navigation_*.mbt
# src/scroll_restoration.mbt
# src/close_watcher_options.mbt
# src/hidden.mbt
# src/ending_type.mbt
# src/frame_request_callback.mbt
# src/function_string_callback.mbt
```

You might want to create additional packages for these.

## Phase 3: Update Type References

### Step 10: Add Package Prefixes

After moving files, you'll need to update import references. In MoonBit, cross-package references use `@package_name.TypeName`.

For example, in `src/html/html_element.mbt`, change:
```moonbit
// Before
pub trait THTMLElement: TJsValue + TElement {
  ...
}
```

To:
```moonbit
// After
pub trait THTMLElement: @core.TJsValue + @dom.TElement {
  ...
}
```

This is tedious but necessary. You can use a script:

```bash
# Example: Update references in html package
cd src/html
for file in *.mbt; do
  # Add @dom prefix to DOM types
  sed -i 's/\bNode\b/@dom.Node/g' "$file"
  sed -i 's/\bElement\b/@dom.Element/g' "$file"
  sed -i 's/\bDocument\b/@dom.Document/g' "$file"
  # Add @core prefix
  sed -i 's/\bJsValue\b/@core.JsValue/g' "$file"
  # etc...
done
```

**IMPORTANT**: Be careful with sed replacements - they can break code if not precise.

### Step 11: Test Each Package Incrementally

After moving files to a package:

```bash
# Test core package
moon check

# Test geometry package  
moon check

# Test dom package
moon check

# Test html package
moon check

# Test canvas package
moon check

# Test svg package
moon check
```

Fix any compilation errors as you go.

## Phase 4: Update Examples

### Step 12: Update Example Imports

Update `examples/counter/moon.pkg.json`:

```json
{
  "import": [
    "bikallem/webapi/core",
    "bikallem/webapi/dom",
    "bikallem/webapi/html"
  ],
  "is_main": true,
  "link": {
    "wasm-gc": {
      "exports": [],
      "use-js-builtin-string": true,
      "imported-string-constants": "_"
    }
  }
}
```

Update references in example code to use package prefixes.

## Phase 5: Clean Up

### Step 13: Remove Old Package

Once everything is working with the new structure:

```bash
# Remove the old monolithic src/moon.pkg.json
rm src/moon.pkg.json

# Verify no files left in src/ root
ls src/*.mbt
# (should only show files you intentionally kept there)
```

### Step 14: Update Documentation

Update README.md and other documentation to reflect the new package structure.

### Step 15: Run Final Tests

```bash
# Full project check
moon check

# Run all tests
moon test

# Build examples
cd examples && moon build
```

## Tips and Best Practices

1. **Work incrementally**: Move one package at a time, starting with core/geometry (no dependencies)

2. **Test frequently**: Run `moon check` after each package move

3. **Use git**: Commit after each successful package migration

4. **Script repetitive tasks**: Use sed/awk for bulk find-replace, but review changes carefully

5. **Keep a checklist**: Track which files have been moved and which need updates

6. **Watch for name collisions**: Some types might have the same name across packages

7. **Document as you go**: Update comments/docs when you notice outdated references

## Troubleshooting

### Cyclic dependency errors

If you see:
```
Error: Cyclic dependency detected between packages A and B
```

Check:
- Are DOM and Events in separate packages? They must be together or use core pattern
- Review import statements in moon.pkg.json files
- Check the dependency graph

### Type not found errors

If you see:
```
Error: Type 'Foo' not found
```

Check:
- Did you add the package import in moon.pkg.json?
- Did you add the @package prefix to the type reference?
- Is the type actually exported (pub) from the source package?

### FFI errors

If FFI function definitions fail, ensure the package link configuration is correct in moon.pkg.json.

## Rollback Plan

If migration fails:

```bash
# Revert all changes
git reset --hard HEAD

# Or revert to specific commit
git checkout <commit-before-migration>
```

## Conclusion

This migration will take time but results in a more modular, maintainable codebase. Take it slow, test frequently, and don't hesitate to adjust the package boundaries based on what you discover during migration.

Good luck!
