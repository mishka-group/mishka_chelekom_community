defmodule CommunityDemoWeb.Demo.Community.IndicatorsLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Indicators")

    {:ok, socket}
  end
end
