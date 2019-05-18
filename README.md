# IncidentBridge

This is a tool meant to be used for supporting communication and logging of informations during an incident.

## Installation

You will need to provide a slack token.

you can add it by creating these three files

`/apps/incident_bridge/dev.secret.exs`

```elixir
use Mix.Config

# Configure your database
config :incident_bridge, IncidentBridge.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_bridge_dev",
  hostname: "localhost",
  pool_size: 10

config :incident_bridge,
  slack_bot_oauth_token: "your_bot_token",
  slack_oauth_token: "your_oauth_web_token"
```

`/apps/incident_bridge/test.secret.exs`

```elixir
use Mix.Config

# Configure your database
config :incident_bridge, IncidentBridge.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_bridge_dev",
  hostname: "localhost",
  pool_size: 10

config :incident_bridge,
  slack_bot_oauth_token: "your_bot_token",
  slack_oauth_token: "your_oauth_web_token"
```

`/apps/incident_bridge/prod.secret.exs`

```elixir
use Mix.Config

# Configure your database
config :incident_bridge, IncidentBridge.Repo,
  username: "postgres",
  password: "postgres",
  database: "incident_bridge_dev",
  hostname: "localhost",
  pool_size: 10

config :incident_bridge,
  slack_bot_oauth_token: "your_bot_token",
  slack_oauth_token: "your_oauth_web_token"
```

You can then generate the db

```bash
mix ecto.create
mix ecto.migrate
```

and then you can run the app with

```bash
iex -S mix phx.server
```
