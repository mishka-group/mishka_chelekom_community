defmodule CommunityDemoWeb.Demo.Community.NavbarLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Navbar")

    {:ok, socket}
  end
end
