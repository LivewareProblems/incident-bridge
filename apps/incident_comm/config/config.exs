# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_comm application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :incident_comm,
  ecto_repos: [IncidentComm.Repo]

import_config "#{Mix.env()}.exs"
