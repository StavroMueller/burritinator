defmodule Burritinator.GraphQl.Resolvers.Burritos do
  @moduledoc """
  All burrito resolvers. Should make a handler for the changeset.
  """

  def get_burritos(_parent, _args, _resolution) do
    Burritinator.Burritos.get_burritos()
  end

  def create_burrito(_parent, args, _resolution) do
    Burritinator.Burritos.create_burrito(args)
  end
end
