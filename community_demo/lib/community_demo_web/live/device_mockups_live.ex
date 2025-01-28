defmodule CommunityDemoWeb.Demo.Community.DeviceMockupsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Device Mockups")

    {:ok, socket}
  end
end
