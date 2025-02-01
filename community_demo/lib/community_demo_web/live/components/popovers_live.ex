defmodule CommunityDemoWeb.Demo.Community.PopoversLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Popovers")

    {:ok, socket}
  end
end
