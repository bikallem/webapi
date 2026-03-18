///|
/// Default config file path (run from webapi_gen/)
let default_config_file : String = "config.json"

///|
let usage_exit_code : Int = 2

///|
let failure_exit_code : Int = 1

///|
priv struct GeneratorCliOptions {
  config_file : String
}

///|
fn build_cli_command() -> @argparse.Command {
  @argparse.Command(
    "webapi_gen",
    about="Generate MoonBit WebAPI bindings from WebIDL.",
    positionals=[
      PositionArg(
        "config",
        about="Path to the generator JSON config file.",
        default_values=[default_config_file],
        num_args=@argparse.ValueRange(lower=0, upper=1),
      ),
    ],
  )
}

///|
fn parse_cli_matches(matches : @argparse.Matches) -> GeneratorCliOptions {
  let config_file = matches.values
    .get("config")
    .map(values => values[0])
    .unwrap_or(default_config_file)
  { config_file, }
}

///|
fn parse_cli(
  argv : ArrayView[String],
  env? : Map[String, String] = {},
) -> GeneratorCliOptions raise {
  parse_cli_matches(build_cli_command().parse(argv~, env~))
}

///|
fn runtime_argv() -> Array[String] {
  let args = @sys.get_cli_args()
  if args.length() > 1 {
    args[1:].to_array()
  } else {
    []
  }
}

///|
fn parse_runtime_cli() -> GeneratorCliOptions raise {
  parse_cli(runtime_argv())
}

///|
priv struct GenerationSummary {
  config_file : String
  idl_dir : String
  templates_dir : String
  output_dir : String
  idl_file_count : Int
  definition_count : Int
  template_file_count : Int
  enum_count : Int
  typedef_count : Int
  dictionary_count : Int
  interface_count : Int
  callback_count : Int
  namespace_count : Int
  runtime_file_count : Int
  metadata_file_count : Int
  skipped_count : Int
  skipped_log_written : Bool
  stale_file_count : Int
  warnings : Array[String]
}

///|
fn format_generation_summary(summary : GenerationSummary) -> String {
  let generated_file_count = summary.enum_count +
    summary.typedef_count +
    summary.dictionary_count +
    summary.interface_count +
    summary.callback_count +
    summary.namespace_count
  let support_file_count = summary.runtime_file_count +
    summary.metadata_file_count +
    (if summary.skipped_log_written { 1 } else { 0 })
  let total_file_count = summary.template_file_count +
    generated_file_count +
    support_file_count
  let lines : Array[String] = [
    "=== MoonBit WebAPI Bindings Generator Summary ===",
    "Config: \{summary.config_file}",
    "Inputs: \{summary.idl_file_count} IDL files from \{summary.idl_dir}",
    "Filtered definitions: \{summary.definition_count}",
    "Templates: \{summary.template_file_count} files from \{summary.templates_dir}",
    "Generated types: \{summary.enum_count} enums, \{summary.typedef_count} typedefs, \{summary.dictionary_count} dictionaries, \{summary.interface_count} interfaces, \{summary.callback_count} callbacks, \{summary.namespace_count} namespaces",
    "Output: \{total_file_count} files written to \{summary.output_dir} (\{generated_file_count} generated, \{summary.template_file_count} templates, \{support_file_count} support)",
  ]
  if summary.stale_file_count > 0 {
    lines.push(
      "Cleanup: removed \{summary.stale_file_count} stale generated files",
    )
  }
  if summary.skipped_count > 0 {
    let skipped_detail = if summary.skipped_log_written {
      "details written to \{summary.output_dir}/skipped.log"
    } else {
      "details retained in memory only"
    }
    lines.push("Skipped items: \{summary.skipped_count} (\{skipped_detail})")
  }
  if summary.warnings.length() > 0 {
    lines.push("Warnings:")
    for warning in summary.warnings {
      lines.push("  - \{warning}")
    }
  }
  lines.join("\n")
}

