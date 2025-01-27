defmodule CommunityDemoWeb.Components.CustomHeader do
  use Phoenix.Component

  @doc type: :component
  attr(:class, :string, default: nil, doc: "Add custom classes")

  # Define the link slot
  slot :link, required: false do
    attr(:class, :string, doc: "Custom CSS class for additional styling")
    attr(:title, :string, doc: "Title of the link")
    attr(:url, :string, doc: "URL of the link")
    attr(:heading, :string, doc: "Heading text for the link")
    attr(:description, :string, doc: "Description text for the link")
    attr(:image, :string, doc: "Image URL for the card")
    attr(:show_icon, :boolean, doc: "Whether to show the icon or not")
  end

  def custom_header(assigns) do
    ~H"""
    <section class={["text-[#202020] dark:text-[#f6f6f6] max-w-6xl mx-auto py-8 md:py-16 px-5 lg:px-2 grid md:grid-cols-4 gap-5", @class]}>
      <.link :for={link <- @link} href={link[:url]} class={["block transition-all duration-600 delay-100 rounded-xl","border dark:border-[#4C4C4C] dark:bg-[#252424] dark:hover:bg-[#252424]/65","hover:bg-[#f1f1f1] px-2 py-5 space-y-3", link[:class]]} target="_blank" title={link[:title]}>
        <h4 class="text-[1.44rem] flex items-center leading-6">
          <img :if={link[:image]} src={link[:image]} class="me-2 size-8 shrink-0" width="32" />
          <span>{link[:heading]}</span>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="size-4 ms-2"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg>
        </h4>

        <div :if={link[:description]} class="text-sm text-[#959b9d] dark:text-[#cacfd2]">
          {link[:description]}
        </div>
      </.link>
    </section>
    """
  end
end
