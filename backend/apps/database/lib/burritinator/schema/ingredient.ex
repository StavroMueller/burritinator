defmodule Burritinator.Database.Schema.Ingredient do
  use Ecto.Schema

  import Ecto.Changeset

  alias __MODULE__, as: Ingredient

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  @required_params [:name, :size]

  @optional_params []

  schema "ingredients" do
    field(:name, :string)
    field(:size, :integer)

    timestamps()
  end

  def changeset(model = %Ingredient{}, attrs \\ %{}) do
    model
    |> cast(attrs, @required_params ++ @optional_params)
    |> validate_required(@required_params)
  end
end
