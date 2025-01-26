defmodule CommunityDemoWeb.Community.Components.Tabs.Tab009 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Tabs

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )


  attr(:class, :string, default: nil, doc: "")
  attr(:size, :string, default: "small", doc: "")
  attr(:color, :string, default: "base", doc: "")
  attr(:padding, :string, default: "small", doc: "")
  attr(:rounded, :string, default: "large", doc: "")
  attr(:gap, :string, default: "small", doc: "")
  attr(:border, :string, default: "extra_small", doc: "")

  slot :tab, required: true do
    attr :icon, :string, doc: "Icon displayed alongside of an item"
    attr :class, :string, doc: "Custom CSS class for additional styling"
    attr :padding, :string, doc: "Determines padding for items"
    attr :icon_class, :string, doc: "Determines custom class for the icon"
    attr :icon_position, :string, doc: "Determines icon position"
    attr :active, :boolean, doc: "Indicates whether the element is currently active and visible"
    attr :badge, :string, doc: "Indicates whether the element is currently active and visible"
    attr :badge_color, :string, doc: "Indicates whether the element is currently active and visible"
    attr :badge_position, :string, doc: "Indicates whether the element is currently active and visible"
    attr :badge_size, :string, doc: "Indicates whether the element is currently active and visible"
  end

  slot :panel, required: false do
    attr :class, :string, doc: "Custom CSS class for additional styling"
  end

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_tab_009(assigns) do
    ~H"""
    <.tabs id={@id} padding={@padding} variant="nav_pills" rounded={@rounded} gap={@gap} size={@size}
        content_padding="none"
        border={@border}
        color={@color}
        hide_list_border
        full_width_tab
        class={["bg-white shadow-lg dark:bg-[#323238] py-5 px-3 rounded-lg dark:border-[#454549]",@class]}
    >
      <:tab :for={{tab, index} <- Enum.with_index(@tab, 1)} icon={tab[:icon]} class={tab[:class]}>
        {render_slot(tab)}
      </:tab>

      <:panel :for={{panel, index} <- Enum.with_index(@panel, 1)} class={panel[:class]}>
        {render_slot(panel)}
      </:panel>
    </.tabs>
    """
  end
end
