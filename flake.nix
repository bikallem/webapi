{
  description = "MoonBit WebAssembly project development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            wabt # WebAssembly Binary Toolkit (wasm-objdump, wasm2wat, etc.)
            wasm-tools # Rust Wasm tools with GC support (wasm-tools print)
          ];

          shellHook = ''
            echo "WebAssembly development environment loaded"
            echo "Available tools: wasm-objdump, wasm2wat, wat2wasm, wasm-validate, wasm-tools"
          '';
        };
      }
    );
}
