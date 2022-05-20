# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :database, Burritinator.Database.Repo,
  database: "postgres",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 55432

config :database, ecto_repos: [Burritinator.Database.Repo]

config :api,
  namespace: Burritinator.Api

# Configures the endpoint
config :api, Burritinator.ApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Burritinator.ApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Burritinator.Api.PubSub,
  live_view: [signing_salt: "ZYNy0b5f"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
