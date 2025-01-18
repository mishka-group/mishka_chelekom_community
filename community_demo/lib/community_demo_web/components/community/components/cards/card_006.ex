defmodule CommunityDemoWeb.Community.Components.Cards.Card006 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Card, Avatar, Button}

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:link, :string, default: nil, doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_006(assigns) do
    ~H"""
    <.card class={@class} rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <h3 class="text-[18px] font-bold">
          {@title}
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[14px]">
         {@description}
        </p>
        <.button_link navigate={@link} size="py-2 px-3 leading-5" color="secondary" variant="default" display="inline-block" rounded="large">
          Learn More
        </.button_link>
      </.card_content>
    </.card>
    """
  end
end
