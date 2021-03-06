# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, basePrelude, focus, free, hashable, HTF, lochTh, mtl
, placeholders, primitive, QuickCheck, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "stm-containers";
  version = "0.1.4";
  sha256 = "15h7qxxbr1ifkvmxsj30k0v3hp83m04iq25bvi3jmagvvk5hv5bj";
  buildDepends = [
    basePrelude focus hashable lochTh placeholders primitive
  ];
  testDepends = [
    basePrelude focus free hashable HTF lochTh mtl placeholders
    primitive QuickCheck unorderedContainers
  ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/nikita-volkov/stm-containers";
    description = "Containers for STM";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
