# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_comm_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :incident_comm_web,
  ecto_repos: [IncidentComm.Repo],
  generators: [context_app: :incident_comm]

# Configures the endpoint
config :incident_comm_web, IncidentCommWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fjNk3WEDRmVQmpPIfzPZGsmqfMLNmwTN7Yhwgq0NovolVcgqQD78EnzNVH2KSPkU",
  render_errors: [view: IncidentCommWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IncidentCommWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
