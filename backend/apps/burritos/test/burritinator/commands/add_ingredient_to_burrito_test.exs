defmodule Burritinator.Burritos.Test.Commands.AddIngredientToBurritoTest do
  use Burritinator.Database.Test.DataCase

  import Burritinator.Database.Factory, only: [insert: 2]

  alias Burritinator.Burritos.Commands.AddIngredientToBurrito

  setup do
    burrito = insert(:burrito, %{name: "test burrito"})
    ingredient = insert(:ingredient, %{name: "salsa", size: 1})

    %{burrito: burrito, ingredient: ingredient}
  end

  test "should add an ingredient to a burrito", %{burrito: burrito, ingredient: ingredient} do
    inserted_ingredient = AddIngredientToBurrito.execute(burrito.id, ingredient.id)

    assert inserted_ingredient.burrito_id == "hi"
    assert inserted_ingredient.ingredient_id == "hi"
  end
end
