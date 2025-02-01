defmodule CommunityDemoWeb.Demo.Community.BadgesLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Badges")

    {:ok, socket}
  end
end
