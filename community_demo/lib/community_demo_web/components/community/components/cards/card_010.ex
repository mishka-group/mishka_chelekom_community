defmodule CommunityDemoWeb.Community.Components.Cards.Card010 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Card

  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: "shadow-md", doc: "")
  attr(:title, :string, default: "", doc: "")
  attr(:description, :string, default: "", doc: "")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_card_010(assigns) do
    ~H"""
     <.card class={@class} rounded="extra_small" id={@id}>
      <.card_title padding="large" title={@title} class="border-b dark:border-[#36363d]" />
      <.card_content padding="large" space="large">
      <p class="text-[#637381] dark:text-gray-300 text-[14px]">
        {@description}
      </p>
      </.card_content>
    </.card>
    """
  end
end
