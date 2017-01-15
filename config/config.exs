# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uber_assistant,
  ecto_repos: [UberAssistant.Repo]

# Configures the endpoint
config :uber_assistant, UberAssistant.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KFQeqSSjFSO4o6CcPFGu6FKdwVS9Xfsw6uHixec1y4WYkCvJvAgxurtIDyiGoR/d",
  render_errors: [view: UberAssistant.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UberAssistant.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
