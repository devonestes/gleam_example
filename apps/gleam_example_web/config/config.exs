# Since configuration is shared in umbrella projects, this file
# should only configure the :gleam_example_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :gleam_example_web,
  generators: [context_app: :gleam_example]

# Configures the endpoint
config :gleam_example_web, GleamExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JbEfHTicjxAaxM9O7jWQ+Yj8htrOAJj9EWKvE+sohx1kGldCEhB5ap3UPHOMZmZ3",
  render_errors: [view: GleamExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GleamExampleWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
