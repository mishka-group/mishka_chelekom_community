defmodule CommunityDemoWeb.Demo.Community.SpinnerLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Spinner")

    {:ok, socket}
  end
end
