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
    Hound.start_session()
  end

  def process_link(url) do
    url
  end

  def get_source(url) do
    HTTPoison.get!(url).body
  end

  def get_links(src) do
    IO.puts "getting urls..."
    src
    |> Floki.find("a")
    |> Floki.attribute("href")
    |> process_link
    |> IO.puts
    IO.puts "url listing complete..."
  end

  def get_article(src) do
    IO.puts "get article with title.."
    src
    |> Floki.find("body")
    |> Floki.text
    |> String.replace(~r/\s+/, " ")
    |> IO.puts
  end

  def process_source(url) do
    src = get_source(url)
          |> Floki.parse
    IO.puts "get links::"
    get_links(src)
    |> IO.puts
    IO.puts "get articles::"
    get_article(src)
    |> IO.puts
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
