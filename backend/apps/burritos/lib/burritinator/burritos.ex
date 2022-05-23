defmodule Burritinator.Burritos do
  @moduledoc """
  Main burritos module
  """

  alias Burritinator.Burritos.Queries.GetBurritos

  def get_burritos() do
    GetBurritos.run()
  end
end
