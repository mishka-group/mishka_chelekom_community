defmodule CommunityDemoWeb.Community.Components.Navbars.Navbar002 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Navbar

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:logo, :string, default: nil, doc: "navbar image logo source")
  attr(:logo_class, :string, default: nil, doc: "navbar image logo classes")
  attr(:brand, :string, default: nil, doc: "navbar brand name")
  attr(:brand_class, :string, default: nil, doc: "navbar brand classes")
  attr(:max_width, :string, default: "extra_large", doc: "navbar brand classes")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot :item, required: false do
    attr(:class, :string, doc: "Custom CSS class for additional styling")
  end

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_navbar_002(assigns) do
    ~H"""
    <.navbar id={@id} class={@class} max_width={@max_width} border="none">
      <div class="flex items-center gap-3 justify-between w-full">
        <ul :if={@item} class="hidden md:flex gap-8">
          <li
            :for={item <- @item}
            class={[item[:class] || "hover:text-gray-700 dark:hover:text-gray-200 cursor-pointer"]}
          >
            {render_slot(item)}
          </li>
        </ul>
        <div class="flex items-center">
          <img :if={@logo} src={@logo} width="40" class={["me-4", @logo_class]} />
          <h2 :if={@brand} class={["font-bold text-lg", @brand_class]}>{@brand}</h2>
        </div>
        {render_slot(@inner_block)}
      </div>
    </.navbar>
    """
  end
end
