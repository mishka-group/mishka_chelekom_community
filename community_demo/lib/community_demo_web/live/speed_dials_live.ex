defmodule CommunityDemoWeb.Demo.Community.SpeedDialsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Speed Dials")

    {:ok, socket}
  end
end
