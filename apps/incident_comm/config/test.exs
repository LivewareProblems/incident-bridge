# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_comm application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :incident_comm, IncidentComm.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_comm_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
