defmodule CommunityDemoWeb.Demo.Community.SkeletonLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Skeleton")

    {:ok, socket}
  end
end
