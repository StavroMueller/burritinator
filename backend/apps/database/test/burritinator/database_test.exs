defmodule Burritinator.DatabaseTest do
  use ExUnit.Case
  doctest Burritinator.Database

  test "greets the world" do
    assert Burritinator.Database.hello() == :world
  end
end
