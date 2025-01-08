
{
  description = "Development shell with zls using zig2nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShell.x86_64-linux = pkgs.mkShell {
        buildInputs = [
          pkgs.zig            # Adds the Zig compiler
          pkgs.zls            # Adds Zig Language Server
        ];
      };
    };
}
