defmodule Burritinator.Burritos.Test.Commands.CreateBurritoTest do
  use Burritinator.Database.Test.DataCase

  alias Burritinator.Burritos.Commands.CreateBurrito

  test "should create a burrito with a name" do
    burrito = %{
      name: "burrito"
    }

    {:ok, result} = CreateBurrito.execute(burrito)

    assert result.name == "burrito"
  end
end
