# Since configuration is shared in umbrella projects, this file
# should only configure the :incident_comm_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :incident_comm_web, IncidentCommWeb.Endpoint,
  http: [port: 4002],
  server: false
