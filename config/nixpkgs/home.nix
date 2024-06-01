{ config, pkgs, nixos, ... }:

{
  programs.home-manager.enable = true;
  home.username = "arinal";
  home.homeDirectory = "/home/arinal";
  home.stateVersion = "21.11";

  home.packages = [
    # pkgs.bat
    # pkgs.tldr
    # pkgs.fasd
    # pkgs.ripgrep
    # pkgs.lsd
    # pkgs.jq
    # pkgs.jc
    # pkgs.yq
    # pkgs.fzf
    pkgs.pet

    # pkgs.cmatrix
    # pkgs.neofetch
    # pkgs.figlet
    # pkgs.lolcat

    # pkgs.gh
    # pkgs.lazygit
    # pkgs.lazydocker
    # pkgs.stress
    # pkgs.w3m
    # pkgs.ncdu
    # pkgs.neuron-notes
    # pkgs.tmux

    # language 
    # pkgs.nasm
    # pkgs.go_1_17

    # jvm based
    pkgs.jdk
    # pkgs.gradle
    # pkgs.maven
    # pkgs.groovy
    # pkgs.scala
    # pkgs.sbt
    # pkgs.ammonite
    # pkgs.coursier

    # pkgs.feh
    # pkgs.rust
    # pkgs.ranger
    # pkgs.bash
    # pkgs.zsh
    # pkgs.neovim
    # pkgs.polybar
    # pkgs.rofi
  ];

  nixpkgs.overlays =
    let
      java-overlay = self: super:
        let
          jre = super.graalvm11-ce;
          jdk = jre;
        in
          {
            inherit jre jdk;
            scala = super.scala.override { inherit jre; };
          };
    in
      [ java-overlay ];
}
