# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :edeliver_test,
  ecto_repos: [EdeliverTest.Repo]

# Configures the endpoint
config :edeliver_test, EdeliverTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Kq3InCODa6jJHpnZSQHNmKRQdIkQ4z8zfU+HjDAzMonZ9Ga09hH2wm7mfR7AGJWH",
  render_errors: [view: EdeliverTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EdeliverTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
