defmodule DrawTest do
  use ExUnit.Case
  doctest Draw

  test "greets the world" do
    assert Draw.hello() == :world
  end
end
