defmodule CommunityDemoWeb.Demo.Community.TypographyLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Typography")

    {:ok, socket}
  end
end
