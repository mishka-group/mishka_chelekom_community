defmodule CommunityDemoWeb.Community.Components.Tabs.Tab010 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Tabs

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:padding, :string, default: "large", doc: "")
  attr(:rounded, :string, default: "large", doc: "")
  attr(:gap, :string, default: "none", doc: "")

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

  def community_tab_010(assigns) do
    ~H"""
    <.tabs id={@id} padding={@padding} class={@class} variant={color_class()} rounded={@rounded} gap={@gap}>
      <:tab :for={{tab, index} <- Enum.with_index(@tab, 1)} icon={tab[:icon]} class={tab[:class]}>
        {render_slot(tab)}
      </:tab>

      <:panel :for={{panel, index} <- Enum.with_index(@panel, 1)} class={panel[:class]}>
        {render_slot(panel)}
      </:panel>
    </.tabs>
    """
  end

  defp color_class() do
      "[&_.tab-trigger]:rounded-t-lg border-[#e4e4e7] dark:border-[#27272A] [&:not(.active-tab)_.tab-trigger]:border-[#e4e4e7] dark:[&:not(.active-tab)_.tab-trigger]:border-[#27272a] [&_.tab-trigger.active-tab]:bg-[#e4e4e7] [&_.tab-trigger.active-tab]:text-[#09090b] [&_.tab-trigger.active-tab]:border-[#e4e4e7] hover:[&_.tab-trigger]:text-[#09090b] hover:[&_.tab-trigger]:border-[#e4e4e7] [&_.tab-trigger]:border-[#e4e4e7] dark:[&_.tab-trigger]:border-[#27272a] dark:[&_.tab-trigger.active-tab]:bg-[#27272a] dark:[&_.tab-trigger.active-tab]:text-[#FAFAFA] dark:[&_.tab-trigger.active-tab]:border-[#27272a]  dark:hover:[&_.tab-trigger]:text-[#FAFAFA] dark:hover:[&_.tab-trigger]:border-[#27272a] hover:[&_.tab-trigger]:bg-[#e4e4e7] dark:hover:[&_.tab-trigger]:bg-[#27272a] dark:[&_.tab-trigger-list]:border-[#27272A] [&_.tab-trigger-list]:border-[#e4e4e7]"
  end
end
