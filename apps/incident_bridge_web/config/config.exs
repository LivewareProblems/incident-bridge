# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_bridge_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :incident_bridge_web,
  ecto_repos: [IncidentBridge.Repo],
  generators: [context_app: :incident_bridge]

# Configures the endpoint
config :incident_bridge_web, IncidentBridgeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fjNk3WEDRmVQmpPIfzPZGsmqfMLNmwTN7Yhwgq0NovolVcgqQD78EnzNVH2KSPkU",
  render_errors: [view: IncidentBridgeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IncidentBridgeWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
