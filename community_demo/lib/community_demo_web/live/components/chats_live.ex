defmodule CommunityDemoWeb.Demo.Community.ChatsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Chats")

    {:ok, socket}
  end
end
