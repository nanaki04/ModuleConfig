defmodule ModuleConfig do
  @moduledoc """
  Documentation for ModuleConfig.
  Helper application intended for injecting module aliases into files, so dependency submodules can be swapped smoothly.
  Module alias names can be set up in the application config file, an thus can and should be overridden in the main application.
  Modules that make use of submodule handled by this application should inject their alias names by calling use ModuleConfig.
  """

  require Application

  defmacro __using__(_opts) do
    Application.get_env(:moduleConfig, :modules)
    |> Enum.map(fn({alias_name, module_name}) -> quote do alias unquote(module_name), as: unquote(alias_name) end end)
    |> (fn(aliases) -> {:__block__, [], aliases} end).()
  end

end
