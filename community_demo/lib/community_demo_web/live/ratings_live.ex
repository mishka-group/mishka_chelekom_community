defmodule CommunityDemoWeb.Demo.Community.RatingsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Ratings")

    {:ok, socket}
  end
end
