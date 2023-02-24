[
  import_deps: [:ecto, :phoenix],
  plugins: [Phoenix.LiveView.HTMLFormatter],
  inputs: [
    "*.{heex,ex,exs}",
    "priv/*/seeds.exs",
    "{config,lib,test}/**/*.{heex,ex,exs}",
    "storybook/**/*.exs"
  ],
  subdirectories: ["priv/*/migrations"]
]
