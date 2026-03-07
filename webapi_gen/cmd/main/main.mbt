///|
/// Default config file path (run from webapi_gen/)
let default_config_file : String = "config.toml"

///|
/// Check if a filename matches one of the core specs
fn is_core_spec(
  filename : String,
  core_specs : @hashset.HashSet[String],
) -> Bool {
  // Remove .idl extension to get spec name
  match filename.strip_suffix(".idl") {
    Some(spec_name) => core_specs.contains(spec_name.to_string())
    None => false
  }
}

///|
/// Copy all .mbt template files from templates_dir to output_dir.
/// Returns arrays of JS-only and wasm-only filenames for conditional compilation.
fn copy_templates(
  templates_dir : String,
  output_dir : String,
) -> (Array[String], Array[String]) raise {
  println("=== Copying Template Files ===")
  let template_files = @fs.read_dir(templates_dir) catch {
    e => fail("failed to read templates directory \{templates_dir}: \{e}")
  }
  let js_files : Array[String] = []
  let wasm_files : Array[String] = []
  for filename in template_files {
    // Only copy .mbt files (skip non-.mbt files like README.md)
    if filename.has_suffix(".mbt") {
      let src_path = "\{templates_dir}/\{filename}"
      let dst_path = "\{output_dir}/\{filename}"
      println("  Copying \{filename}...")
      let content = @fs.read_file_to_string(src_path) catch {
        e => fail("failed to read template \{src_path}: \{e}")
      }
      @fs.write_string_to_file(dst_path, content) catch {
        e => fail("failed to write template \{dst_path}: \{e}")
      }
      // Track target-specific files
      if filename.has_suffix("_js.mbt") {
        js_files.push(filename)
      } else if filename.has_suffix("_wasm.mbt") {
        wasm_files.push(filename)
      }
    }
  }
  (js_files, wasm_files)
}

///|
/// Emit and write multi-target files of a specific type.
/// Returns the count of types processed, and appends target-specific
/// filenames to the provided arrays.
fn[E : @emit.Emitter] emit_and_write_multi(
  output_dir : String,
  type_name : String,
  emitter : E,
  keys : Iter[String],
  js_files : Array[String],
  wasm_files : Array[String],
) -> Int raise {
  fn sorted_names(keys : Iter[String]) -> Array[String] {
    let names : Array[String] = []
    for name in keys {
      names.push(name)
    }
    names.sort()
    names
  }

  fn sorted_output_filenames(
    files : Map[@emit.Filename, @emit.Code],
  ) -> Array[String] {
    let names : Array[String] = []
    for file, _code in files {
      match file {
        @emit.Filename(filename) => names.push(filename)
      }
    }
    names.sort()
    names
  }

  println("=== Generating \{type_name} ===")
  let multi = @emit.emit_all_multi(emitter, sorted_names(keys).iter())
  let count = multi.shared.length()
  // Write shared files
  for filename in sorted_output_filenames(multi.shared) {
    let filepath = "\{output_dir}/\{filename}"
    println("  Writing \{filepath}...")
    @fs.write_string_to_file(filepath, multi.shared[@emit.Filename(filename)].0) catch {
      e => fail("failed to write file: \{e}")
    }
  }
  // Write JS FFI files
  for filename in sorted_output_filenames(multi.js_ffi) {
    let filepath = "\{output_dir}/\{filename}"
    println("  Writing \{filepath}...")
    @fs.write_string_to_file(filepath, multi.js_ffi[@emit.Filename(filename)].0) catch {
      e => fail("failed to write file: \{e}")
    }
    js_files.push(filename)
  }
  // Write wasm FFI files
  for filename in sorted_output_filenames(multi.wasm_ffi) {
    let filepath = "\{output_dir}/\{filename}"
    println("  Writing \{filepath}...")
    @fs.write_string_to_file(
      filepath,
      multi.wasm_ffi[@emit.Filename(filename)].0,
    ) catch {
      e => fail("failed to write file: \{e}")
    }
    wasm_files.push(filename)
  }
  count
}

