defmodule CommunityDemoWeb.Demo.Community.ListsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Lists")

    {:ok, socket}
  end
end
