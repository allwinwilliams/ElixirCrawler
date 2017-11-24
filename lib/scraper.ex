defmodule Crawler.Scraper do
  @moduledoc """
  Documentation for Scraper.
  """

  use Hound.Helpers

  def check do
    IO.puts "working well..."
  end

  def start do
    IO.puts "starting session..."
    Hound.start_session
  end

  def stop do
    IO.puts "...stopping session"
    Hound.end_session
  end

  def process_link(url) do
    url
  end

  def get_source(url) do
    HTTPoison.get!(url).body
    # navigate_to url
    # page_source()
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
    src = url
          |> get_source
          |> Floki.parse
    IO.puts "get links::"
    get_links(src)
    IO.puts "get articles::"
    get_article(src)
  end

  # def download(src) do
  #   IO.puts "Downloading #{src}"
  #   IO.puts HTTPoison.get!(src).body
  #   IO.puts "Done Downloading #{src}"
  # end

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
