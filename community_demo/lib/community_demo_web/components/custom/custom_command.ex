defmodule CommunityDemoWeb.Components.CustomCommand do
  use Phoenix.Component
  alias Phoenix.LiveView.JS
  import Phoenix.LiveView.Utils, only: [random_id: 0]

  @doc type: :component
  attr(:code, :string, default: nil, doc: "Add custom classes")

  def custom_command(assigns) do
    assigns =
      assigns
      |> assign_new(:id, fn -> random_id() end)

    ~H"""
    <div
      :if={@code}
      id={"code-parent-#{@id}"}
      phx-hook="CopyMixInstallationHook"
      class="flex gap-3 items-center bg-neutral-300 text-black dark:text-[#f6f6f6] w-fit mx-auto dark:bg-[#232323] py-1 px-3 rounded-[4px] text-[10px] sm:text-xs md:text-sm text-nowrap my-8"
    >
      <code id={@id} class="whitespace-nowrap text-[10px] sm:text-xs md:text-xl">{@code}</code>
      <button
        title="copy mix command"
        phx-click={JS.dispatch("code:click", to: "##{@id}")}
        class={[
          "hover:text-emerald-500 transition-all delay-200 duration-600"
        ]}
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="20"
          height="20"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="1.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="size-4 copy-mix-code-svg"
        >
          <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
          <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
        </svg>
      </button>
    </div>
    """
  end
end
