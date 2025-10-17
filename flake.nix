{
  description = "elissa.moe";

  inputs.nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";

  outputs = {
    nixpkgs,
    self,
    ...
  }: let
    inherit (nixpkgs) lib;

    forAllSystems = f:
      lib.genAttrs
      [
        "x86_64-linux"
        "aarch64-linux"
      ]
      (
        system:
          f (
            import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            }
          )
      );
  in {
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          pnpm
          nodejs_24
          nodePackages_latest.jsonlint
          astro-language-server
          tailwindcss-language-server
          typescript-language-server
          typescript
        ];
        env.ASTRO_TELEMETRY_DISABLED = 1;
      };
    });
  };
}
