defmodule IncidentBridge.Repo do
  use Ecto.Repo,
    otp_app: :incident_bridge,
    adapter: Ecto.Adapters.Postgres

  @spec init(:supervisor | :runtime, config :: Keyword.t()) ::
          {:ok, Keyword.t()} | :ignore
  def init(_, config) do
    if config[:load_from_system_env] do
      url =
        System.get_env("DATABASE_URL") ||
          raise "expected the DATABASE_URL environment variable to be set"

      {:ok, Keyword.put(config, :url, url)}
    else
      {:ok, config}
    end
  end
end
