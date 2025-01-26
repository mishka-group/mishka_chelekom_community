defmodule CommunityDemoWeb.Demo.Community.TabsLive do
  use CommunityDemoWeb, :live_view

  import CommunityDemoWeb.Community.Components.Tabs.{
    Tab001,
    Tab002,
    Tab003,
    Tab004,
    Tab005,
    Tab006,
    Tab007,
    Tab008,
    Tab009,
    Tab010
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Tabs")

    {:ok, socket}
  end
end
