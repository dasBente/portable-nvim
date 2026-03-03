{
  rust = import ./rust.nix;
  renpy = import ./renpy.nix;

  # web
  html = import ./html.nix;
  css = import ./css.nix;
  typescript = import ./typescript.nix;
  svelte = import ./svelte.nix;

  bash = import ./bash.nix;
  markdown = import ./markdown.nix;
  nix = import ./nix.nix;
}
