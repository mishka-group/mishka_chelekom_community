defmodule CommunityDemoWeb.Demo.Community.MenuLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Menu")

    {:ok, socket}
  end
end
