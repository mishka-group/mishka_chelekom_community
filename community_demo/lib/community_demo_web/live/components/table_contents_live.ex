defmodule CommunityDemoWeb.Demo.Community.TableContentsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Table Contents")

    {:ok, socket}
  end
end
