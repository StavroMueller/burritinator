defmodule Burritinator.Database.Schema.Burrito do
  use Ecto.Schema

  import Ecto.Changeset

  alias __MODULE__, as: Burrito

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  @required_params [:name]

  @optional_params []

  schema "burritos" do
    field(:name, :string)
  end

  def changeset(model=%Burrito{}, attrs \\ %{}) do
    model
    |> cast(attrs, @required_params ++ @optional_params)
    |> validate_required(@required_params)
  end
end
