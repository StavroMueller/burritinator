defmodule Burritinator.GraphQl.Schema.Burrito do
  @moduledoc """
  Schema for a Burrito
  """

  use Absinthe.Schema.Notation

  object :burrito do
    field(:id, :string)
    field(:name, :string)
  end
end
