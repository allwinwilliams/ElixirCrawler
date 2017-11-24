defmodule Crawler.Mixfile do
  use Mix.Project

  def project do
    [
      app: :crawler,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
	     applications: [:logger, :httpoison, :hound]
      # extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
	    {:httpoison, "~> 0.5"},
    	{:floki, "~> 0.3"},
      # {:html5ever, "~> 0.5.0"},
    	{:hound, "~> 1.0" },
      {:bolt_sips, "~> 0.4.1"}
    ]
  end
end
