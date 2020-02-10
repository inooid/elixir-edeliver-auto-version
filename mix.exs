defmodule EdeliverTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :edeliver_test,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      applications: [:edeliver]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:edeliver, ">= 1.6.0"},
      {:distillery, "~> 2.0", warn_missing: false},
    ]
  end
end
