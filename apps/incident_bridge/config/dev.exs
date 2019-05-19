# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_bridge application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :incident_bridge, IncidentBridge.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_bridge_dev",
  hostname: "localhost",
  pool_size: 10

import_config "dev.secret.exs"
