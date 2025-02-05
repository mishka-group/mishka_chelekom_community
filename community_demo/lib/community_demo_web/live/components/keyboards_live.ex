defmodule CommunityDemoWeb.Demo.Community.KeyboardsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Keyboards")

    {:ok, socket}
  end
end
