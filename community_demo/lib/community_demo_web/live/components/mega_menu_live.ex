defmodule CommunityDemoWeb.Demo.Community.MegaMenuLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Mega Menu")

    {:ok, socket}
  end
end
