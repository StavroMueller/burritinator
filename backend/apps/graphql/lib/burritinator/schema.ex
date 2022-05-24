defmodule Burritinator.GraphQl.Schema do
  @moduledoc """
  Schema for all things burrito
  """

  use Absinthe.Schema

  alias Burritinator.GraphQl.Resolvers.Burritos

  import_types(Burritinator.GraphQl.Schema.Burrito)

  query do
    @desc "Get a list of burritos"
    field :burritos, list_of(:burrito) do
      resolve(&Burritos.get_burritos/3)
    end
  end

  mutation do
    @desc "Create a burrito"
    field :create_burrito, type: :burrito do
      arg(:name, non_null(:string))
      resolve(&Burritos.get_burritos/3)
    end
  end
end
