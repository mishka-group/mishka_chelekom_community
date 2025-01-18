defmodule CommunityDemoWeb.Community.Components.Cards.Card014 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Card

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "shadow-md relative", doc: "")
  attr(:src, :string, default: "", doc: "")
  attr(:alt, :string, default: "", doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")
  attr(:avatar, :string, default: nil, doc: "")
  attr(:link, :string, default: nil, doc: "")

  slot(:price, required: false)
  slot(:badge, required: false)

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_014(assigns) do
    ~H"""
    <.card rounded="large" class={@class} id={@id}>
      <.card_media
        src={@src}
        alt={@alt}
      />
      <.card_content padding="large">
        <h3 class="text-[#111928] dark:text-white text-2xl font-bold">
        <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#808d99] text-xl font-semibold mt-5">
         {@description}
        </p>
        <div class="flex mt-5 gap-x-3 pb-3">
          <div :for={price <- @price}>
          {render_slot(price)}
          </div>
        </div>
      </.card_content>
      <div class="absolute top-0 start-0 mt-3 ms-3">
        <div :for={badge <- @badge}>
        {render_slot(badge)}
        </div>
      </div>
    </.card>
    """
  end
end
