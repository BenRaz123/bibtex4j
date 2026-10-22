{ ... }:
{
  projectRootFile = "flake.nix";

  programs = {
    nixfmt.enable = true;
    google-java-format.enable = true;
    # i want those 4 spaces lol
    # see https://github.com/numtide/treefmt-nix/blob/main/programs/google-java-format.nix
    google-java-format.aospStyle = true;
  };
}
