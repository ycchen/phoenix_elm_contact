# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_elm_contact,
  ecto_repos: [PhoenixElmContact.Repo]

# Configures the endpoint
config :phoenix_elm_contact, PhoenixElmContact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FP3u3PtPPAD7lv0dR+IDcYiEIwu+ys47SIt/hBbmaZ1lN09YaVh5OB/lc7ajkfeh",
  render_errors: [view: PhoenixElmContact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixElmContact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
