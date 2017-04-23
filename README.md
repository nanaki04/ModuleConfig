# ModuleConfig

Helper application intended for injecting module aliases into files, so dependency submodules can be swapped smoothly.
Module alias names can be set up in the application config file, an thus can and should be overridden in the main application.
Modules that make use of submodule handled by this application should inject their alias names by calling use ModuleConfig.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `moduleConfig` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:moduleConfig, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/moduleConfig](https://hexdocs.pm/moduleConfig).

