defmodule Burritinator.Database.Factory do
  use ExMachina.Ecto, repo: Burritinator.Database.Repo

  def burrito_factory do
    %Burritinator.Database.Schema.Burrito{}
  end

  def ingredient_factory do
    %Burritinator.Database.Schema.Ingredient{}
  end

  def burrito_ingredient_factory do
    %Burritinator.Database.Schema.BurritoIngredient{}
  end
end
