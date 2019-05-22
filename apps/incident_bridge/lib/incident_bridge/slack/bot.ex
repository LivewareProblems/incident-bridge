defmodule IncidentBridge.Slack.Bot do
  use Slack

  def announce_creating_incident(incident_name, channel_name) do
    send(__MODULE__, {:incident_created, channel_name, incident_name})
  end

  def child_spec(init_arg) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [init_arg]}
    }
  end

  @spec start_link(list()) :: {:error, any()} | {:ok, any()}
  def start_link(_init_arg) do
    Slack.Bot.start_link(
      __MODULE__,
      %{},
      IncidentBridge.Config.get!(["slack_bot_token"], as: :string),
      %{name: __MODULE__}
    )
  end

  def handle_info({:message, text}, slack, state) do
    send_message(text, "#bot-integration", slack)

    {:ok, state}
  end

  def handle_info({:incident_created, channel_name, incident_name}, slack, state) do
    message = """
    A new incident was raised titled #{incident_name}

    Head over to ##{channel_name} to participate in it!
    """

    send_message(message, "#bot-integration", slack)

    {:ok, state}
  end

  # default handler for message we do not deal with
  def handle_event(_message, _slack, state), do: {:ok, state}

  def handle_connect(slack, state) do
    send_message("the bot is up", "#bot-integration", slack)
    {:ok, state}
  end
end
