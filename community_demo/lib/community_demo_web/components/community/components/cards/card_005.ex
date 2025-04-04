defmodule CommunityDemoWeb.Community.Components.Cards.Card005 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Card

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "shadow-md", doc: "")
  attr(:link, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_005(assigns) do
    ~H"""
    <.card class={@class} rounded="large" id={@id}>
      <.card_content padding="large" space="medium">
        <h3 class="text-[18px] font-bold mb-3">
          {@title}
        </h3>
        <p class="text-[#637381] dark:text-gray-300 mb-5 text-[14px]">
          {@description}
        </p>
        <.link
          navigate={@link}
          class="inline-flex items-center leading-5 text-[#395af9] hover:text-indigo-500 transition-all duration-150 gap-1"
        >
          <span>Learn more</span>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="size-4"
          >
            <path d="M18 8L22 12L18 16" /><path d="M2 12H22" />
          </svg>
        </.link>
      </.card_content>
    </.card>
    """
  end
end
