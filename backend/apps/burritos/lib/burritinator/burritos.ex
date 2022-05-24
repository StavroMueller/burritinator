defmodule Burritinator.Burritos do
  @moduledoc """
  Main burritos module
  """

  alias Burritinator.Burritos.Queries.GetBurritos
  alias Burritinator.Burritos.Commands.CreateBurrito

  def get_burritos() do
    GetBurritos.run()
  end

  def create_burrito(params) do
    CreateBurrito.execute(params)
  end
end
