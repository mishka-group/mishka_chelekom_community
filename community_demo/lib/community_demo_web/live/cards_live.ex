defmodule CommunityDemoWeb.CardsLive do
  use CommunityDemoWeb, :live_view
  
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Cards")
    {:ok, socket}
  end

end
