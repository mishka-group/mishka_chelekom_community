defmodule CommunityDemoWeb.Demo.Community.NavbarLive do
  use CommunityDemoWeb, :live_view
  import CommunityDemoWeb.CoreComponents, except: [button: 1]
  import CommunityDemoWeb.Components.{CustomHeader, CustomCommand, Button}

  import CommunityDemoWeb.Community.Components.Navbars.{
    Navbar001,
    Navbar002,
    Navbar003,
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Navbar")

    {:ok, socket}
  end
end
