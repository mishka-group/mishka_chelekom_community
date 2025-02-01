defmodule CommunityDemoWeb.Demo.Community.BannerLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Banner")

    {:ok, socket}
  end
end
