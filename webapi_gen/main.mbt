///|
/// Default config file path (run from webapi_gen/)
let default_config_file : String = "config.toml"

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
/// Emit and write files of a specific type
fn[E : @emit.Emitter] emit_and_write(
  output_dir : String,
  type_name : String,
  emitter : E,
  keys : Iter[String],
) -> Int raise {
  println("=== Generating \{type_name} ===")
  let files = @emit.emit_all(emitter, keys)
  let count = files.length()
  for filename, code in files {
    let filepath = "\{output_dir}/\{filename.0}"
    println("  Writing \{filepath}...")
    @fs.write_string_to_file(filepath, code.0) catch {
      e => fail("failed to write file: \{e}")
    }
  }
  count
}

///|
/// Filter IDL with only whitelisted interfaces, dictionaries, enums, typedefs, and callbacks.
fn filter_idl(
  config : @config.GeneratorConfig,
  defns : Array[@parser.DefinitionExtendedAttributes],
  logger : (String) -> Unit,
) -> Array[@parser.DefinitionExtendedAttributes] {
  let core_interfaces = @hashset.from_iter(config.core_interfaces.iter())
  let excluded_callbacks = @hashset.from_iter(config.excluded_callbacks.iter())
  let excluded_typedefs = @hashset.from_iter(config.excluded_typedefs.iter())
  let filtered_defns = []
  fn is_dictionary_prefix_excluded(name : String) -> Bool {
    config.excluded_dictionary_prefixes
    .iter()
    .any(prefix => name.has_prefix(prefix))
  }

  for def in defns {
    match def.definition {
      Interface(iface) if core_interfaces.contains(iface.name) =>
        filtered_defns.push(def)
      PartialInterface(piface) if core_interfaces.contains(piface.name) =>
        filtered_defns.push(def)
      Mixin(mxn) if core_interfaces.contains(mxn.name) =>
        filtered_defns.push(def)
      PartialMixin(pmxn) if core_interfaces.contains(pmxn.name) =>
        filtered_defns.push(def)
      Namespace(ns) => logger("Skipped namespace: \{ns.name}")
      PartialNamespace(pns) => logger("Skipped partial namespace: \{pns.name}")
      Dictionary(dict) if !is_dictionary_prefix_excluded(dict.name) =>
        filtered_defns.push(def)
      PartialDictionary(pdict) if !is_dictionary_prefix_excluded(pdict.name) =>
        filtered_defns.push(def)
      Typedef(td) if !excluded_typedefs.contains(td.name) =>
        filtered_defns.push(def)
      CallbackFunction(cbf) if !excluded_callbacks.contains(cbf.name) =>
        filtered_defns.push(def)
      CallbackInterface(cbi) if !excluded_callbacks.contains(cbi.name) =>
        filtered_defns.push(def)
      Enum(_) | Includes(_) => filtered_defns.push(def)
      _ => ()
    }
  }
  filtered_defns
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
    let all_definitions : Array[@parser.DefinitionExtendedAttributes] = []
    for idl_path in idl_paths {
      println("  Parsing \{idl_path}...")
      let definitions = @parser.parse_file(idl_path)
        |> filter_idl(config, _, log_skipped)
      println("    Parsed \{definitions.length()} definitions")
      all_definitions.append(definitions)
    }
    println("Total definitions: \{all_definitions.length()}")
    println("Creating type registry...")
    let type_registry = @type_registry.TypeRegistry::new(all_definitions)
    println("Merging partials...")
    let flattened = @partial_merged.merge_partials(all_definitions)
      |> @flattened_idl.flatten(log_skipped)
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

    // Generate and write generated code files
    let enum_count = emit_and_write(
      output_dir,
      "Enums",
      @emit.EnumEmitter::{ idl: flattened, type_registry },
      flattened.enums.keys(),
    )
    let typedef_count = emit_and_write(
      output_dir,
      "Typedefs",
      @emit.TypedefEmitter::{ idl: flattened, type_registry },
      flattened.typedefs.keys(),
    )
    let dict_count = emit_and_write(
      output_dir,
      "Dictionaries",
      @emit.DictionaryEmitter::{ idl: flattened, type_registry },
      flattened.dictionaries.keys(),
    )
    let iface_count = emit_and_write(
      output_dir,
      "Interfaces",
      @emit.InterfaceEmitter::{ idl: flattened, type_registry },
      flattened.interfaces.keys(),
    )
    let callback_count = emit_and_write(
      output_dir,
      "Callbacks",
      @emit.CallbackEmitter::{ idl: flattened, type_registry },
      flattened.callbacks.keys(),
    )

    // Generate and write globals
    println("=== Generating Globals ===")
    let globals_code = @emit.emit_globals(flattened)
    let globals_filepath = "\{output_dir}/globals.mbt"
    println("  Writing \{globals_filepath}...")
    @fs.write_string_to_file(globals_filepath, globals_code) catch {
      e => fail("failed to write file: \{e}")
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
      "Generated \{enum_count} enums, \{typedef_count} typedefs, \{dict_count} dictionaries, \{iface_count} interfaces, \{callback_count} callbacks",
    )
    println("Output directory: \{output_dir}")
  } catch {
    e => println("Error: \{e}")
  }
}
