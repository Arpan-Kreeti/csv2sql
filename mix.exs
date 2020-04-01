defmodule Csv2sql.MixProject do
  use Mix.Project

  def project do
    [
      app: :csv2sql,
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
      mod: {Csv2sql.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nimble_csv, "~> 0.7.0"},
      {:myxql, "~> 0.3.4"},
      {:ecto, "~> 3.4"},
      {:ecto_sql, "~> 3.1"},
      {:dir_walker, "~> 0.0.8"},
      {:stream_split, "~> 0.1.0"},
      {:cli_spinners, "~> 0.1.0"}
    ]
  end
end