///|
#cfg(any(target="native", target="llvm"))
extern "c" fn runtime_native_exit(code : Int) = "exit"

///|
#cfg(any(target="native", target="llvm"))
fn[T] exit_with(code : Int) -> T {
  runtime_native_exit(code)
  panic()
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
fn[T] exit_with(code : Int) -> T {
  if !runtime_js_try_exit(code) {
    panic()
  }
  panic()
}

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn runtime_wasm_exit(code : Int) -> Unit = "__moonbit_sys_unstable" "exit"

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn[T] exit_with(code : Int) -> T {
  runtime_wasm_exit(code)
  panic()
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
) -> Int raise {
  let output_files = @fs.read_dir(output_dir) catch {
    e => fail("failed to read output directory \{output_dir}: \{e}")
  }
  let stale_files = output_files.filter(fn(filename) {
    is_generated_output_file(filename) && !expected_files.contains(filename)
  })
  stale_files.sort()
  let mut removed_count = 0
  for filename in stale_files {
    let filepath = "\{output_dir}/\{filename}"
    let is_file = @fs.is_file(filepath) catch {
      e => fail("failed to stat \{filepath}: \{e}")
    }
    if is_file {
      @fs.remove_file(filepath) catch {
        e => fail("failed to remove stale output file \{filepath}: \{e}")
      }
      removed_count = removed_count + 1
    }
  }
  removed_count
}

///|
/// Copy all .mbt template files from templates_dir to output_dir.
fn copy_templates(
  templates_dir : String,
  output_dir : String,
  expected_files : @hashset.HashSet[String],
) -> Int raise {
  let template_files = @fs.read_dir(templates_dir) catch {
    e => fail("failed to read templates directory \{templates_dir}: \{e}")
  }
  let output_filenames : Array[String] = []
  for filename in template_files {
    if !filename.has_suffix(".mbt") {
      continue
    }
    output_filenames.push(filename)
  }
  output_filenames.sort()
  for filename in output_filenames {
    let src_path = "\{templates_dir}/\{filename}"
    let content = @fs.read_file_to_string(src_path) catch {
      e => fail("failed to read template \{src_path}: \{e}")
    }
    write_output_file(output_dir, filename, content, expected_files)
  }
  output_filenames.length()
}

///|
/// Emit and write merged multi-target files of a specific type.
/// Returns the count of types processed.
fn[E : @emit.Emitter] emit_and_write_multi(
  output_dir : String,
  emitter : E,
  keys : Iter[String],
  expected_files : @hashset.HashSet[String],
) -> Int raise {
  fn sorted_keys(keys : Iter[String]) -> Array[String] {
    let names = keys.collect()
    names.sort()
    names
  }

  let files = @emit.emit_all_multi(emitter, sorted_keys(keys).iter())
  let count = files.length()
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
  }
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
/// Generate moon.pkg content for unified cross-target source files.
fn generate_moon_pkg() -> String {
  (
    #|warnings = "-53"
    #|
    #|options(
    #|  "supported-targets": "js+wasm-gc",
    #|)
  )
}

///|
fn run_with_options(options : GeneratorCliOptions) -> Unit {
  let config_file = options.config_file
  try {
    // Read config
    let content = @fs.read_file_to_string(config_file) catch {
      e => fail("failed to read config file: \{e}")
    }
    let config = @config.load_config_from_string(content)
    let idl_dir = config.idl_dir
    let output_dir = config.output_dir
    let templates_dir = config.templates_dir

    // Initialize logger
    let skipped_logs : Array[String] = []
    let warnings : Array[String] = []
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

    // Parse all IDL files and merge definitions
    let all_definitions : Array[@parser.DefinitionExtendedAttributes] = []
    for idl_path in idl_paths {
      let definitions = @parser.parse_file(idl_path)
      let definitions = filter_idl(config, definitions)
      all_definitions.append(definitions)
    }
    let type_registry = @type_registry.TypeRegistry::new(all_definitions)
    let partials_merged = @partial_merged.merge_partials(all_definitions)
    let flattened = @flattened_idl.flatten(
      partials_merged,
      log_skipped,
      dictionary_member_injection=config.dictionary_member_injection,
    )
    type_registry.set_callback_defs(flattened.callbacks)
    type_registry.set_typedef_defs(flattened.typedefs)

    // Create output directory if it doesn't exist
    if not(@fs.path_exists(output_dir)) {
      @fs.create_dir(output_dir) catch {
        e => fail("failed to create output directory: \{e}")
      }
    }

    // Copy base template files
    let expected_files : @hashset.HashSet[String] = @hashset.new()
    let template_count = copy_templates(
      templates_dir, output_dir, expected_files,
    )

    // Write skipped log
    let skipped_log_written = if skipped_logs.length() > 0 {
      try {
        let content = skipped_logs.join("\n")
        write_output_file(output_dir, "skipped.log", content, expected_files)
        true
      } catch {
        e => {
          warnings.push("failed to write skipped.log: \{e}")
          false
        }
      }
    } else {
      false
    }

    // Generate and write generated code files (multi-target)
    let enum_count = emit_and_write_multi(
      output_dir,
      @emit.EnumEmitter::{ idl: flattened },
      flattened.enums.keys(),
      expected_files,
    )
    let typedef_count = emit_and_write_multi(
      output_dir,
      @emit.TypedefEmitter::{ idl: flattened, type_registry },
      flattened.typedefs.keys(),
      expected_files,
    )
    let dict_count = emit_and_write_multi(
      output_dir,
      @emit.DictionaryEmitter::{ idl: flattened, type_registry },
      flattened.dictionaries.keys(),
      expected_files,
    )
    let iface_count = emit_and_write_multi(
      output_dir,
      @emit.InterfaceEmitter::{ idl: flattened, type_registry, log_skipped },
      flattened.interfaces.keys(),
      expected_files,
    )
    let callback_count = emit_and_write_multi(
      output_dir,
      @emit.CallbackEmitter::{ idl: flattened, type_registry },
      flattened.callbacks.keys(),
      expected_files,
    )
    let namespace_count = emit_and_write_multi(
      output_dir,
      @emit.NamespaceEmitter::{ idl: flattened, type_registry },
      flattened.namespaces.keys(),
      expected_files,
    )

    // Generate and write JS runtime for wasm-gc
    let js_runtime = @emit.emit_js_runtime(flattened)
    write_output_file(output_dir, "webapi.mjs", js_runtime, expected_files)
    let runtime_file_count = 1

    // Generate moon.pkg with conditional compilation targets
    let moon_pkg_content = generate_moon_pkg()
    write_output_file(output_dir, "moon.pkg", moon_pkg_content, expected_files)
    let metadata_file_count = 1
    let stale_file_count = reconcile_output_dir(output_dir, expected_files)
    println(
      format_generation_summary(GenerationSummary::{
        config_file,
        idl_dir,
        templates_dir,
        output_dir,
        idl_file_count: idl_paths.length(),
        definition_count: all_definitions.length(),
        template_file_count: template_count,
        enum_count,
        typedef_count,
        dictionary_count: dict_count,
        interface_count: iface_count,
        callback_count,
        namespace_count,
        runtime_file_count,
        metadata_file_count,
        skipped_count: skipped_logs.length(),
        skipped_log_written,
        stale_file_count,
        warnings,
      }),
    )
  } catch {
    e => {
      println("Error: \{e}")
      exit_with(failure_exit_code)
    }
  }
}

///|
fn main {
  let options = parse_runtime_cli() catch {
    err => {
      println(err.to_string())
      exit_with(usage_exit_code)
    }
  }
  run_with_options(options)
}
