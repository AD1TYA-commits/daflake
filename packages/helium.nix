{ stdenvNoCC, fetchurl, xz, ... }:

stdenvNoCC.mkDerivation {
  pname = "helium";
  version = "0.19.2.1";

  src = fetchurl {
    url = "https://github.com/imputnet/helium-linux/releases/download/0.19.2.1/helium-0.19.2.1-x86_64_linux.tar.xz";
    hash = "sha256-cHzzGeOj0qoGHKFddUh3vRi4sokghzjIKfywhzvH7Ns=";
  };

  nativeBuildInputs = [ xz ];

  installPhase = ''
    mkdir -p "$out/opt/helium" "$out/bin"
    cp -r . "$out/opt/helium/"
    ln -s "$out/opt/helium/helium" "$out/bin/helium"
  '';
}
