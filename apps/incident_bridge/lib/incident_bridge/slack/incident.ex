defmodule IncidentBridge.Slack.Incident do
  def create_channel_incident(incident_name) do
    channel_name =
      NaiveDateTime.utc_now()
      |> NaiveDateTime.to_iso8601(:basic)

    Slack.Web.Channels.create(channel_name, %{
      token: IncidentBridge.Config.get!(["slack_oauth_token"], as: :string)
    })

    IncidentBridge.Slack.Bot.announce_creating_incident(incident_name, channel_name)
  end
end
