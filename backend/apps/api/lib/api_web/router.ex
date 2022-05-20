defmodule Burritinator.ApiWeb.Router do
  use Burritinator.ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Burritinator.ApiWeb do
    pipe_through :api
  end
end
