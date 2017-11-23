defmodule Scraper.Classifier do
  @moduledoc """
  Documentation for Scraper.
  """

  use Hound.Helpers

  def check do
    IO.puts "working well..."
  end

  def is_article() do
    IO.puts "check if an article..."
  end

  def map_article() do
    IO.puts "map an article..."
  end

  def hello do
    :world
  end
end
