///|
/// Generator configuration loaded from 'config.json'.
struct GeneratorConfig {
  core_specs : Array[String]
  core_interfaces : Array[String]
  excluded_callbacks : Array[String]
  excluded_typedefs : Array[String]
  excluded_dictionary_prefixes : Array[String]
} derive(Show, Eq, ToJson, FromJson)

///|
/// Returns empty GeneratorConfig instance.
fn GeneratorConfig::empty() -> GeneratorConfig {
  {
    core_specs: [],
    core_interfaces: [],
    excluded_callbacks: [],
    excluded_typedefs: [],
    excluded_dictionary_prefixes: [],
  }
}

///|
/// Load config from a JSON file path.
fn GeneratorConfig::load_config(path : String) -> GeneratorConfig raise {
  let content = @fs.read_file_to_string(path) catch {
    e => fail("failed to read config file: \{e}")
  }
  let json = @json.parse(content) catch {
    e => fail("invalid config json: \{e}")
  }
  @json.from_json(json) catch {
    e => fail("failed to parse config json: \{e}")
  }
}

///|
test "GeneratorConfig::empty() returns empty config" {
  let cfg = GeneratorConfig::empty()
  inspect(cfg.core_specs.length(), content="0")
  inspect(cfg.core_interfaces.length(), content="0")
  inspect(cfg.excluded_callbacks.length(), content="0")
}

///|
test "GeneratorConfig roundtrip via JSON" {
  let cfg : GeneratorConfig = {
    core_specs: ["dom", "html"],
    core_interfaces: ["Element", "Node"],
    excluded_callbacks: ["MutationCallback"],
    excluded_typedefs: ["EventHandler"],
    excluded_dictionary_prefixes: ["ElementCreationOptions"],
  }
  let json = cfg.to_json().stringify()
  let parsed : GeneratorConfig = @json.parse(json) |> @json.from_json
  assert_eq(cfg, parsed)
}
