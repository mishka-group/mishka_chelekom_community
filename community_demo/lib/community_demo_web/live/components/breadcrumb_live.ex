defmodule CommunityDemoWeb.Demo.Community.BreadcrumbLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Community - Breadcrumb")

    {:ok, socket}
  end
end
