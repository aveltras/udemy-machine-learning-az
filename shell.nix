with import <nixpkgs> {};

mkShell {
  buildInputs = [
    (python3.buildEnv.override {
      extraLibs = with python3Packages; [
        matplotlib
        numpy
        pandas
        python-language-server
        scikitlearn
      ];
    })
  ];
}
