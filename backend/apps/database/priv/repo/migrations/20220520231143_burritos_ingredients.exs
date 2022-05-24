defmodule Burritinator.Database.Repo.Migrations.BurritosIngredients do
  use Ecto.Migration

  def change do
    create table(:burritos_ingredients, primary_key: false) do
      add(:id, :uuid, primary_key: true, null: false)
      add(:burrito_id, references(:burritos, type: :uuid), null: false)
      add(:ingredient_id, references(:ingredients, type: :uuid), null: false)
      timestamps()
    end
  end
end
