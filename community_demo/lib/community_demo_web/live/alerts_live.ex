defmodule CommunityDemoWeb.Demo.Community.AlertsLive do
  use CommunityDemoWeb, :live_view

  import CommunityDemoWeb.Community.Components.Alerts.{
    Alert001,
    Alert002
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Alerts")

    {:ok, socket}
  end
end
