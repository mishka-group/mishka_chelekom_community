defmodule CommunityDemoWeb.Community.Components.Tabs.Tab005 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Tabs

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:size, :string, default: "small", doc: "")
  attr(:padding, :string, default: "large", doc: "")
  attr(:rounded, :string, default: "medium", doc: "")

  slot :tab, required: true do
    attr :icon, :string, doc: "Icon displayed alongside of an item"
    attr :class, :string, doc: "Custom CSS class for additional styling"
    attr :padding, :string, doc: "Determines padding for items"
    attr :icon_class, :string, doc: "Determines custom class for the icon"
    attr :icon_position, :string, doc: "Determines icon position"
    attr :active, :boolean, doc: "Indicates whether the element is currently active and visible"
    attr :badge, :string, doc: "Add badge to tab"
    attr :badge_color, :string, doc: "badge color"
    attr :badge_position, :string, doc: "badge position"
    attr :badge_size, :string, doc: "badge size"
    attr :badge_variant, :string, doc: "badge color varinat"
  end

  slot :panel, required: false do
    attr :class, :string, doc: "Custom CSS class for additional styling"
  end

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_tab_005(assigns) do
    ~H"""
    <.tabs
      id={@id}
      padding={@padding}
      variant={color_class()}
      rounded={@rounded}
      size={@size}
      class={@class}
    >
      <:tab :for={{tab, _} <- Enum.with_index(@tab, 1)} icon={tab[:icon]} class={tab[:class]}>
        {render_slot(tab)}
      </:tab>

      <:panel :for={{panel, _} <- Enum.with_index(@panel, 1)} class={panel[:class]}>
        {render_slot(panel)}
      </:panel>
    </.tabs>
    """
  end

  defp color_class() do
    "[&_.tab-trigger-list]:text-[#637381] [&_.tab-trigger-list]:bg-white [&_.tab-trigger.active-tab]:bg-[#3758F9]/10 [&_.tab-trigger.active-tab]:text-[#3758F9] [&_.tab-trigger.active-tab]:border-[#3758F9] hover:[&_.tab-trigger]:text-[#3758F9] hover:[&_.tab-trigger]:border-[#3758F9] hover:[&_.tab-trigger]:bg-[#3758F9]/10 [&_.tab-trigger]:border-b-2 [&_.tab-trigger]:border-transparent"
  end
end
