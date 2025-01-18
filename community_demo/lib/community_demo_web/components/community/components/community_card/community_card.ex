defmodule CommunityDemoWeb.CommunityCard do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{
    Card,
    Avatar,
    Button
  }

  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: "", doc: "Card image source"
  attr :alt, :string, default: "", doc: "Card image alt"
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :author, :string, default: "", doc: ""
  attr :tag, :string, default: "", doc: ""
  attr :date, :string, default: "", doc: ""
  attr :avatar, :string, default: "", doc: "Source of avatar image"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_01(assigns) do
    ~H"""
    <.card rounded="large" id={@id}>
      <.card_media
        src={@src}
        alt={@alt}
      />
      <.card_content padding="medium">
        <h3 class="text-[#111928] dark:text-white text-[24px] font-bold mb-3">
        <.link :if={@link} navigate={@link}>{@title}</.link>
        <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[13px]">
          {@description}
        </p>
      </.card_content>
      <.card_footer padding="medium" class="flex justify-between items-center border-t dark:border-gray-800 pt-5 lg:mx-2">
        <div class="flex gap-3 items-center">
          <.avatar size="large" rounded="full" src={@avatar} />
          <div class="space-y-1">
            <h6 class="text-[15px] font-semibold">
              By {@author}
            </h6>
            <div class="text-[#637381] text-[13px] dark:text-gray-300">{@tag}</div>
          </div>
        </div>
        <div class="text-end space-y-1">
          <h6 class="text-[15px] font-bold">Date</h6>
          <div class="text-[#637381] text-[13px] dark:text-gray-300">{@date}</div>
        </div>
      </.card_footer>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

    attr :src, :string, default: nil, doc: "Card image source"
    attr :alt, :string, default: nil, doc: "Card image alt"
    attr :link, :string, default: nil, doc: ""
    attr :title, :string, default: "", doc: ""
    attr :sub_title, :string, default: "", doc: ""
    attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_02(assigns) do
    ~H"""
    <.card rounded="none" padding="medium" id="community-card-10" class="border-t-4 !border-t-[#3758f9] shadow-xl">
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

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: "Card image source"
  attr :alt, :string, default: nil, doc: "Card image alt"
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  slot :tags, required: false do
    attr :link, :string, doc: "tags links prop"
  end


  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_03(assigns) do
    ~H"""
    <.card rounded="large" border="none" id={@id} class="shadow-xl">
      <.card_media
        src={@src}
        alt={@alt}
      />
      <.card_content padding="medium">
        <h3 class="text-[#111928] dark:text-white text-[18px] font-bold mb-3">
        <.link :if={@link} navigate={@link}>{@title}</.link>
        <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 mb-5 text-[12px]">
          {@description}
        </p>
        <div class="flex items-center bg-[#f3f4f6] dark:bg-[#26262b] p-3 gap-3 rounded">
          <span
            :for={tag <- @tags}
            class="text-[#637381] dark:text-gray-300 text-xl"
          >
            {render_slot(tag)}
          </span>
        </div>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: ""
  attr :alt, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :tag, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: "", doc: "Source of avatar image"
  attr :author, :string, default: "", doc: "Author name"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_04(assigns) do
    ~H"""
    <.card rounded="large" class="grid grid-cols-7" id={@id}>
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

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_05(assigns) do
    ~H"""
    <.card rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="medium">
        <h3 class="text-[18px] font-bold mb-3">
          {@title}
        </h3>
        <p class="text-[#637381] dark:text-gray-300 mb-5 text-[14px]">
          {@description}
        </p>
        <.link navigate={@link} class="inline-flex items-center leading-5 text-[#395af9] hover:text-indigo-500 transition-all duration-150 gap-1">
          <span>Learn more</span>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="size-4"><path d="M18 8L22 12L18 16"/><path d="M2 12H22"/></svg>
        </.link>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_06(assigns) do
    ~H"""
    <.card rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <h3 class="text-[18px] font-bold">
          {@title}
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[14px]">
         {@description}
        </p>
        <.button_link navigate={@link} size="py-2 px-3 leading-5" display="inline-block" rounded="large">
          Learn More
        </.button_link>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: nil, doc: ""
  attr :tag, :string, default: nil, doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_07(assigns) do
    ~H"""
    <.card rounded="large" class="shadow-md" id={@id}>
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

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: ""
  attr :alt, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: nil, doc: ""
  attr :tag, :string, default: nil, doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_08(assigns) do
    ~H"""
    <.card rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <div class="flex gap-5 items-center">
        <.avatar src={@avatar} rounded="full" size="medium" />
        <div>
          <h6 class="text-[#111928] dark:text-white text-[14px] font-bold mb-1">
            {@author}
          </h6>
          <p class="text-[#637381] dark:text-gray-300 text-[13px]">{@tag}</p>
        </div>
      </div>
      <.card_media
        src={@src}
        alt={@alt}
        rounded="medium"
      />
      <h3 class="text-[18px] font-bold">
        <.link :if={@link} navigate={@link}>{@title}</.link>
        <span :if={!@link}>{@title}</span>
      </h3>
      <p class="text-[#637381] dark:text-gray-300 text-[14px]">
        {@description}
      </p>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: ""
  attr :alt, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_09(assigns) do
    ~H"""
     <.card rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <.card_media
          src={@src}
          alt={@alt}
          rounded="medium"
        />
        <h3 class="text-[18px] font-bold">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[14px]">
          {@description}
        </p>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: nil, doc: ""
  attr :alt, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_10(assigns) do
    ~H"""
     <.card rounded="large" class="shadow-md" id={@id}>
      <.card_content padding="large" space="large">
        <.card_media
          src={@src}
          alt={@alt}
          rounded="medium"
        />
        <h3 class="text-[18px] font-bold">
          <.link :if={@link} navigate={@link}>{@title}</.link>
          <span :if={!@link}>{@title}</span>
        </h3>
        <p class="text-[#637381] dark:text-gray-300 text-[14px]">
          {@description}
        </p>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_11(assigns) do
    ~H"""
    <.card rounded="extra_small" class="shadow-md" id={@id}>
      <.card_title padding="large" title={@title} class="border-b dark:border-[#36363d]" />
      <.card_content padding="large" space="large">
      <p class="text-[#637381] dark:text-gray-300 text-[14px]">
        {@description}
      </p>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_12(assigns) do
    ~H"""
    <.card rounded="large" padding="large" class="shadow-md" id={@id}>
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
          <.link navigate={@link} class="inline-flex items-center leading-5 text-[#91939b] hover:text-[#565860] dark:text-[#dedfe4] dark:hover:text-[#bcbec4] transition-all duration-150 gap-1">
            <span>Learn more</span>
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="size-4"><path d="M18 8L22 12L18 16"/><path d="M2 12H22"/></svg>
          </.link>
        </div>
        <.link navigate={@link} target="_blank" class="text-gray-500 inline-block mt-1.5">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="size-4"><path d="M21 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h6"/><path d="m21 3-9 9"/><path d="M15 3h6v6"/></svg>
        </.link>
      </.card_content>
    </.card>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: "", doc: ""
  attr :alt, :string, default: "", doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""

  slot :price, required: false
  slot :badge, required: false

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_13(assigns) do
    ~H"""
    <.card rounded="large" class="shadow-sm" id="community-card-1">
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

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :src, :string, default: "", doc: ""
  attr :alt, :string, default: "", doc: ""
  attr :title, :string, default: "", doc: ""
  attr :description, :string, default: "", doc: ""
  attr :avatar, :string, default: nil, doc: ""
  attr :link, :string, default: nil, doc: ""

  slot :price, required: false
  slot :badge, required: false

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def community_card_14(assigns) do
    ~H"""
    <.card class="grid grid-cols-7 gap-2 shadow-sm" rounded="large" id={@id}>
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
