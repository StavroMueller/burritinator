defmodule Burritinator.GraphQl.Resolvers.Burritos do
  @moduledoc """
  All burrito resolvers
  """

  def get_burritos(_parent, _args, _resolution) do
    Burritinator.Burritos.get_burritos()
  end
end
