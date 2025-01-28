defmodule CommunityDemoWeb.Demo.Community.GalleryLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Gallery")

    {:ok, socket}
  end
end
