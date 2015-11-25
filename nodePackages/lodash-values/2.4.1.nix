{ buildNodePackage, nodePackages, pkgs }:
buildNodePackage {
    name = "lodash.values";
    version = "2.4.1";
    src = pkgs.fetchurl {
      url = "http://registry.npmjs.org/lodash.values/-/lodash.values-2.4.1.tgz";
      sha1 = "abf514436b3cb705001627978cbcf30b1280eea4";
    };
    deps = with nodePackages; [
      lodash-keys_2-4-1
    ];
    devDependencies = [];
    meta = {
      homepage = "http://lodash.com/custom-builds";
      description = "The Lo-Dash function `_.values` as a Node.js module generated by lodash-cli.";
      keywords = [
        "functional"
        "lodash"
        "lodash-modularized"
        "server"
        "util"
      ];
    };
  }