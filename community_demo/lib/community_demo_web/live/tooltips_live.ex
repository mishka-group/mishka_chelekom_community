defmodule CommunityDemoWeb.Demo.Community.TooltipsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Tooltips")

    {:ok, socket}
  end
end
