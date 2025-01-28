defmodule CommunityDemoWeb.Demo.Community.PaginationsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Paginations")

    {:ok, socket}
  end
end
