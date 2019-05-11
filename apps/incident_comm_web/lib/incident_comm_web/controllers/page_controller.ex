defmodule IncidentCommWeb.PageController do
  use IncidentCommWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
