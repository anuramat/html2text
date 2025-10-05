{
  description = "html2text packaging";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
    in
    {
      packages = nixpkgs.lib.genAttrs systems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          pkg =
            with pkgs;
            stdenv.mkDerivation rec {
              pname = "html2text";
              version = "unstable";

              src = ./.;

              nativeBuildInputs = [
                autoconf-archive
                autoreconfHook
                bison
                gettext
              ];

              buildInputs = lib.optional stdenv.hostPlatform.isDarwin libiconv;

              meta = {
                description = "Convert HTML to plain text";
                mainProgram = "html2text";
                homepage = "https://gitlab.com/grobian/html2text";
                license = lib.licenses.gpl2Plus;
                platforms = lib.platforms.unix;
                maintainers = [ lib.maintainers.eikek ];
              };
            };
        in
        {
          default = pkg;
          html2text = pkg;
        }
      );
    };
}
