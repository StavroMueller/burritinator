defmodule Burritinator.Database.Factory do
  use ExMachina.Ecto, repo: Burritinator.Database.Repo

  def burrito_factory do
    %Burritinator.Database.Schema.Burrito{}
  end
end
