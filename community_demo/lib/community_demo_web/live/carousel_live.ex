defmodule CommunityDemoWeb.Demo.Community.CarouselLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Carousel")

    {:ok, socket}
  end
end
