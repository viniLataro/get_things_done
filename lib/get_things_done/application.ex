defmodule GetThingsDone.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      GetThingsDoneWeb.Telemetry,
      # Start the Ecto repository
      GetThingsDone.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: GetThingsDone.PubSub},
      # Start Finch
      {Finch, name: GetThingsDone.Finch},
      # Start the Endpoint (http/https)
      GetThingsDoneWeb.Endpoint
      # Start a worker by calling: GetThingsDone.Worker.start_link(arg)
      # {GetThingsDone.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GetThingsDone.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    GetThingsDoneWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
