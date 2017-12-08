defmodule Crawler.Classifier do
  @moduledoc """
  Documentation for Scraper.
  """

  use Hound.Helpers

  def check do
    IO.puts "working well..."
  end

  def classify do
    is_article
    format_article
    map_article
    already_present
  end

  def is_article do
    IO.puts "check if an article..."
  end

  def format_article do
    IO.puts "check if an article..."
  end

  def map_article do
    IO.puts "map an article..."
  end

  def already_present do
    IO.puts "check if an article is already present..."
  end

  def hello do
    :world
  end
end
