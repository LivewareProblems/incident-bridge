defmodule IncidentBridgeWeb.SlackEventsController do
  use IncidentBridgeWeb, :controller

  @spec index(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def index(conn, %{"challenge" => challenge, "type" => "url_verification"}) do
    json(conn, %{challenge: challenge})
  end

  # def index(conn, %{
  #       "event" => %{
  #         "type" => "app_mention",
  #         "user" => _user,
  #         "text" => message,
  #         "channel" => channel
  #       },
  #       "type" => "event_callback"
  #     }) do
  #   send_resp(conn, 200, "")
  # end
end
