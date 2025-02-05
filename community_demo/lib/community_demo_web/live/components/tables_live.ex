defmodule CommunityDemoWeb.Demo.Community.TablesLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Tables")

    {:ok, socket}
  end
end
