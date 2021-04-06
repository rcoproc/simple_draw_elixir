defmodule Draw do
  @moduledoc """
  Documentation for `Draw`.

  Original content and further explanation in, original content and explanation 
  in:
  https://medium.com/@brucepomeroy/accepting-optional-options-in-elixir-65e7eaed11ac
  """

  @defaults %{color: "black", shape: "circle"}

  def start(_type, _args) do
    IO.puts "Call 1"
    Draw.call([shape: "circle", color: "black"])

    IO.puts "Call 2"
    Draw.call([color: "black", shape: "circle"])
    Task.start(fn -> :timer.sleep(1000); IO.puts("call sleeping") end)
  end

  @doc """
  Call method print a string "Draw a black circle"

  ## Examples

      iex> Draw.call([shape: "circle", color: "black"])
      iex> Draw.call([color: "black", shape: "circle"])

      
      Draw a black circle
  """
  def call(options \\ [] ) do
    %{color: color, shape: shape} = Enum.into(options, @defaults)
    IO.inspect(Enum.into(options, @defaults))
    IO.puts("Draw a #{color} #{shape}")
  end
end

