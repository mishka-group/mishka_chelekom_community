defmodule CommunityDemoWeb.Demo.Community.ImagesLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Images")

    {:ok, socket}
  end
end
