///|
/// Default config file path (run from webapi_gen/)
let default_config_file : String = "config.json"

///|
/// Check if a filename matches one of the core specs
fn is_core_spec(filename : String, core_specs : Array[String]) -> Bool {
  // Remove .idl extension to get spec name
  match filename.strip_suffix(".idl") {
    Some(spec_name) =>
      core_specs.iter().any(fn(s) { s == spec_name.to_string() })
    None => false
  }
}

///|
/// Copy template files from templates_dir to output_dir
fn copy_templates(
  templates_dir : String,
  output_dir : String,
  template_files : Array[String],
) -> Unit raise {
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
  // Parse optional command line argument for config file
  let config_file = if args.length() > 1 {
    args[1]
  } else {
    default_config_file
  }
  println("=== MoonBit WebAPI Bindings Generator ===\n")
  println("Config file: \{config_file}")
  try {
    // Read config
    let content = @fs.read_file_to_string(config_file) catch {
      e => fail("failed to read config file: \{e}")
    }
    let config = @config.load_config_from_string(content)
    let idl_dir = config.idl_dir
    let output_dir = config.output_dir
    let templates_dir = config.templates_dir
    println("IDL directory: \{idl_dir}")
    println("Output directory: \{output_dir}")
    println("Templates directory: \{templates_dir}\n")

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
      if file.has_suffix(".idl") && is_core_spec(file, config.core_specs) {
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
    copy_templates(templates_dir, output_dir, config.template_files)

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
    let enum_files = @emit.emit_all(
      @emit.EnumEmitter::{ idl: flattened, type_registry },
      flattened.enums.keys(),
    )
    for filename, code in enum_files {
      let filepath = "\{output_dir}/\{filename.0}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code.0) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write typedefs
    println("=== Generating Typedefs ===")
    let typedef_files = @emit.emit_all(
      @emit.TypedefEmitter::{ idl: flattened, type_registry },
      flattened.typedefs.keys(),
    )
    for filename, code in typedef_files {
      let filepath = "\{output_dir}/\{filename.0}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code.0) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write dictionaries
    println("=== Generating Dictionaries ===")
    let dict_files = @emit.emit_all(
      @emit.DictionaryEmitter::{ idl: flattened, type_registry },
      flattened.dictionaries.keys(),
    )
    for filename, code in dict_files {
      let filepath = "\{output_dir}/\{filename.0}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code.0) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write interfaces
    println("=== Generating Interfaces ===")
    let iface_files = @emit.emit_all(
      @emit.InterfaceEmitter::{ idl: flattened, type_registry },
      flattened.interfaces.keys(),
    )
    for filename, code in iface_files {
      let filepath = "\{output_dir}/\{filename.0}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code.0) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write callbacks
    println("=== Generating Callbacks ===")
    let callback_files = @emit.emit_all(
      @emit.CallbackEmitter::{ idl: flattened, type_registry },
      flattened.callbacks.keys(),
    )
    for filename, code in callback_files {
      let filepath = "\{output_dir}/\{filename.0}"
      println("  Writing \{filepath}...")
      @fs.write_string_to_file(filepath, code.0) catch {
        e => fail("failed to write file: \{e}")
      }
    }

    // Generate and write globals
    println("=== Generating Globals ===")
    let globals_code = @emit.emit_globals(flattened)
    let globals_path = "\{output_dir}/globals.mbt"
    println("  Writing \{globals_path}...")
    @fs.write_string_to_file(globals_path, globals_code) catch {
      e => fail("failed to write globals: \{e}")
    }

    // XXX: Disabled for now since we only need JS bindings
    // Generate and write JS runtime
    // println("=== Generating JS Runtime ===")
    // let js_runtime = @emit.emit_js_runtime(flattened)
    // let js_runtime_path = "\{output_dir}/webapi.mjs"
    // println("  Writing \{js_runtime_path}...")
    // @fs.write_string_to_file(js_runtime_path, js_runtime) catch {
    //   e => fail("failed to write JS runtime: \{e}")
    // }
    println("\n=== Generation complete! ===")
    println(
      "Generated \{enum_files.length()} enums, \{typedef_files.length()} typedefs, \{dict_files.length()} dictionaries, \{iface_files.length()} interfaces, \{callback_files.length()} callbacks",
    )
    println("Output directory: \{output_dir}")
  } catch {
    e => println("Error: \{e}")
  }
}
