defmodule CommunityDemoWeb.Community.Components.Alerts.Alert002 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.{Footer, Button}

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:brand, :string, default: nil, doc: "Heading of alert")
  attr(:description, :string, default: nil, doc: "Description of alert")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_alert_002(assigns) do
    ~H"""
    <.footer padding="large" max_width="extra_large" border="none" id={@id}>
      <div :if={@brand} class="text-2xl font-bold">{@brand}</div>
      <p :if={@description} class="text-[12px] dark:text-slate-300 my-3">
        {@description}
      </p>
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-5">
        {render_slot(@inner_block)}
      </div>

      <div class="bg-slate-200 dark:bg-[#130F18] rounded-xl p-4 mt-8">
        <div class="text-md font-semobild">Subscribe to our newsletter</div>
        <div class="text-xs dark:text-slate-300 my-3 font-semobild">
          Receive weekly updates with the newest insights, trends, and tools, straight to your email.
        </div>
        <div class="flex items-center gap-4 pe-10">
          <.text_field
            disabled
            name="Username"
            size="large"
            value=""
            placeholder="Email"
            class="flex-1"
          />
          <.button
            variant="default"
            size="py-2 mt-1 px-4"
            rounded="large"
            color="misc"
          >
            Subscribe
          </.button>
        </div>
      </div>
    </.footer>
    """
  end
end
