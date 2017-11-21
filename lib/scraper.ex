defmodule Scraper do
  @moduledoc """
  Documentation for Scraper.
  """

  use Hound.Helpers

  def check do
    IO.puts "working well..."
  end

  def start do
    IO.puts "starting"
    Hound.start_session
    navigate_to "http://allwinwilliams.com"
  end

  def download(src) do
    IO.puts "Downloading #{src}"
    IO.puts HTTPoison.get!(src).body
    IO.puts "Done Downloading #{src}"
  end

  @doc """
  Hello world.

  ## Examples

      iex> Scraper.hello
      :world

  """
  def hello do
    :world
  end
end