///|
/// Filter IDL with only whitelisted interfaces, dictionaries, enums, typedefs, and callbacks.
fn filter_idl(
  config : @config.Config,
  defns : Array[@parser.DefinitionExtendedAttributes],
) -> Array[@parser.DefinitionExtendedAttributes] {
  let core_interfaces = config.excluded_interfaces
  let excluded_callbacks = config.excluded_callbacks
  let excluded_typedefs = config.excluded_typedefs
  let filtered_defns = []
  fn is_dictionary_prefix_excluded(name : String) -> Bool {
    config.excluded_dictionary_prefixes
    .iter()
    .any(prefix => name.has_prefix(prefix))
  }

  for def in defns {
    match def.definition {
      Interface(iface) if !core_interfaces.contains(iface.name) =>
        filtered_defns.push(def)
      PartialInterface(piface) if !core_interfaces.contains(piface.name) =>
        filtered_defns.push(def)
      Mixin(mxn) if !core_interfaces.contains(mxn.name) =>
        filtered_defns.push(def)
      PartialMixin(pmxn) if !core_interfaces.contains(pmxn.name) =>
        filtered_defns.push(def)
      Namespace(_) | PartialNamespace(_) => filtered_defns.push(def)
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
/// Generate moon.pkg content with conditional compilation targets
fn generate_moon_pkg(
  js_files : Array[String],
  wasm_files : Array[String],
) -> String {
  let buf = StringBuilder::new()
  buf.write_string("warnings = \"-53\"\n\n")
  buf.write_string("options(\n")
  buf.write_string("  targets: {")
  let entries : Array[String] = []
  // Sort for deterministic output
  js_files.sort()
  wasm_files.sort()
  for f in js_files {
    entries.push(" \"\{f}\": [\"js\"]")
  }
  for f in wasm_files {
    entries.push(" \"\{f}\": [\"wasm-gc\"]")
  }
  buf.write_string(entries.join(","))
  buf.write_string(" },\n")
  buf.write_string("  \"supported-targets\": \"js+wasm-gc\",\n")
  buf.write_string(")\n")
  buf.to_string()
}

///|
fn main {
  let args = @sys.get_cli_args()
  // Parse config file path from optional command-line args
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
      let definitions = filter_idl(config, definitions)
      println("    Parsed \{definitions.length()} definitions")
      all_definitions.append(definitions)
    }
    println("Total definitions: \{all_definitions.length()}")
    println("Creating type registry...")
    let type_registry = @type_registry.TypeRegistry::new(all_definitions)
    println("Merging partials...")
    let partials_merged = @partial_merged.merge_partials(all_definitions)
    let flattened = @flattened_idl.flatten(
      partials_merged,
      log_skipped,
      dictionary_member_injection=config.dictionary_member_injection,
    )
    type_registry.set_callback_defs(flattened.callbacks)
    type_registry.set_typedef_defs(flattened.typedefs)
    println("Flattened \{flattened.interfaces.length()} interfaces")

    // Create output directory if it doesn't exist
    if not(@fs.path_exists(output_dir)) {
      @fs.create_dir(output_dir) catch {
        e => fail("failed to create output directory: \{e}")
      }
    }

    // Copy base template files (returns target-specific filenames)
    let (js_files, wasm_files) = copy_templates(templates_dir, output_dir)

    // Write skipped log
    if skipped_logs.length() > 0 {
      let skipped_log_path = "\{output_dir}/skipped.log"
      println("  Writing skipped definitions to \{skipped_log_path}...")
      let content = skipped_logs.join("\n")
      @fs.write_string_to_file(skipped_log_path, content) catch {
        e => println("Warning: failed to write skipped.log: \{e}")
      }
    }

    // Generate and write generated code files (multi-target)
    let enum_count = emit_and_write_multi(
      output_dir,
      "Enums",
      @emit.EnumEmitter::{ idl: flattened },
      flattened.enums.keys(),
      js_files,
      wasm_files,
    )
    let typedef_count = emit_and_write_multi(
      output_dir,
      "Typedefs",
      @emit.TypedefEmitter::{ idl: flattened, type_registry },
      flattened.typedefs.keys(),
      js_files,
      wasm_files,
    )
    let dict_count = emit_and_write_multi(
      output_dir,
      "Dictionaries",
      @emit.DictionaryEmitter::{ idl: flattened, type_registry },
      flattened.dictionaries.keys(),
      js_files,
      wasm_files,
    )
    let iface_count = emit_and_write_multi(
      output_dir,
      "Interfaces",
      @emit.InterfaceEmitter::{ idl: flattened, type_registry, log_skipped },
      flattened.interfaces.keys(),
      js_files,
      wasm_files,
    )
    let callback_count = emit_and_write_multi(
      output_dir,
      "Callbacks",
      @emit.CallbackEmitter::{ idl: flattened, type_registry },
      flattened.callbacks.keys(),
      js_files,
      wasm_files,
    )
    let namespace_count = emit_and_write_multi(
      output_dir,
      "Namespaces",
      @emit.NamespaceEmitter::{ idl: flattened, type_registry },
      flattened.namespaces.keys(),
      js_files,
      wasm_files,
    )

    // Generate and write JS runtime for wasm-gc
    println("=== Generating JS Runtime ===")
    let js_runtime = @emit.emit_js_runtime(flattened)
    let js_runtime_path = "\{output_dir}/webapi.mjs"
    println("  Writing \{js_runtime_path}...")
    @fs.write_string_to_file(js_runtime_path, js_runtime) catch {
      e => fail("failed to write JS runtime: \{e}")
    }

    // Generate moon.pkg with conditional compilation targets
    // Remove old moon.pkg.json if it exists (moon.pkg takes precedence)
    let old_moon_pkg_json = "\{output_dir}/moon.pkg.json"
    if @fs.path_exists(old_moon_pkg_json) {
      println("  Removing old \{old_moon_pkg_json}...")
      @fs.remove_file(old_moon_pkg_json) catch {
        e => println("Warning: failed to remove old moon.pkg.json: \{e}")
      }
    }
    println("=== Generating moon.pkg ===")
    let moon_pkg_content = generate_moon_pkg(js_files, wasm_files)
    let moon_pkg_path = "\{output_dir}/moon.pkg"
    println("  Writing \{moon_pkg_path}...")
    @fs.write_string_to_file(moon_pkg_path, moon_pkg_content) catch {
      e => fail("failed to write moon.pkg: \{e}")
    }
    println("\n=== Generation complete! ===")
    println(
      "Generated \{enum_count} enums, \{typedef_count} typedefs, \{dict_count} dictionaries, \{iface_count} interfaces, \{callback_count} callbacks, \{namespace_count} namespaces",
    )
    println("Output directory: \{output_dir}")
  } catch {
    e => println("Error: \{e}")
  }
}
