defmodule Burritinator.Database.Repo.Migrations.Ingredients do
  use Ecto.Migration

  def change do
    create table(:ingredients, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string, null: false
      add :size, :integer, null: false

      timestamps()
    end
  end
end
