defmodule Membrane.LibdtlssrtpWrapper.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :membrane_libdtlssrtp_wrapper,
      version: @version,
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:bundlex] ++ Mix.compilers(),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_env), do: ["lib"]

  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:bundlex, "~> 0.2.7"}
    ]
  end
end
