defmodule CommunityDemoWeb.Demo.Community.VideoLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Video")

    {:ok, socket}
  end
end
