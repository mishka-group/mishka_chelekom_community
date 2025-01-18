defmodule CommunityDemoWeb.Community.Components.Cards.Card004 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Avatar, Button}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:src, :string, default: nil, doc: "")
  attr(:alt, :string, default: nil, doc: "")
  attr(:link, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:tag, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")
  attr(:avatar, :string, default: "", doc: "Source of avatar image")
  attr(:author, :string, default: "", doc: "Author name")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_004(assigns) do
    ~H"""
    <.card class={@class} rounded="large" class="grid grid-cols-7" id={@id}>
      <.card_media
        src={@src}
        alt={@alt}
        class="col-span-3 relative [&>img]:size-full [&>img]:absolute [&>img]:top-0 [&>img]:start-0 [&>img]:object-cover"
      />
      <.card_content padding="large" class="col-span-4 space-y-5">
        <div class="flex gap-5 items-center">
          <.avatar src={@avatar} rounded="full" size="medium" />
          <div>
            <h6 class="text-[#111928] dark:text-white text-[14px] font-bold mb-1">
             {@author}
            </h6>
            <p class="text-[#637381] dark:text-gray-300 text-[13px]">{@tag}</p>
          </div>
        </div>
        <h3 class="text-[#111928] dark:text-white text-[18px] font-bold mb-3">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[13px] font-semibold">
         {@description}
        </p>
      </.card_content>
    </.card>
    """
  end
end
