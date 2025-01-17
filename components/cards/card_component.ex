defmodule CommunityDemoWeb.Components.Card do
  use Phoenix.Component

  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: "Card image source"
  attr :link, :string, default: nil, doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def card_component_one(assigns) do
    ~H"""
    <.card rounded="large" id={@id}>
      <.card_media
        src={~p"/images/card-3.jpg"}
        alt="Community card"
      />
      <.card_content padding="medium">
        <h3 class="text-[#111928] dark:text-white text-[24px] font-bold mb-3">
          Top Graphic Design Courses Online
        </h3>
        <p class="text-[13px]">
          Lorem ipsum dolor sit amet, consec adipiscingelit. In pretium venenatis sed finibus orci imperdiet et.
        </p>
      </.card_content>
      <.card_footer padding="medium" class="flex justify-between items-center border-t dark:border-gray-800 pt-5 lg:mx-2">
        <div class="flex gap-3 items-center">
          <.avatar size="large" rounded="full" src={~p"/images/avatar.jpg"} />
          <div class="space-y-1">
            <h6 class="text-[15px] font-semibold">
              By Samuyl Joshi
            </h6>
            <div class="text-[#637381] text-[13px] dark:text-gray-300">Graphics Designer</div>
          </div>
        </div>
        <div class="text-end space-y-1">
          <h6 class="text-[15px] font-bold">Date</h6>
          <div class="text-[#637381] text-[13px] dark:text-gray-300">15 April, 2024</div>
        </div>
      </.card_footer>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: "Card image source"
  attr :link, :string, default: nil, doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def card_component_two(assigns) do
    ~H"""
    <.card rounded="none" padding="medium" id="community-card-10" class="border-t-4 !border-t-[#3758f9] shadow-xl">
      <.card_content class="grid grid-cols-2">
        <div class="space-y-2">
          <h3 class="text-[#3758f9] text-[14px] font-bold">Startup Template</h3>
          <h3 class="text-[#111928] dark:text-gray-400 text-[13px] font-bold">
            Play - Free Html App & SaaS Landin Page Template
          </h3>
          <p class="text-[#637381] dark:text-gray-300 text-[12px]">
            Play is free startup, sass, app landing page template.
          </p>
        </div>
        <.card_media
          src={~p"/images/card04-1.png"}
          alt="Community card"
          class="[&>img]:w-full"
        />
      </.card_content>
    </.card>
    """
  end
end
