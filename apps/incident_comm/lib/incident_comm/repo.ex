defmodule IncidentComm.Repo do
  use Ecto.Repo,
    otp_app: :incident_comm,
    adapter: Ecto.Adapters.Postgres
end
