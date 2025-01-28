defmodule CommunityDemoWeb.Demo.Community.StepperLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Stepper")

    {:ok, socket}
  end
end
