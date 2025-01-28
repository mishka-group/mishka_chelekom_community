defmodule CommunityDemoWeb.Demo.Community.AccordionLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Accordion")

    {:ok, socket}
  end
end
