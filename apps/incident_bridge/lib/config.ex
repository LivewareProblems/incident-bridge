defmodule IncidentBridge.Config do
  use Vapor

  alias Vapor.Config
  alias Vapor.Provider.{File, Env}

  def start_link(_args \\ []) do
    slack_bot_config_path =
      Application.app_dir(
        :incident_bridge,
        Application.get_env(:incident_bridge, :toml_file, ["priv", "slack_bot_token.toml"])
      )

    config =
      Config.default()
      |> Config.merge(File.with_name(slack_bot_config_path))
      |> Config.merge(
        Env.with_bindings(
          slack_bot_token: "SLACK_BOT_TOKEN",
          slack_oauth_token: "SLACK_OAUTH_TOKEN"
        )
      )

    Vapor.start_link(__MODULE__, config, name: __MODULE__)
  end
end
