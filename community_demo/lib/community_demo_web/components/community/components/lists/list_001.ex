defmodule CommunityDemoWeb.Community.Components.Lists.List001 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{List}

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string,
    default: nil,
    doc: "custom classes"
  )

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot :item, required: true do
    attr(:class, :string, doc: "Custom CSS class for additional styling")
  end

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_list_001(assigns) do
    ~H"""
    <.list space="extra_small" id={@id} class={@class} rounded="none">
      <.li :for={{item, index} <- Enum.with_index(@item, 1)} padding="py-1 px-2" class={item[:class]}>
        <div class="flex items-center gap-2">
          <span class="bg-[#3758F9] text-white rounded-full size-5 flex leading-5 text-[13px] items-center justify-center">
            {index}
          </span>
          {render_slot(item)}
        </div>
      </.li>
    </.list>
    """
  end
end
