# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_bridge application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :incident_bridge, IncidentBridge.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_comm_prod",
  pool_size: 2,
  ssl: true,
  load_from_system_env: true
