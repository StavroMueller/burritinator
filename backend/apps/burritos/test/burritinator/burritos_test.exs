defmodule Burritinator.BurritosTest do
  use ExUnit.Case
  doctest Burritinator.Burritos

  test "greets the world" do
    assert Burritinator.Burritos.hello() == :world
  end
end
