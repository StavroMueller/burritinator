defmodule Burritinator.Database.Repo.Migrations.Burritos do
  use Ecto.Migration

  def change do
    create table(:burritos, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string, null: false

      timestamps()
    end
  end
end
