defmodule CommunityDemoWeb.Demo.Community.DropdownLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Dropdown")

    {:ok, socket}
  end
end
