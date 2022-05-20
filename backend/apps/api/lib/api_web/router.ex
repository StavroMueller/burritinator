defmodule Burritinator.ApiWeb.Router do
  use Burritinator.ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: Burritinator.GraphQl.Schema
    forward "/graphql", Absinthe.Plug, schema: Burritinator.GraphQl.Schema
  end


end
