defmodule CommunityDemoWeb.CardsLive do
  use CommunityDemoWeb, :live_view

  import CommunityDemoWeb.Community.Components.Cards.{
    Card001,
    Card002,
    Card003,
    Card004,
    Card005,
    Card006,
    Card007,
    Card008,
    Card009,
    Card010,
    Card011,
    Card012,
    Card013,
    Card014,
    Card015
  }

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Cards")

    {:ok, socket}
  end
end
