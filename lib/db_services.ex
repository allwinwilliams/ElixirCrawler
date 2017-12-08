defmodule Crawler.DbServices do
  @moduledoc """
  Documentation for Scraper.
  """

  def check do
    IO.puts "working well..."
  end

  def start do
    Bolt.Sips.start_link(url: "localhost")
  end

  def connect do
    conn=Bolt.Sips.conn
  end

  def select do
    connect
    |> Bolt.Sips.query!("MATCH (a:Article) RETURN a.title")
    |> IO.puts
  end

  def stop do

  end

  def store(data) do

  end

  def add_relation() do
    IO.puts "check if an article..."
  end

  def hello do
    :world
  end
end
