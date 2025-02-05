defmodule CommunityDemoWeb.Demo.Community.DrawerLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Drawer")

    {:ok, socket}
  end
end
