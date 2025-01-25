defmodule CommunityDemoWeb.Demo.Community.TabsLive do
  use CommunityDemoWeb, :live_view

  import CommunityDemoWeb.Community.Components.Tabs.{
    Tab001,
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Tabs")

    {:ok, socket}
  end
end
