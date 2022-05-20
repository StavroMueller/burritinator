defmodule Burritinator.Database.Test.DataCase do
  @moduledoc """
  Use this data case when writing tests that talk to the postgres database.
  """

  use ExUnit.CaseTemplate

  alias Ecto.Adapters.SQL.Sandbox
  alias Burritinator.Database.Repo

  using do
    quote do
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      alias Burritinator.Database.Repo

      def generate_uuid(), do: Ecto.UUID.bingenerate() |> Ecto.UUID.cast!()
    end
  end

  setup tags do
    # room for more tags, probably performance stuff eventually
    :ok = Sandbox.checkout(Repo)
  end
end
