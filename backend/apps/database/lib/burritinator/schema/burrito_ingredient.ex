defmodule Burritinator.Database.Schema.BurritoIngredient do
  use Ecto.Schema

  import Ecto.Changeset

  alias __MODULE__, as: BurritosIngredients

  alias Burritinator.Database.Schema.{Burrito, Ingredient}

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  @required_params [:burrito_id, :ingredient_id]

  @optional_params []

  schema "burritos_ingredients" do
    belongs_to(:burrito, Burrito)
    belongs_to(:ingredient, Ingredient)
    timestamps()
  end

  def changeset(model = %BurritosIngredients{}, attrs \\ %{}) do
    model
    |> cast(attrs, @required_params ++ @optional_params)
    |> validate_required(@required_params)
  end
end
