defmodule CommunityDemoWeb.Community.Components.Alerts.Alert002 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Alert}

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_alert_002(assigns) do
    ~H"""
    <.alert id={@id} variant="default" kind={:warning} class={@class} icon={nil} rounded="large">
      {render_slot(@inner_block)}
    </.alert>
    """
  end
end
