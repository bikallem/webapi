///|
/// Generator configuration loaded from 'config.toml'.
pub struct GeneratorConfig {
  idl_dir : String
  output_dir : String
  templates_dir : String
  template_files : Array[String]
  core_specs : @hashset.HashSet[String]
  excluded_interfaces : @hashset.HashSet[String]
  excluded_callbacks : @hashset.HashSet[String]
  excluded_typedefs : @hashset.HashSet[String]
  excluded_dictionary_prefixes : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
/// Extract a string value from a TomlValue
fn get_string(
  table : Map[String, @toml.TomlValue],
  key : String,
) -> String raise {
  match table.get(key) {
    Some(TomlString(s)) => s
    Some(_) => fail("expected string for key '\{key}'")
    None => fail("missing required key '\{key}'")
  }
}

///|
/// Extract an array of strings from a TomlValue
fn get_string_array(
  table : Map[String, @toml.TomlValue],
  key : String,
) -> Array[String] raise {
  match table.get(key) {
    Some(TomlArray(arr)) => {
      let result : Array[String] = []
      for item in arr {
        match item {
          TomlString(s) => result.push(s)
          _ => fail("expected string array for key '\{key}'")
        }
      }
      result
    }
    Some(_) => fail("expected array for key '\{key}'")
    None => fail("missing required key '\{key}'")
  }
}

///|
pub fn load_config_from_string(content : String) -> GeneratorConfig raise {
  let toml = @toml.parse(content) catch {
    e => fail("Invalid config TOML: \{e}")
  }
  guard toml is TomlTable(table) else {
    fail("expected TOML table at root level")
  }
  {
    idl_dir: get_string(table, "idl_dir"),
    output_dir: get_string(table, "output_dir"),
    templates_dir: get_string(table, "templates_dir"),
    template_files: get_string_array(table, "template_files"),
    core_specs: @hashset.from_array(get_string_array(table, "core_specs")),
    excluded_interfaces: @hashset.from_array(
      get_string_array(table, "excluded_interfaces"),
    ),
    excluded_callbacks: @hashset.from_array(
      get_string_array(table, "excluded_callbacks"),
    ),
    excluded_typedefs: @hashset.from_array(
      get_string_array(table, "excluded_typedefs"),
    ),
    excluded_dictionary_prefixes: @hashset.from_array(
      get_string_array(table, "excluded_dictionary_prefixes"),
    ),
  }
}

///|
test "load_from_string with invalid TOML raises" {
  let invalid_toml = "invalid = ["
  try {
    let _ : GeneratorConfig = load_config_from_string(invalid_toml)
    fail("expected error")
  } catch {
    e => assert_true(e.to_string().contains("Invalid config TOML"))
  }
}

///|
test "load_from_string with valid TOML" {
  let valid_toml =
    #|idl_dir = "../node_modules/@webref/idl"
    #|output_dir = "../src"
    #|templates_dir = "base.mbt"
    #|template_files = ["js_value.mbt"]
    #|core_specs = ["dom", "html"]
    #|excluded_interfaces = ["Element", "Node"]
    #|excluded_callbacks = ["MutationCallback"]
    #|excluded_typedefs = ["EventHandler"]
    #|excluded_dictionary_prefixes = ["ElementCreationOptions"]
    #|
  let cfg = load_config_from_string(valid_toml)
  @json.inspect(cfg, content={
    "idl_dir": "../node_modules/@webref/idl",
    "output_dir": "../src",
    "templates_dir": "base.mbt",
    "template_files": ["js_value.mbt"],
    "core_specs": ["dom", "html"],
    "excluded_interfaces": ["Element", "Node"],
    "excluded_callbacks": ["MutationCallback"],
    "excluded_typedefs": ["EventHandler"],
    "excluded_dictionary_prefixes": ["ElementCreationOptions"],
  })
}

///|
test "load_from_string with empty arrays" {
  let empty_toml =
    #|idl_dir = ""
    #|output_dir = ""
    #|templates_dir = ""
    #|template_files = []
    #|core_specs = []
    #|excluded_interfaces = []
    #|excluded_callbacks = []
    #|excluded_typedefs = []
    #|excluded_dictionary_prefixes = []
    #|
  let cfg = load_config_from_string(empty_toml)
  @json.inspect(cfg, content={
    "idl_dir": "",
    "output_dir": "",
    "templates_dir": "",
    "template_files": [],
    "core_specs": [],
    "excluded_interfaces": [],
    "excluded_callbacks": [],
    "excluded_typedefs": [],
    "excluded_dictionary_prefixes": [],
  })
}
