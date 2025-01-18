defmodule CommunityDemoWeb.Community.Components.Cards.Card002 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Card

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "border-t-4 !border-t-[#3758f9] shadow-xl", doc: "")
  attr(:src, :string, default: nil, doc: "Card image source")
  attr(:alt, :string, default: nil, doc: "Card image alt")
  attr(:link, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:sub_title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_002(assigns) do
    ~H"""
    <.card class={@class} rounded="none" padding="medium" id={@id}>
      <.card_content class="grid grid-cols-2">
        <div class="space-y-2">
          <h3 class="text-[#3758f9] text-[14px] font-bold">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
          </h3>
          <h3 class="text-[#111928] dark:text-gray-400 text-[13px] font-bold">
            {@sub_title}
          </h3>
          <p class="text-[#637381] dark:text-gray-300 text-[12px]">
            {@description}
          </p>
        </div>
        <.card_media
          src={@src}
          alt="Community card"
          class="[&>img]:w-full"
        />
      </.card_content>
    </.card>
    """
  end
end
