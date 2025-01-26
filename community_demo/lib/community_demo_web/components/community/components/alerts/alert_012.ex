defmodule CommunityDemoWeb.Community.Components.Alerts.Alert012 do
  use Phoenix.Component
  import CommunityDemoWeb.Components.Alert

  @doc type: :component
  attr(:id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"
  )

  attr(:class, :string, default: nil, doc: "")
  attr(:title, :string, default: nil, doc: "Heading of alert")
  attr(:description, :string, default: nil, doc: "Description of alert")

  attr(:rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"
  )

  slot(:inner_block, required: false, doc: "Inner block that renders HEEx content")

  def community_alert_012(assigns) do
    ~H"""
    <.alert id={@id} variant="bg-white border-[#0B76B7]" border="border-s-[5px]" padding="small" class={@class} width="fit" icon={nil} rounded="large">
    <div class="flex gap-5">
      <div class="size-8 shrink-0 rounded-full bg-[#0B76B7] text-white rounded flex items-center justify-center">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="size-[18px]"><circle cx="12" cy="12" r="10"/><path d="M12 16v-4"/><path d="M12 8h.01"/></svg>
      </div>
      <div>
        <div :if={@title} class="text-[18px] leading-6 mb-3 text-[#111928] font-semibold">{@title}</div>
        <p :if={@description} class="text-[#637381]">
          {@description}
        </p>
        {render_slot(@inner_block)}
      </div>
    </div>
    </.alert>
    """
  end
end
