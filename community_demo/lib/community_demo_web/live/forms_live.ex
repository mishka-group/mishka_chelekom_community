defmodule CommunityDemoWeb.Demo.Community.FormsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Forms")

    {:ok, socket}
  end
end
