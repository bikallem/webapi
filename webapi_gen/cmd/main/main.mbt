///|
/// Default config file path (run from webapi_gen/)
let default_config_file : String = "config.toml"

///|
#cfg(any(target="native", target="llvm"))
extern "c" fn runtime_native_exit(code : Int) = "exit"

///|
#cfg(any(target="native", target="llvm"))
fn exit_failure() -> Unit {
  runtime_native_exit(1)
}

///|
#cfg(target="js")
extern "js" fn runtime_js_try_exit(code : Int) -> Bool =
  #| function(code) {
  #|   if (typeof process !== "undefined" && typeof process.exit === "function") {
  #|     process.exit(code);
  #|     return true;
  #|   }
  #|   return false;
  #| }

///|
#cfg(target="js")
fn exit_failure() -> Unit {
  if !runtime_js_try_exit(1) {
    panic()
  }
}

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn runtime_wasm_exit(code : Int) -> Unit = "__moonbit_sys_unstable" "exit"

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn exit_failure() -> Unit {
  runtime_wasm_exit(1)
}

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
fn track_output_file(
  expected_files : @hashset.HashSet[String],
  filename : String,
) -> Unit {
  expected_files.add(filename)
}

///|
fn write_output_file(
  output_dir : String,
  filename : String,
  content : String,
  expected_files : @hashset.HashSet[String],
) -> Unit raise {
  let filepath = "\{output_dir}/\{filename}"
  println("  Writing \{filepath}...")
  @fs.write_string_to_file(filepath, content) catch {
    e => fail("failed to write \{filepath}: \{e}")
  }
  track_output_file(expected_files, filename)
}

///|
fn is_generated_output_file(filename : String) -> Bool {
  if filename.has_suffix(".mbt") {
    true
  } else {
    match filename {
      "moon.pkg" | "moon.pkg.json" | "skipped.log" | "webapi.mjs" => true
      _ => false
    }
  }
}

///|
fn reconcile_output_dir(
  output_dir : String,
  expected_files : @hashset.HashSet[String],
) -> Unit raise {
  println("=== Reconciling Output Directory ===")
  let output_files = @fs.read_dir(output_dir) catch {
    e => fail("failed to read output directory \{output_dir}: \{e}")
  }
  let stale_files = output_files.filter(fn(filename) {
    is_generated_output_file(filename) && !expected_files.contains(filename)
  })
  stale_files.sort()
  for filename in stale_files {
    let filepath = "\{output_dir}/\{filename}"
    let is_file = @fs.is_file(filepath) catch {
      e => fail("failed to stat \{filepath}: \{e}")
    }
    if is_file {
      println("  Removing stale \{filepath}...")
      @fs.remove_file(filepath) catch {
        e => fail("failed to remove stale output file \{filepath}: \{e}")
      }
    }
  }
}

///|
/// Copy all .mbt template files from templates_dir to output_dir.
/// Returns arrays of JS-only and wasm-only filenames for conditional compilation.
fn copy_templates(
  templates_dir : String,
  output_dir : String,
  expected_files : @hashset.HashSet[String],
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
      println("  Copying \{filename}...")
      let content = @fs.read_file_to_string(src_path) catch {
        e => fail("failed to read template \{src_path}: \{e}")
      }
      write_output_file(output_dir, filename, content, expected_files)
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
  expected_files : @hashset.HashSet[String],
) -> Int raise {
  fn sorted_keys(keys : Iter[String]) -> Array[String] {
    let names = keys.collect()
    names.sort()
    names
  }

  fn write_files(
    files : Map[@emit.Filename, @emit.Code],
    track : Array[String]?,
  ) -> Unit raise {
    let filenames = files
      .keys()
      .map(fn(f) {
        let @emit.Filename(n) = f
        n
      })
      .collect()
    filenames.sort()
    for filename in filenames {
      write_output_file(
        output_dir,
        filename,
        files[@emit.Filename(filename)].0,
        expected_files,
      )
      match track {
        Some(arr) => arr.push(filename)
        None => ()
      }
    }
  }

  println("=== Generating \{type_name} ===")
  let multi = @emit.emit_all_multi(emitter, sorted_keys(keys).iter())
  let count = multi.shared.length()
  write_files(multi.shared, None)
  write_files(multi.js_ffi, Some(js_files))
  write_files(multi.wasm_ffi, Some(wasm_files))
  count
}

