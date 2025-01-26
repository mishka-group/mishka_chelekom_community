defmodule CommunityDemoWeb.Demo.Community.AlertsLive do
  use CommunityDemoWeb, :live_view

  import CommunityDemoWeb.Community.Components.Alerts.{
    Alert001,
    Alert002,
    Alert003,
    Alert004,
    Alert005,
    Alert006,
    Alert007,
    Alert008,
    Alert009,
    Alert010,
    Alert011,
    Alert012
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Alerts")

    {:ok, socket}
  end
end
