# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_bridge application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :incident_bridge,
  ecto_repos: [IncidentBridge.Repo]

import_config "#{Mix.env()}.exs"