///|
/// Filter IDL with only whitelisted interfaces, dictionaries, enums, typedefs, and callbacks.
fn filter_idl(
  config : @config.Config,
  defns : Array[@parser.DefinitionExtendedAttributes],
) -> Array[@parser.DefinitionExtendedAttributes] {
  let excluded_interfaces = config.excluded_interfaces
  let excluded_callbacks = config.excluded_callbacks
  let excluded_typedefs = config.excluded_typedefs
  fn is_dictionary_prefix_excluded(name : String) -> Bool {
    config.excluded_dictionary_prefixes
    .iter()
    .any(prefix => name.has_prefix(prefix))
  }

  defns.filter(fn(def) {
    match def.definition {
      Interface(iface) => !excluded_interfaces.contains(iface.name)
      PartialInterface(piface) => !excluded_interfaces.contains(piface.name)
      Mixin(mxn) => !excluded_interfaces.contains(mxn.name)
      PartialMixin(pmxn) => !excluded_interfaces.contains(pmxn.name)
      Dictionary(dict) => !is_dictionary_prefix_excluded(dict.name)
      PartialDictionary(pdict) => !is_dictionary_prefix_excluded(pdict.name)
      Typedef(td) => !excluded_typedefs.contains(td.name)
      CallbackFunction(cbf) => !excluded_callbacks.contains(cbf.name)
      CallbackInterface(cbi) => !excluded_callbacks.contains(cbi.name)
      Namespace(_) | PartialNamespace(_) | Enum(_) | Includes(_) => true
    }
  })
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
    let expected_files : @hashset.HashSet[String] = @hashset.new()
    let (js_files, wasm_files) = copy_templates(
      templates_dir,
      output_dir,
      expected_files,
    )

    // Write skipped log
    if skipped_logs.length() > 0 {
      let content = skipped_logs.join("\n")
      try write_output_file(output_dir, "skipped.log", content, expected_files) catch {
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
      expected_files,
    )
    let typedef_count = emit_and_write_multi(
      output_dir,
      "Typedefs",
      @emit.TypedefEmitter::{ idl: flattened, type_registry },
      flattened.typedefs.keys(),
      js_files,
      wasm_files,
      expected_files,
    )
    let dict_count = emit_and_write_multi(
      output_dir,
      "Dictionaries",
      @emit.DictionaryEmitter::{ idl: flattened, type_registry },
      flattened.dictionaries.keys(),
      js_files,
      wasm_files,
      expected_files,
    )
    let iface_count = emit_and_write_multi(
      output_dir,
      "Interfaces",
      @emit.InterfaceEmitter::{ idl: flattened, type_registry, log_skipped },
      flattened.interfaces.keys(),
      js_files,
      wasm_files,
      expected_files,
    )
    let callback_count = emit_and_write_multi(
      output_dir,
      "Callbacks",
      @emit.CallbackEmitter::{ idl: flattened, type_registry },
      flattened.callbacks.keys(),
      js_files,
      wasm_files,
      expected_files,
    )
    let namespace_count = emit_and_write_multi(
      output_dir,
      "Namespaces",
      @emit.NamespaceEmitter::{ idl: flattened, type_registry },
      flattened.namespaces.keys(),
      js_files,
      wasm_files,
      expected_files,
    )

    // Generate and write JS runtime for wasm-gc
    println("=== Generating JS Runtime ===")
    let js_runtime = @emit.emit_js_runtime(flattened)
    write_output_file(output_dir, "webapi.mjs", js_runtime, expected_files)

    // Generate moon.pkg with conditional compilation targets
    println("=== Generating moon.pkg ===")
    let moon_pkg_content = generate_moon_pkg(js_files, wasm_files)
    write_output_file(output_dir, "moon.pkg", moon_pkg_content, expected_files)
    reconcile_output_dir(output_dir, expected_files)
    println("\n=== Generation complete! ===")
    println(
      "Generated \{enum_count} enums, \{typedef_count} typedefs, \{dict_count} dictionaries, \{iface_count} interfaces, \{callback_count} callbacks, \{namespace_count} namespaces",
    )
    println("Output directory: \{output_dir}")
  } catch {
    e => {
      println("Error: \{e}")
      exit_failure()
    }
  }
}
