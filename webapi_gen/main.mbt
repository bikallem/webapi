///|
/// Default paths relative to webapi_gen directory (run from webapi_gen/)
let default_idl_dir : String = "../node_modules/@webref/idl"

///|
let default_config_file : String = "config.json"

///|
let default_output_dir : String = "../src"

///|
/// Directory containing base template files
let default_templates_dir : String = "base.mbt"

///|
/// Template files to copy to output directory
let template_files : Array[String] = [
  "js_value.mbt", "js_promise.mbt", "js_array.mbt", "primitives.mbt", "typed_arrays.mbt",
]

///|
/// Core DOM specs to include (matching webapi-gen-ts)
let core_specs : Array[String] = [
  "dom", // Core DOM interfaces
   "html", // HTML elements
   "uievents", // UI events
   "cssom", // CSS Object Model
   "cssom-view", // CSSOM View (scrolling, etc.)
   "geometry", // DOMPoint, DOMRect, DOMMatrix, etc.
   "FileAPI", // Blob, File, FileReader, etc.
   "SVG", // SVG elements (for SVGImageElement, etc.)
]

///|
/// Check if a filename matches one of the core specs
fn is_core_spec(filename : String) -> Bool {
  // Remove .idl extension to get spec name
  match filename.strip_suffix(".idl") {
    Some(spec_name) =>
      core_specs.iter().any(fn(s) { s == spec_name.to_string() })
    None => false
  }
}

///|
/// Copy template files from templates_dir to output_dir
fn copy_templates(templates_dir : String, output_dir : String) -> Unit raise {
  println("=== Copying Template Files ===")
  for filename in template_files {
    let src_path = "\{templates_dir}/\{filename}"
    let dst_path = "\{output_dir}/\{filename}"
    println("  Copying \{filename}...")
    let content = @fs.read_file_to_string(src_path) catch {
      e => fail("failed to read template \{src_path}: \{e}")
    }
    @fs.write_string_to_file(dst_path, content) catch {
      e => fail("failed to write template \{dst_path}: \{e}")
    }
  }
}

///|
fn main {
  let args = @sys.get_cli_args()
  // Parse optional command line arguments
  let idl_dir = if args.length() > 1 { args[1] } else { default_idl_dir }
  let config_file = if args.length() > 2 {
    args[2]
  } else {
    default_config_file
  }
  let output_dir = if args.length() > 3 { args[3] } else { default_output_dir }
  let templates_dir = if args.length() > 4 {
    args[4]
  } else {
    default_templates_dir
  }
  println("=== MoonBit WebAPI Bindings Generator ===\n")
  println("IDL directory: \{idl_dir}")
  println("Config file: \{config_file}")
  println("Output directory: \{output_dir}")
  println("Templates directory: \{templates_dir}\n")
  try {
    // Read config
    let content = @fs.read_file_to_string(config_file) catch {
      e => fail("failed to read config file: \{e}")
    }
    let config = @config.load_config_from_string(content)

    // Initialize logger
    let skipped_logs : Array[String] = []
    fn log_skipped(msg : String) {
      skipped_logs.push(msg)
    }

    // Read all IDL files from directory, filtering by core specs
    let idl_files = @fs.read_dir(idl_dir) catch {
      e => fail("failed to read IDL directory: \{e}")
    }
    let idl_paths = []
    for file in idl_files {
      if file.has_suffix(".idl") && is_core_spec(file) {
        idl_paths.push("\{idl_dir}/\{file}")
      }
    }
    // Sort paths for deterministic order
    idl_paths.sort()
    println("Found \{idl_paths.length()} core spec IDL files\n")

    // Parse all IDL files and merge definitions
    let all_definitions : Array[DefinitionExtendedAttributes] = []
    for idl_path in idl_paths {
      println("  Parsing \{idl_path}...")
      let definitions = @parser.parse_file(idl_path)
        |> filter_idl(config, _, log_skipped)
      println("    Parsed \{definitions.length()} definitions")
      all_definitions.append(definitions)
    }
    println("Total definitions: \{all_definitions.length()}")
    println("Creating type registry...")
    let type_registry = TypeRegistry::new(all_definitions)
    println("Merging partials...")
    let flattened = merge_partials(all_definitions) |> flatten(log_skipped)
    println("Flattened \{flattened.interfaces.length()} interfaces")

    // Create output directory if it doesn't exist
    if not(@fs.path_exists(output_dir)) {
      @fs.create_dir(output_dir) catch {
        e => fail("failed to create output directory: \{e}")
      }
    }

    // Copy base template files
    copy_templates(templates_dir, output_dir)

    // Write skipped log
    if skipped_logs.length() > 0 {
      let skipped_log_path = "\{output_dir}/skipped.log"
      println("  Writing skipped definitions to \{skipped_log_path}...")
      let content = skipped_logs.iter().collect().join("\n")
      @fs.write_string_to_file(skipped_log_path, content) catch {
        e => println("Warning: failed to write skipped.log: \{e}")
      }
    }

    // Generate and write enums
    println("=== Generating Enums ===")
    let enum_files = emit_all_enums(flattened)
    for filename, code in enum_files {
      let filepath = "\{output_dir}/\{filename}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write typedefs
    println("=== Generating Typedefs ===")
    let typedef_files = emit_all_typedefs(flattened, type_registry)
    for filename, code in typedef_files {
      let filepath = "\{output_dir}/\{filename}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write dictionaries
    println("=== Generating Dictionaries ===")
    let dict_files = emit_all_dictionaries(flattened, type_registry)
    for filename, code in dict_files {
      let filepath = "\{output_dir}/\{filename}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write interfaces
    println("=== Generating Interfaces ===")
    let iface_files = emit_all_interfaces(flattened, type_registry)
    for filename, code in iface_files {
      let filepath = "\{output_dir}/\{filename}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write callbacks
    println("=== Generating Callbacks ===")
    let callback_files = emit_all_callbacks(flattened, type_registry)
    for filename, code in callback_files {
      let filepath = "\{output_dir}/\{filename}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write globals
    println("=== Generating Globals ===")
    let globals_code = emit_globals(flattened)
    let globals_path = "\{output_dir}/globals.mbt"
    println("  Writing \{globals_path}...")
    @fs.write_string_to_file(globals_path, globals_code) catch {
      e => fail("failed to write globals: \{e}")
    }

    // Generate and write JS runtime
    println("=== Generating JS Runtime ===")
    let js_runtime = emit_js_runtime(flattened)
    let js_runtime_path = "\{output_dir}/webapi.mjs"
    println("  Writing \{js_runtime_path}...")
    @fs.write_string_to_file(js_runtime_path, js_runtime) catch {
      e => fail("failed to write JS runtime: \{e}")
    }
    println("\n=== Generation complete! ===")
    println(
      "Generated \{enum_files.length()} enums, \{typedef_files.length()} typedefs, \{dict_files.length()} dictionaries, \{iface_files.length()} interfaces, \{callback_files.length()} callbacks",
    )
    println("Output directory: \{output_dir}")
  } catch {
    e => println("Error: \{e}")
  }
}
