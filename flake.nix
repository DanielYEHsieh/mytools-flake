{
  description = "for building panorama applications";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        with import nixpkgs { inherit system; };
        let
          rtsp = pkgs.callPackage ./rtsp/. {};
          packages = {
            rtsp-server = rtsp.server;
          };
        in
          {
            inherit packages;
          }
      );
}
