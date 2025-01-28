defmodule CommunityDemoWeb.Demo.Community.FooterLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Footer")

    {:ok, socket}
  end
end
