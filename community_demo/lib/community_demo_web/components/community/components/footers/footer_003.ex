defmodule CommunityDemoWeb.Community.Components.Footers.Footer002 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Footer

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:brand, :string, default: nil, doc: "Heading of alert")
  attr(:description, :string, default: nil, doc: "Description of alert")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_footer_002(assigns) do
    ~H"""
    <.footer padding="large" max_width="extra_large" border="none" id={@id}>
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-5">
        {render_slot(@inner_block)}
      </div>
    </.footer>
    """
  end
end
