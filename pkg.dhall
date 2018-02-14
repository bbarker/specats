let dep = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-pkg.dhall
in
let concat = https://ipfs.io/ipfs/QmQ8w5PLcsNz56dMvRtq54vbuPe9cNnCCUXAQp6xLc6Ccx/Prelude/Text/concat
in
let showVersion = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/dhall-version.dhall

in λ(x : List Integer) → 
  dep //
    { libName = "specats"
    , dir = ".atspkg/contrib"
    , url = concat [ "https://github.com/vmchale/specats/archive/", showVersion x, ".tar.gz"
    , libVersion = x
    }