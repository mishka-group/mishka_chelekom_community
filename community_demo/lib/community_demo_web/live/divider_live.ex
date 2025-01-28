defmodule CommunityDemoWeb.Demo.Community.DividerLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Divider")

    {:ok, socket}
  end
end
