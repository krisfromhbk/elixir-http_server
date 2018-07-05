defmodule HttpServer do
  @moduledoc """
  Documentation for HttpServer.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HttpServer.hello
      :world

  """
  def init(default_options) do
    IO.puts "initializing plug"
    default_options
  end

  def call(conn, options) do
    IO.puts "calling plug"

    conn
    |> Plug.Conn.send_resp(200, "hello world")
  end
end
