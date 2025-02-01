defmodule CommunityDemoWeb.Demo.Community.AvatarsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Avatars")

    {:ok, socket}
  end
end
