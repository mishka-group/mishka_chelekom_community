defmodule CommunityDemoWeb.Demo.Community.OverlaysLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Overlays")

    {:ok, socket}
  end
end
