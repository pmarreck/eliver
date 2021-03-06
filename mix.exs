defmodule Eliver.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eliver,
      version: "1.3.1",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: "Interactive semantic versioning for Elixir packages",
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp package do
    [
      maintainers: ["Martin Pretorius"],
      licenses:    ["MIT"],
      links:       %{"GitHub" => "https://github.com/glasnoster/eliver"}
    ]
  end

  defp deps do
    [
      {:enquirer, "~> 0.1.0"},
      {:ex_doc, "~> 0.12", only: :dev}
    ]
  end
end
