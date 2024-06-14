final: prev: {
  ilia = final.writeShellScriptBin "ilia" ''
    ${prev.ilia}/bin/ilia --help
  '';
}
