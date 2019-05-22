defmodule IncidentBridgeWeb.SlackEventsController do
  use IncidentBridgeWeb, :controller

  @spec index(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def index(conn, %{"challenge" => challenge, "type" => "url_verification"}) do
    json(conn, %{challenge: challenge})
  end
end
