defmodule CommunityDemoWeb.Demo.Community.ButtonsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Buttons")

    {:ok, socket}
  end
end
