defmodule CommunityDemoWeb.Demo.Community.ListsLive do
  use CommunityDemoWeb, :live_view
  import CommunityDemoWeb.Components.{CustomHeader, CustomCommand}

  import CommunityDemoWeb.Community.Components.Lists.{
    List001,
    List002,
    List003,
    List004,
    List005
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Lists")

    {:ok, socket}
  end
end
