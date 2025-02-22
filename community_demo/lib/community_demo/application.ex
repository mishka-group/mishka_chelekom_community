defmodule CommunityDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      CommunityDemoWeb.Telemetry,
      CommunityDemo.Repo,
      {DNSCluster, query: Application.get_env(:community_demo, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: CommunityDemo.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: CommunityDemo.Finch},
      # Start a worker by calling: CommunityDemo.Worker.start_link(arg)
      # {CommunityDemo.Worker, arg},
      # Start to serve requests, typically the last entry
      CommunityDemoWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CommunityDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CommunityDemoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
