defmodule CommunityDemoWeb.Community.Components.Cards.Card013 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Avatar, Button}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:src, :string, default: "", doc: "")
  attr(:alt, :string, default: "", doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")
  attr(:link, :string, default: nil, doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_013(assigns) do
    ~H"""
    <.card class={@class} rounded="large" class="shadow-sm" id={@id}>
      <.card_media
        src={@src}
        alt={@alt}
      />
      <.card_content padding="large" class="text-center">
        <h3 class="mb-4 block text-xl font-semibold text-dark hover:text-blue-600 dark:text-white sm:text-[22px] md:text-xl lg:text-[22px] xl:text-xl 2xl:text-[22px]">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="mb-7 text-base leading-relaxed text-[#98A2AB] dark:text-dark-6">
          {@description}
        </p>
        <.button_link navigate={@link} rounded="full" variant="outline" color="natural" size="leading-5 px-7 py-2 text-[15px]">View Details</.button_link>
      </.card_content>
    </.card>
    """
  end
end
