defmodule GeolocationWithTasks.MixProject do
  use Mix.Project

  def project do
    [
      app: :geolocation_with_tasks,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :geolix],
      mod: {GeolocationWithTasks.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        { :geolix, "~> 1.0"},
        { :geolix_adapter_mmdb2, "~> 0.1.0"},
    ]
  end
end
