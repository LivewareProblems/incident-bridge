defmodule IncidentBridgeWeb.SlackCommandController do
  use IncidentBridgeWeb, :controller

  @spec index(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def index(conn, %{"ssl_check" => 1, "token" => _token}) do
    send_resp(conn, 200, "")
  end

  def index(conn, %{
        "command" => "/incident",
        "text" => incident_name,
        "response_url" => _response_url
      }) do
    IncidentBridge.Slack.Incident.create_channel_incident(incident_name)

    text(
      conn,
      "thanks for generating an incident. It is waiting for you in the #bot-integration channel"
    )
  end
end
