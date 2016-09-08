# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_chat,
  ecto_repos: [PhoenixChat.Repo]

# Configures the endpoint
config :phoenix_chat, PhoenixChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4+cxhQ2pB6mBmvCn6DBi7YNlFR3T0YfERhKoTzMhw9itPDZ+PuEeu8sTjQBTzQpb",
  render_errors: [view: PhoenixChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure UeberAuth
config :ueberauth, Ueberauth,
  providers: [
    identity: {
      Ueberauth.Strategy.Identity,
      [callback_methods: ["POST"]]
    }
  ]

# Configure The Guardian to Generate Tokens
config :guardian, Guardian,
  issuer: "PhoenixChat",
  ttl: {30, :days},
  secret_key: "dvSWL27DBPRUS5U0SIWmZmBA0my0Yg81V8+jqsHULxLoBFYVjcTc4LbJg8+QmADd",
  serializer: PhoenixChat.GuardianSerializer,
  permissions: %{default: [:read, :write]}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
