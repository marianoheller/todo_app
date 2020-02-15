defmodule Todo.MixProject do
  use Mix.Project

  def project do
    [
      app: :todo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :gproc],
      mod: {Todo.Application, []}
    ]
  end

  defp deps do
    [{:gproc, "0.8.0"}]
  end
end