defmodule CommunityDemoWeb.Demo.Community.SidebarLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Sidebar")

    {:ok, socket}
  end
end
