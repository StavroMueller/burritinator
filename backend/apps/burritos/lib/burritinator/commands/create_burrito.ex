defmodule Burritinator.Burritos.Commands.CreateBurrito do
  @moduledoc """
  Create a burrito
  """
  alias Ecto.Multi
  alias Burritinator.Database.Repo
  alias Burritinator.Database.Schema.Burrito

  def execute(params) do
    multi =
      Multi.new()
      |> Multi.put(:params, params)
      |> Multi.run(:result, &insert_burrito/2)

    case Repo.transaction(multi) do
      {:ok, %{result: result}} ->
        {:ok, result}

      {:error, _step, changeset, _multi} ->
        {:error, changeset}
    end
  end

  defp insert_burrito(_repo, %{params: params}) do
    Burrito.changeset(%Burrito{}, params) |> Repo.insert()
  end
end
