defmodule Burritinator.Api.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Burritinator.ApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Burritinator.Api.PubSub},
      # Start the Endpoint (http/https)
      Burritinator.ApiWeb.Endpoint
      # Start a worker by calling: Burritinator.Api.Worker.start_link(arg)
      # {Burritinator.Api.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Burritinator.Api.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Burritinator.ApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
