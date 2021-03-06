# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, async, MonadCatchIOTransformers, monadLoops, snap, stm
, time, transformers
}:

cabal.mkDerivation (self: {
  pname = "snap-error-collector";
  version = "1.0.0";
  sha256 = "1rywfbc489kgbcm7svgrim3zihma5j9vy6cwhlc6dgvsb1rb37j2";
  buildDepends = [
    async MonadCatchIOTransformers monadLoops snap stm time
    transformers
  ];
  meta = {
    homepage = "http://github.com/ocharles/snap-error-collector";
    description = "Collect errors in batches and dispatch them";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ ocharles ];
  };
})
