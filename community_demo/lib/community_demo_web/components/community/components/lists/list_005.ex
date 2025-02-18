defmodule CommunityDemoWeb.Community.Components.Lists.List005 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.List

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string,
    default: nil,
    doc: "custom classes"
  )

  attr(:icon, :string,
    default: "hero-check-circle",
    doc: "name of hero icon"
  )

  attr(:icon_class, :string,
    default: nil,
    doc: "add class to icons"
  )

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot :item, required: true do
    attr(:class, :string, doc: "Custom CSS class for additional styling")
  end

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_list_005(assigns) do
    ~H"""
    <.list space="extra_small" id={@id} class={@class} rounded="none">
      <.li
        :for={item <- @item}
        padding="medium"
        class={item[:class]}
        icon={@icon}
        icon_class={@icon_class}
      >
        {render_slot(item)}
      </.li>
    </.list>
    """
  end
end
