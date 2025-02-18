defmodule CommunityDemoWeb.Community.Components.Cards.Card003 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Card

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "shadow-xl", doc: "")
  attr(:src, :string, default: nil, doc: "Card image source")
  attr(:alt, :string, default: nil, doc: "Card image alt")
  attr(:link, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")

  slot :tags, required: false do
    attr(:link, :string, doc: "tags links prop")
  end

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_003(assigns) do
    ~H"""
    <.card class={@class} rounded="large" border="none" id={@id}>
      <.card_media src={@src} alt={@alt} />
      <.card_content padding="medium">
        <h3 class="text-[#111928] dark:text-white text-[18px] font-bold mb-3">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 mb-5 text-[12px]">
          {@description}
        </p>
        <div class="flex items-center bg-[#f3f4f6] dark:bg-[#26262b] p-3 gap-3 rounded">
          <span :for={tag <- @tags} class="text-[#637381] dark:text-gray-300 text-xl">
            {render_slot(tag)}
          </span>
        </div>
      </.card_content>
    </.card>
    """
  end
end
