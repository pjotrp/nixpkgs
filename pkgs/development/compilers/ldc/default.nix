{ stdenv, fetchurl, fetchgit, git, unzip, llvm, cmake, libconfig, cacert } :

assert stdenv.isLinux; 

let
  realGcc = stdenv.gcc.gcc;
in
stdenv.mkDerivation rec {
  pname = "ldc";
  version = "0.15.0-beta1";
  name = "${pname}-${version}";

  # src = fetchurl {
  #    url = "https://github.com/ldc-developers/ldc/archive/v0.15.0-beta1.zip";
  #    sha256 = "082lzp6rk65fkq4dja69w5immvs78391r9fj7an2a1krdav3mksq";
  #  };

  src = fetchgit {
      url = "https://github.com/ldc-developers/ldc.git";
      rev = "e9ac4b52b9debde42bc1589754be8b6e7b91bbb2";
      sha256 = "1di44z4d6lfy32d7li4wjbs1ipk7jv0ig2wdxclj701n2j1px1an";
      fetchSubmodules = false;
  };

  buildInputs = [ libconfig git llvm cmake ] ;

  # configurePhase = ''
  #
  # '';

  # preBuild = ''
  # '';

  # dontStrip = true;

  enableParallelBuilding = true;

  meta = {
    description = "High-level performance-oriented dynamical language for technical computing";
    homepage = "http://julialang.org/";
    license = stdenv.lib.licenses.mit;
    # maintainers = [ stdenv.lib.maintainers. ];
    platforms = with stdenv.lib.platforms; linux;
    broken = false;
  };
}
