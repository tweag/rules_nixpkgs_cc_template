import (let
  lock =
    (builtins.fromJSON (builtins.readFile ./flake.lock)).nodes.nixpkgs.locked;
in fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/" + lock.rev + ".tar.gz";
  sha256 = lock.narHash;
}) { }
