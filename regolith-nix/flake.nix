{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }:
  let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in 
    {
      packages.x86_64-linux.ilia = pkgs.callPackage ./ilia.nix{};
  };
}
