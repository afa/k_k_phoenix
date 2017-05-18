# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :kk_web, KkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HLqU9SISgCT4XZmu1nNrkmImgA0sxTnDarcmjWmGIZZ2MIyOzMovUSZMemEYhprp",
  render_errors: [view: KkWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: KkWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "KkWeb",
  ttl: { 3, :days },
  verify_issuer: true,
  secret_key: "zsrfgvzsrgfvsd rtfgdrfdgvdfzfasrdfc",
  serializer: KkWeb.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine
