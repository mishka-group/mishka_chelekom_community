defmodule CommunityDemoWeb.Community.Components.Navbars.Navbar004 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Navbar, Alert}

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:variant, :string, default: "default", doc: "")
  attr(:color, :string, default: "natural", doc: "")
  attr(:logo, :string, default: nil, doc: "navbar image logo source")
  attr(:logo_class, :string, default: nil, doc: "navbar image logo classes")
  attr(:brand, :string, default: nil, doc: "navbar brand name")
  attr(:brand_class, :string, default: nil, doc: "navbar brand classes")
  attr(:max_width, :string, default: "extra_large", doc: "navbar brand classes")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot :alert, required: false do
    attr(:id, :string, doc: "Alert unique id")
    attr(:class, :string, doc: "Custom CSS class for additional styling")
    attr(:kind, :string, doc: "alert color")
    attr(:variant, :string, doc: "alert variant")
  end

  slot :item, required: false do
    attr(:class, :string, doc: "Custom CSS class for additional styling")
  end

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_navbar_004(assigns) do
    ~H"""
    <div class={@class} id={@id}>
    <.flash :for={alert <- @alert} rounded="none" id={"#{@id}-alert"} variant={alert[:variant] || "gradient"} icon={nil} kind={alert[:kind] || :success} padding="py-1 px-2" class={alert[:class]}>
      {render_slot(alert)}
    </.flash>
    <.navbar variant={@variant} color={@color} max_width={@max_width} border="none" id={"#{@id}-navbar"}>
      <div class="flex items-center gap-3 justify-between w-full">
        <div class="flex items-center">
          <img :if={@logo} src={@logo} class={["size-8 me-4", @logo_class]} />
          <h2 :if={@brand} class={["font-bold text-lg", @brand_class]}>{@brand}</h2>
        </div>
        <ul :if={@item} class="hidden md:flex gap-8">
          <li :for={item <- @item} class={[item[:class] || "hover:text-blue-700 dark:hover:text-blue-200 cursor-pointer"]}>
            {render_slot(item)}
          </li>
        </ul>
        {render_slot(@inner_block)}
      </div>
    </.navbar>
    </div>
    """
  end
end
