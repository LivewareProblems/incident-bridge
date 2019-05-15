defmodule IncidentBridge.Repo do
  use Ecto.Repo,
    otp_app: :incident_bridge,
    adapter: Ecto.Adapters.Postgres
end
