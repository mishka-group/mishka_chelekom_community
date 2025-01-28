defmodule CommunityDemoWeb.Demo.Community.ProgressLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Progress")

    {:ok, socket}
  end
end
