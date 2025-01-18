defmodule CommunityDemoWeb.Community.Components.Cards.Card014 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Button}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "grid grid-cols-7 gap-2 shadow-sm", doc: "")
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
    <.card class={@class} rounded="large" id={@id}>
      <.card_media
      class="col-span-3 [&>img]:h-full [&>img]:w-full [&>img]:object-cover"
        src={@src}
        alt={@alt}
      />
      <.card_content class="col-span-4 flex flex-col items-start justify-between" padding="medium">
        <h3 class="mb-3 text-[18px] font-bold text-[#111928] dark:text-white">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="mb-5 text-[16px] text-[#637381] dark:text-gray-300">
          {@description}
        </p>
        <.button_link navigate={@link} rounded="full" variant="outline" color="misc" size="leading-5 px-7 py-2 text-[15px]">View Details</.button_link>
      </.card_content>
    </.card>
    """
  end
end
