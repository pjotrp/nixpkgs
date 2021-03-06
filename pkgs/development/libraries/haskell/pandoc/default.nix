# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, alex, ansiTerminal, base64Bytestring, binary
, blazeHtml, blazeMarkup, dataDefault, deepseqGenerics, Diff
, executablePath, extensibleExceptions, filepath, haddockLibrary
, happy, highlightingKate, hslua, HTTP, httpClient, httpClientTls
, httpTypes, HUnit, JuicyPixels, mtl, network, networkUri
, pandocTypes, parsec, QuickCheck, random, scientific, SHA, syb
, tagsoup, temporary, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, texmath, text, time
, unorderedContainers, vector, xml, yaml, zipArchive, zlib
, fetchurl
}:

let
  editedCabalFile = fetchurl {
    url = "hackage.haskell.org/package/pandoc-1.13.1/pandoc.cabal";
    sha256 = "1i57yk1pql4gv97cs86fk82hkwncics1wkzjqd9iz866204y4wrg";
  };
in
cabal.mkDerivation (self: {
  pname = "pandoc";
  version = "1.13.1";
  sha256 = "0vvysa70xp4pskxrvslmddwdsalc479zb8wn6z1vmpvfssvvj6vv";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson alex base64Bytestring binary blazeHtml blazeMarkup
    dataDefault deepseqGenerics extensibleExceptions filepath
    haddockLibrary happy highlightingKate hslua HTTP httpClient
    httpClientTls httpTypes JuicyPixels mtl network networkUri
    pandocTypes parsec random scientific SHA syb tagsoup temporary
    texmath text time unorderedContainers vector xml yaml zipArchive
    zlib
  ];
  testDepends = [
    ansiTerminal Diff executablePath filepath highlightingKate HUnit
    pandocTypes QuickCheck syb testFramework testFrameworkHunit
    testFrameworkQuickcheck2 text zipArchive
  ];
  preConfigure = "cp ${editedCabalFile} pandoc.cabal";
  configureFlags = "-fhttps -fmake-pandoc-man-pages";
  jailbreak = true;
  doCheck = false;
  meta = {
    homepage = "http://johnmacfarlane.net/pandoc";
    description = "Conversion between markup formats";
    license = "GPL";
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ simons ];
  };
})
