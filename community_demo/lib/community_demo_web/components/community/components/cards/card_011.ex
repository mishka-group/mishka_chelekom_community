defmodule CommunityDemoWeb.Community.Components.Cards.Card011 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Avatar}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "shadow-md", doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")
  attr(:avatar, :string, default: nil, doc: "")
  attr(:link, :string, default: nil, doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_011(assigns) do
    ~H"""
    <.card class={@class} rounded="large" padding="large" id={@id}>
      <.card_content class="flex gap-5 items-start">
        <.avatar class="shrink-0" src={@avatar} rounded="full" size="medium" />
        <div class="space-y-2 flex-1">
          <h3 class="text-[18px] font-bold">
            <.link :if={@link} navigate={@link}>{@title}</.link>
            <span :if={!@link}>{@title}</span>
          </h3>
          <p class="text-[#637381] dark:text-gray-300 text-[14px]">
            {@description}
          </p>
          <.link
            navigate={@link}
            class="inline-flex items-center leading-5 text-[#91939b] hover:text-[#565860] dark:text-[#dedfe4] dark:hover:text-[#bcbec4] transition-all duration-150 gap-1"
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
        </div>
        <.link navigate={@link} target="_blank" class="text-gray-500 inline-block mt-1.5">
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
            <path d="M21 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h6" /><path d="m21 3-9 9" /><path d="M15 3h6v6" />
          </svg>
        </.link>
      </.card_content>
    </.card>
    """
  end
end
