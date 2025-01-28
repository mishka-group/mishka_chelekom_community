defmodule CommunityDemoWeb.Demo.Community.BlockquoteLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Blockquote")

    {:ok, socket}
  end
end
