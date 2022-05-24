defmodule Burritinator.Burritos.Commands.AddIngredientToBurrito do
  @moduledoc """
  Add an ingredient to a burrito given the id of both
  """
  alias Ecto.Multi

  alias Burritinator.Database.Repo
  alias Burritinator.Database.Schema.BurritoIngredient

  alias Burritinator.Burritos.Queries.GetBurrito

  def execute(burrito_id, ingredient_id) do
    multi =
      Multi.new()
      |> Multi.put(:burrito_id, burrito_id)
      |> Multi.put(:ingredient_id, ingredient_id)
      |> Multi.run(:burrito, &get_burrito/2)
      |> Multi.run(:ingredient, &get_ingredient/2)
      |> Multi.run(:result, &add_ingredient/2)

    case Repo.transaction(multi) do
      {:ok, %{result: result}} ->
        {:ok, result}

      {:error, _step, _params, _multi} ->
        {:error, "there was an error adding ingredients to the burrito"}
    end
  end

  defp get_burrito(_repo, %{burrito_id: burrito_id}) do
    GetBurrito.run(burrito_id)
  end

  defp get_ingredient(_repo, %{ingredient_id: ingredient_id}) do
    GetIngredient.run(ingredient_id)
  end

  defp add_ingredient(_repo, %{ingredient: %{id: ingredient_id}, burrito: %{id: burrito_id}}) do
    params = %{
      ingredient_id: ingredient_id,
      burrito_id: burrito_id
    }

    BurritoIngredient.changeset(%BurritoIngredient{}, params) |> Repo.insert()
  end
end
