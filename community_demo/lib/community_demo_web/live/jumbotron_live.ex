defmodule CommunityDemoWeb.Demo.Community.JumbotronLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Jumbotron")

    {:ok, socket}
  end
end
