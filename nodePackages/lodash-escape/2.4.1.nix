{ buildNodePackage, nodePackages, pkgs }:
buildNodePackage {
    name = "lodash.escape";
    version = "2.4.1";
    src = pkgs.fetchurl {
      url = "http://registry.npmjs.org/lodash.escape/-/lodash.escape-2.4.1.tgz";
      sha1 = "2ce12c5e084db0a57dda5e5d1eeeb9f5d175a3b4";
    };
    deps = with nodePackages; [
      lodash-keys_2-4-1
      lodash-_escapehtmlchar_2-4-1
      lodash-_reunescapedhtml_2-4-1
    ];
    devDependencies = [];
    meta = {
      homepage = "http://lodash.com/custom-builds";
      description = "The Lo-Dash function `_.escape` as a Node.js module generated by lodash-cli.";
      keywords = [
        "functional"
        "lodash"
        "lodash-modularized"
        "server"
        "util"
      ];
    };
  }