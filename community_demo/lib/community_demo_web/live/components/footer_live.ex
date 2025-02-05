defmodule CommunityDemoWeb.Demo.Community.FooterLive do
  use CommunityDemoWeb, :live_view
  import CommunityDemoWeb.Components.{CustomHeader, CustomCommand}

  import CommunityDemoWeb.Community.Components.Footers.{
    Footer001,
    Footer002,
    Footer003,
    Footer004,
  }


  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Footer")

    {:ok, socket}
  end
end
