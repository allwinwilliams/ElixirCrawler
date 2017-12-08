defmodule Crawler do
  @moduledoc """
  Documentation for Scraper.
  """

  use Hound.Helpers

  def check do
    IO.puts "working well..."
  end

  def get_websites_list do
    IO.puts "get websites list..." 
  end

  def check do
    get_websites_list
  end

  def hello do
    :world
  end
end
