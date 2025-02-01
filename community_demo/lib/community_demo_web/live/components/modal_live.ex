defmodule CommunityDemoWeb.Demo.Community.ModalLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Modal")

    {:ok, socket}
  end
end
