# Used by "mix format" and to export configuration.
export_locals_without_parens = [
  plug: 1,
  plug: 2,
  forward: 2,
  forward: 3,
  forward: 4,
  match: 2,
  match: 3,
  use: 2,
  use: 3,
  get: 2,
  get: 3,
  head: 2,
  head: 3,
  post: 2,
  post: 3,
  put: 2,
  put: 3,
  patch: 2,
  patch: 3,
  delete: 2,
  delete: 3,
  options: 2,
  options: 3
]

[
  line_length: 120,
  import_deps: [:ecto, :phoenix],
  plugins: [Phoenix.LiveView.HTMLFormatter],
  inputs: ["*.{heex,ex,exs}", "{config,lib,test}/**/*.{heex,ex,exs}", "priv/*/seeds.exs"],
  locals_without_parens: export_locals_without_parens,
  export: [locals_without_parens: export_locals_without_parens],
  subdirectories: ["priv/*/migrations"]
]
