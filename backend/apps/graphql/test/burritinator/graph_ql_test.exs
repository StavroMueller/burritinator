defmodule Burritinator.GraphQlTest do
  use ExUnit.Case
  doctest Burritinator.GraphQl

  test "greets the world" do
    assert Burritinator.GraphQl.hello() == :world
  end
end
