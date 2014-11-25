{ stdenv, fetchurl, openssl, fetchgit, git, unzip, llvm, cmake, libconfig, cacert } :

assert stdenv.isLinux; 

let
  realGcc = stdenv.gcc.gcc;
in
stdenv.mkDerivation rec {
  pname = "ldc";
  version = "0.15.0-beta1";
  name = "${pname}-${version}";

  src = fetchgit {
      url = "https://github.com/ldc-developers/ldc.git";
      rev = "e9ac4b52b9debde42bc1589754be8b6e7b91bbb2";
      sha256 = "1di44z4d6lfy32d7li4wjbs1ipk7jv0ig2wdxclj701n2j1px1an";
      fetchSubmodules = true;
  };

  druntime = fetchgit {
    url = https://github.com/ldc-developers/druntime.git;
    rev = "4a3b3f447234c3febe112aa3629627daf658be38";
    sha256 = "1b6zz5z012d07licqmngd9nsr5fscgghx62ibyi9ma687qv4i10j";
  };

  buildInputs = [ libconfig openssl llvm cmake cacert ] ;

  # prePatch = ''
  # '';

  # configurePhase = ''
  #
  # '';

  postPatch = ''
    rm -rf runtime/druntime
    ln -s $druntime runtime/druntime
  '';

  # dontStrip = true;
  # enableParallelBuilding = true;

  meta = {
    description = "High-level performance-oriented dynamical language for technical computing";
    homepage = "http://julialang.org/";
    license = stdenv.lib.licenses.mit;
    # maintainers = [ stdenv.lib.maintainers. ];
    platforms = with stdenv.lib.platforms; linux;
    broken = false;
  };
}
