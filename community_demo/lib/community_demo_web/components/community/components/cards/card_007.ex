defmodule CommunityDemoWeb.Community.Components.Cards.Card007 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Avatar, Button}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:link, :string, default: nil, doc: "")
  attr(:class, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")
  attr(:avatar, :string, default: nil, doc: "")
  attr(:author, :string, default: nil, doc: "")
  attr(:tag, :string, default: nil, doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_007(assigns) do
    ~H"""
    <.card class={@class} rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <h3 class="text-[18px] font-bold">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[14px]">
         {@description}
        </p>
        <div class="flex gap-5 items-center">
        <.avatar src={@avatar} rounded="full" size="medium" />
        <div>
          <h6 class="text-[#111928] dark:text-white text-[14px] font-bold mb-1">
            {@author}
          </h6>
          <p class="text-[#637381] dark:text-gray-300 text-[13px]">{@tag}</p>
        </div>
      </div>
      </.card_content>
    </.card>
    """
  end
end
