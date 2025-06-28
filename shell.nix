#! /usr/bin/env nix-shell
# python -m venv .venv
# source .venv/bin/activate
# pip install -r requirements.txt
let
    pkgs = import <nixpkgs> {};
in pkgs.mkShell {
    packages = [
        pkgs.python312Full
        pkgs.ffmpeg_6-full
    ];
}
