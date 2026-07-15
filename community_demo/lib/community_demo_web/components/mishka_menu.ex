defmodule CommunityDemoWeb.Components.MishkaMenu do
  @moduledoc """
  The `CommunityDemoWeb.Components.MishkaMenu` module is designed to render a hierarchical menu structure in
  Phoenix LiveView applications. It provides a versatile menu component capable of
  handling both simple and complex navigation systems with nested sub-menus.

  This module supports dynamic configuration of menu items through a list of maps,
  allowing for a wide range of customization options. Menu items can be rendered as
  standalone buttons or as expandable accordions containing nested sub-menus.
  The `CommunityDemoWeb.Components.MishkaMenu` is ideal for creating multi-level navigation menus in
  applications with complex information architectures.

  The component integrates smoothly with other components from the `MishkaChelekom`
  library, such as `accordion` and `button_link`, to offer a consistent and cohesive
  UI experience. It also includes support for various padding and spacing options to
  control the layout and appearance of the menu.

  **Documentation:** https://mishka.tools/chelekom/docs/menu
  """
  use Phoenix.Component
  import CommunityDemoWeb.Components.MishkaButton, only: [mishka_button_link: 1, mishka_button: 1]
  import CommunityDemoWeb.Components.MishkaCollapse, only: [mishka_collapse: 1]
  import CommunityDemoWeb.Components.MishkaIcon, only: [mishka_icon: 1]
  import Phoenix.LiveView.Utils, only: [random_id: 0]

  @doc """
  Renders a customizable `menu` component that can include menu items as a list of maps or use
  additional slots to define nested content.

  It supports both direct menu items and nested accordion submenus.

  ## Examples

  ```elixir
  <.mishka_menu>
    <li>
      <.mishka_button_link
        navigate="/"
        size="extra_small"
        color="misc"
        variant="unbordered"
        rounded="large"
        class="w-full"
        display="flex"
        icon_class="size-5"
        icon="hero-home"
        font_weight="font-bold"
      >
        Dashboard
      </.mishka_button_link>
    </li>

    <li>
      <.mishka_button_link
        size="extra_small"
        color="misc"
        variant="unbordered"
        rounded="large"
        class="w-full"
        display="flex"
        navigate="/examples/footer"
        icon_class="size-5"
        icon="hero-server"
      >
        Footer
      </.mishka_button_link>
    </li>

    <li>
      <.mishka_accordion
        padding="none"
        id="accordion1"
        size="extra_small"
        rounded="large"
        color="misc"
        variant="menu"
      >
        <:item title="Menu item" icon_class="size-5" icon="hero-bookmark">
          <ul class="pl-5 space-y-3 mt-3">
            <.mishka_button_link
              navigate="/examples/indicator"
              size="extra_small"
              color="misc"
              variant="unbordered"
              rounded="large"
              class="w-full"
              display="flex"
              icon_class="size-5"
              icon="hero-scissors"
            >
              Indicator
            </.mishka_button_link>

            <.mishka_button_link
              navigate="/examples/image"
              size="extra_small"
              color="misc"
              variant="unbordered"
              rounded="large"
              class="w-full"
              display="flex"
              icon_class="size-5"
              icon="hero-scale"
            >
              Image
            </.mishka_button_link>

            <.mishka_button_link
              navigate="/examples/rating"
              size="extra_small"
              color="misc"
              variant="unbordered"
              rounded="large"
              class="w-full"
              display="flex"
              icon_class="size-5"
              icon="hero-building-storefront"
            >
              Rating
            </.mishka_button_link>

            <.mishka_accordion
              variant="menu"
              padding="none"
              size="extra_small"
              rounded="large"
              color="misc"
              id="accordion2"
            >
              <:item title="Invoice" icon_class="size-5" icon="hero-building-storefront">
                <ul class="pl-5 space-y-3 mt-3">
                  <.mishka_button_link
                    navigate="/examples/popover"
                    size="extra_small"
                    color="misc"
                    variant="unbordered"
                    rounded="large"
                    class="w-full"
                    display="flex"
                    icon_class="size-5"
                    icon="hero-bolt"
                  >
                    Popover
                  </.mishka_button_link>

                  <.mishka_button_link
                    navigate="/examples/overlay"
                    size="extra_small"
                    color="misc"
                    variant="unbordered"
                    rounded="large"
                    class="w-full"
                    display="flex"
                    icon_class="size-5"
                    icon="hero-shopping-bag"
                  >
                    Overlay
                  </.mishka_button_link>
                </ul>
              </:item>
            </.mishka_accordion>
          </ul>
        </:item>
      </.mishka_accordion>
    </li>

    <li>
      <.mishka_button_link
        navigate="/examples/modal"
        size="extra_small"
        color="misc"
        variant="unbordered"
        rounded="large"
        class="w-full"
        display="flex"
        icon_class="size-5"
        icon="hero-bell"
      >
        Modal
      </.mishka_button_link>
    </li>

    <li>
      <.mishka_button_link
        navigate="/examples/list"
        size="extra_small"
        color="misc"
        variant="unbordered"
        rounded="large"
        class="w-full"
        display="flex"
        icon_class="size-5"
        icon="hero-cake"
      >
        List
      </.mishka_button_link>
    </li>
  </.mishka_menu>
  ```

  ### It can be used as list of map

  ```elixir
  list_menus = [
    %{
      id: "Dashboard",
      navigate: "/",
      title: "Dashboard",
      size: "extra_small",
      color: "misc",
      variant: "unbordered",
      rounded: "large",
      class: "w-full",
      display: "flex",
      icon_class: "size-5",
      icon: "hero-home",
      active: true
    },
    %{
      id: "Footer",
      navigate: "/examples/footer",
      title: "Footer",
      size: "extra_small",
      color: "misc",
      variant: "unbordered",
      rounded: "large",
      class: "w-full",
      display: "flex",
      icon_class: "size-5",
      icon: "hero-server"
    },
    %{
      id: "Menu-item",
      title: "Menu item",
      padding: "pl-5 space-y-3 mt-3",
      size: "extra_small",
      rounded: "large",
      color: "misc",
      variant: "menu",
      icon: "hero-bookmark",
      icon_class: "size-5",
      sub_items: [
        %{
          navigate: "/examples/indicator",
          title: "Indicator",
          size: "extra_small",
          color: "misc",
          variant: "unbordered",
          rounded: "large",
          class: "w-full",
          display: "flex",
          icon_class: "size-5",
          icon: "hero-scissors"
        },
        %{
          navigate: "/examples/image",
          title: "Image",
          size: "extra_small",
          color: "misc",
          variant: "unbordered",
          rounded: "large",
          class: "w-full",
          display: "flex",
          icon_class: "size-5",
          icon: "hero-scale"
        },
        %{
          navigate: "/examples/rating",
          title: "Rating",
          size: "extra_small",
          color: "misc",
          variant: "unbordered",
          rounded: "large",
          class: "w-full",
          display: "flex",
          icon_class: "size-5",
          icon: "hero-building-storefront"
        },
        %{
          id: "Invoice",
          title: "Invoice",
          variant: "menu",
          padding: "pl-5 space-y-3 mt-3",
          size: "extra_small",
          rounded: "large",
          color: "misc",
          icon: "hero-bookmark",
          icon_class: "size-5",
          sub_items: [
            %{
              navigate: "/examples/popover",
              title: "Popover",
              size: "extra_small",
              color: "misc",
              variant: "unbordered",
              rounded: "large",
              class: "w-full",
              display: "flex",
              icon_class: "size-5",
              icon: "hero-bolt"
            },
            %{
              navigate: "/examples/overlay",
              title: "Overlay",
              size: "extra_small",
              color: "misc",
              variant: "unbordered",
              rounded: "large",
              class: "w-full",
              display: "flex",
              icon_class: "size-5",
              icon: "hero-shopping-bag"
            }
          ]
        }
      ]
    },
    %{
      navigate: "/examples/modal",
      title: "Modal",
      size: "extra_small",
      color: "misc",
      variant: "unbordered",
      rounded: "large",
      class: "w-full",
      display: "flex",
      icon_class: "size-5",
      icon: "hero-bell"
    }
  ]

  <.mishka_menu menu_items={@list_menus} />
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"
  attr :link_class, :string, default: nil, doc: "Custom CSS class for additional styling for link"
  attr :item_class, :string, default: nil, doc: "Custom CSS class for additional styling for li"

  attr :accordion_class, :string,
    default: nil,
    doc: "Custom CSS class for additional styling for accordion"

  attr :menu_items, :list, default: [], doc: "Determines menu items as a list of maps"
  attr :space, :string, default: "small", doc: "Space between items"
  attr :padding, :string, default: "small", doc: "Determines padding for items"

  slot :inner_block,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  def mishka_menu(assigns) do
    assigns =
      assign(
        assigns,
        :menu_items,
        Enum.map(assigns.menu_items, fn item ->
          Map.put_new_lazy(item, :id, &random_id/0)
        end)
      )

    ~H"""
    <ul
      id={@id}
      class={[
        padding_size(@padding),
        space_class(@space),
        @class
      ]}
      {@rest}
    >
      <li :for={menu_item <- @menu_items} class={@item_class}>
        <.mishka_button_link
          :if={Map.get(menu_item, :sub_items, []) == []}
          font_weight={menu_item[:active] && "font-bold"}
          class={@link_class}
          {menu_item}
        />
        <.mishka_collapse
          :if={Map.get(menu_item, :sub_items, []) != []}
          id={"#{menu_item[:id]}-collapse"}
          class={@accordion_class}
        >
          <:trigger>
            <.mishka_button
              id={menu_item[:id]}
              font_weight={menu_item[:active] && "font-bold"}
              class={@link_class}
              content_position={menu_item[:content_position] || "start"}
              content_class={
                menu_item[:content_class] || "flex justify-between items-center gap-2 w-full"
              }
              display={menu_item[:display] || "flex"}
              full_width={Map.get(menu_item, :full_width, true)}
              {Map.take(menu_item, [:variant, :color, :size, :rounded, :border, :icon, :icon_class, :line_height])}
            >
              {menu_item[:title]}
              <.mishka_icon name="hero-chevron-down" class="size-3 transition-transform" />
            </.mishka_button>
          </:trigger>
          <.mishka_menu
            id={"#{menu_item[:id]}-submenu"}
            class={menu_item[:padding]}
            menu_items={Map.get(menu_item, :sub_items, [])}
          />
        </.mishka_collapse>
      </li>
      {render_slot(@inner_block)}
    </ul>
    """
  end

  defp padding_size("extra_small"), do: "p-2"

  defp padding_size("small"), do: "p-2.5"

  defp padding_size("medium"), do: "p-3"

  defp padding_size("large"), do: "p-3.5"

  defp padding_size("extra_large"), do: "p-4"

  defp padding_size("none"), do: "p-0"

  defp padding_size(params) when is_binary(params), do: params

  defp space_class("none"), do: nil

  defp space_class("extra_small"), do: "space-y-2"

  defp space_class("small"), do: "space-y-3"

  defp space_class("medium"), do: "space-y-4"

  defp space_class("large"), do: "space-y-5"

  defp space_class("extra_large"), do: "space-y-6"

  defp space_class(params) when is_binary(params), do: params
end
