defmodule ManageDeps.MixProject do
  use Mix.Project

  def project do
    [
      app: :manage_deps,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:httpoison, "~> 0.4"},
    ]
  end
end
