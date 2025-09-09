defmodule CommunityDemoWeb.Components.Accordion do
  @moduledoc """
  The `CommunityDemoWeb.Components.Accordion` module provides a flexible and customizable accordion
  component for Phoenix LiveView applications.

  It supports a variety of configuration options including size, variant, color, padding,
  and border styles.

  ### Features

  - **Customizable Design**: Supports multiple variants such as `"default"`, `"outline"`,
  `"bordered"`, `"outline_separated"`, `"bordered_separated"`, `"transparent"`, and `"menu"`.
  - **Size and Spacing**: Provides control over the size and spacing of accordion items
  using predefined values such as `"extra_small"`, `"small"`, `"medium"`,
  `"large"`, and `"extra_large"`.
  - **Color Themes**: Offers a range of color options including `"primary"`,
  `"secondary"`, `"success"`, `"warning"`, `"danger"`, `"info"`, `"silver"`, `"dark"`, and more.
  - **Interactive Animations**: Includes interactive JavaScript-based animations
  for showing and hiding content with smooth transitions.
  - **Icon and Media Support**: Allows the inclusion of icons and images within
  accordion items, enhancing the visual appeal and usability of the component.
  """

  use Phoenix.Component

  alias Phoenix.LiveView.JS

  import CommunityDemoWeb.Components.Icon, only: [icon: 1]

  @doc """
  The `accordion` component provides a collapsible structure with various styling options,
  ideal for organizing content into expandable panels. It supports customizable attributes such
  as `variant`, `color`, and `media_size`.

  ## Examples

  ```elixir
  <.accordion id="test-108" media_size="medium" color="secondary">
    <:item
      title="Accordion Version native"
      description="Need to be something like this yeehh!?"
      image="https://img.icons8.com/clouds/256/000000/futurama-bender.png"
    >
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis fugit, voluptas nam quia,
      sunt sapiente itaque velit illo sed nesciunt molestias commodi, veniam adipisci quo
      laboriosam in ipsa illum tenetur.
    </:item>
    <:item
      title="Accordion Version native"
      description="Need to be something like this yeehh!?"
      image="https://img.icons8.com/clouds/256/000000/futurama-bender.png"
    >
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis fugit, voluptas nam quia,
      sunt sapiente itaque velit illo sed nesciunt molestias commodi, veniam adipisci quo
      laboriosam in ipsa illum tenetur.
    </:item>
  </.accordion>
  ```
  """
  @doc type: :component
  attr :id, :string,
    required: true,
    doc: "A unique identifier is used to manage state and interaction"

  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :variant, :string, default: "base", doc: "Determines the style"
  attr :space, :string, default: "small", doc: "Space between items"
  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :border, :string, default: "extra_small", doc: "Determines border style"
  attr :padding, :string, default: "small", doc: "Determines padding for items"
  attr :rounded, :string, default: "none", doc: "Determines the border radius"

  attr :chevron_icon, :string,
    default: "hero-chevron-right",
    doc: "Determines the icon for the chevron"

  attr :chevron_class, :string, default: nil, doc: "Determines the icon for the chevron"

  attr :media_size, :string, default: "small", doc: "Determines size of the media elements"

  attr :size, :string,
    default: "",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  slot :item, required: true, doc: "Specifies item slot of an accordion" do
    attr :title, :string, required: true, doc: "Specifies the title of the element"
    attr :description, :string, doc: "Determines a short description"
    attr :icon, :string, doc: "Icon displayed alongside of an item"
    attr :class, :string, doc: "Custom CSS class for additional styling"
    attr :image, :string, doc: "Image displayed alongside of an item"
    attr :icon_wrapper_class, :string, doc: "Image displayed alongside of an item"
    attr :hover, :string, doc: "Determines custom class for the hover"
    attr :image_class, :string, doc: "Determines custom class for the image"
    attr :icon_class, :string, doc: "Determines custom class for the icon"
    attr :content_class, :string, doc: "Determines custom class for the content"
    attr :title_class, :string, doc: "Determines custom class for the title"
    attr :summary_class, :string, doc: "Determines custom class for the summary"
    attr :font_weight, :string, doc: "Determines custom class for the font weight"
    attr :open, :boolean, doc: "Whether the accordion item is initially open or closed"
  end

  attr :rest, :global,
    include: ~w(left_chevron right_chevron chevron hide_chevron),
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  def accordion(assigns) do
    ~H"""
    <div
      id={@id}
      class={[
        "overflow-hidden w-full h-fit",
        @variant == "menu" && menu_rounded(@rounded),
        @variant != "menu" && rounded_size(@rounded, @variant),
        color_variant(@variant, @color),
        space_class(@space, @variant),
        border_class(@border, @variant),
        media_size(@media_size),
        padding_size(@padding),
        size_class(@size),
        @class
      ]}
      {drop_rest(@rest)}
    >
      <div
        :for={{item, index} <- Enum.with_index(@item, 1)}
        class={["group accordion-item-wrapper", item[:class]]}
      >
        <div
          id={"#{@id}-#{index}-role-button"}
          role="button"
          tabindex="0"
          aria-expanded="false"
          aria-controls={"#{@id}-#{index}"}
          class={[
            "accordion-summary block w-full",
            "transition-all duration-100 ease-in-out [&.active-accordion-button_.accordion-chevron]:rotate-90",
            item[:summary_class]
          ]}
        >
          <.native_chevron_position
            id={"#{@id}-#{index}-open-chevron"}
            phx-click={
              show_accordion_content("#{@id}-#{index}")
              |> JS.hide()
              |> JS.show(to: "##{@id}-#{index}-close-chevron")
            }
            position={chevron_position(@rest)}
            chevron_icon={@chevron_icon}
            chevron_class={@chevron_class}
            item={item}
            hide_chevron={@rest[:hide_chevron] || false}
          />

          <.native_chevron_position
            id={"#{@id}-#{index}-close-chevron"}
            phx-click={
              hide_accordion_content("#{@id}-#{index}")
              |> JS.hide()
              |> JS.show(to: "##{@id}-#{index}-open-chevron")
            }
            position={chevron_position(@rest)}
            chevron_icon={@chevron_icon}
            chevron_class={@chevron_class}
            item={item}
            class="hidden"
            hide_chevron={@rest[:hide_chevron] || false}
          />
        </div>
        <.focus_wrap
          id={"#{@id}-#{index}"}
          role="region"
          aria-labelledby={"#{@id}-#{index}-role-button"}
          class="accordion-content-wrapper relative hidden transition [&:not(.active)_.accordion-content]:grid-rows-[0fr] [&.active_.accordion-content]:grid-rows-[1fr]"
        >
          <div
            id={"#{@id}-#{index}-content"}
            class={[
              "accordion-content transition-all duration-500 grid",
              item[:content_class]
            ]}
          >
            <div class="overflow-hidden">
              {render_slot(item)}
            </div>
          </div>
        </.focus_wrap>
      </div>
    </div>
    """
  end

  @doc """
  The Native Accordion component provides an expandable structure that uses the native `<details>`
  HTML element.

  It offers various customization options such as `variant`, `color`, and `media_size` for
  styling and configuration.

  ## Examples
  ```elixir
  <.native_accordion name="example-zero" media_size="small">
    <:item
      title="Accordion Version native"
      description="Need to be something like this yeehh!?"
      image="https://img.icons8.com/clouds/256/000000/futurama-bender.png"
    >
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis fugit, voluptas nam quia,
      sunt sapiente itaque velit illo sed nesciunt molestias commodi, veniam adipisci quo
      laboriosam in ipsa illum tenetur.
    </:item>
    <:item
      title="Accordion Version native"
      description="Need to be something like this yeehh!?"
      image="https://img.icons8.com/clouds/256/000000/futurama-bender.png"
    >
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis fugit, voluptas nam quia,
      sunt sapiente itaque velit illo sed nesciunt molestias commodi, veniam adipisci quo
      laboriosam in ipsa illum tenetur.
    </:item>
  </.native_accordion>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :name, :string, default: nil, doc: "Specifies the name of the element"
  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :variant, :string, default: "base", doc: "Determines the style"
  attr :space, :string, default: "small", doc: "Space between items"
  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :border, :string, default: "extra_small", doc: "Determines border style"

  attr :padding, :string, default: "small", doc: "Determines padding for items"

  attr :rounded, :string, default: "none", doc: "Determines the border radius"

  attr :media_size, :string, default: "small", doc: "Determines size of the media elements"

  attr :chevron_icon, :string,
    default: "hero-chevron-right",
    doc: "Determines the icon for the chevron"

  attr :chevron_class, :string, default: nil, doc: "Determines the icon for the chevron"

  slot :item, required: true, doc: "Specifies item slot of an accordion" do
    attr :title, :string, required: true, doc: "Specifies the title of the element"
    attr :description, :string, doc: "Determines a short description"
    attr :icon, :string, doc: "Icon displayed alongside of an item"
    attr :class, :string, doc: "Custom CSS class for additional styling"
    attr :image, :string, doc: "Image displayed alongside of an item"
    attr :image_class, :string, doc: "Determines custom class for the image"
    attr :icon_class, :string, doc: "Determines custom class for the icon"
    attr :content_class, :string, doc: "Determines custom class for the content"
    attr :title_class, :string, doc: "Determines custom class for the title"
    attr :summary_class, :string, doc: "Determines custom class for the summary"
    attr :open, :boolean, doc: "Whether the accordion item is initially open or closed"
  end

  attr :rest, :global,
    include: ~w(left_chevron right_chevron chevron hide_chevron),
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  def native_accordion(assigns) do
    ~H"""
    <div
      id={@id}
      class={[
        "overflow-hidden",
        @variant == "menu" && menu_rounded(@rounded),
        @variant != "menu" && rounded_size(@rounded, @variant),
        space_class(@space, @variant),
        padding_size(@padding),
        border_class(@border, @variant),
        media_size(@media_size),
        color_variant(@variant, @color),
        @class
      ]}
      {drop_rest(@rest)}
    >
      <details
        :for={item <- @item}
        name={@name}
        class={["group accordion-item-wrapper", item[:class]]}
        open={item[:open] || false}
      >
        <summary class={[
          "accordion-summary w-full group-open:mb-1",
          "cursor-pointer transition-[margin,background,text] duration-[250ms] ease-in-out list-none",
          item_color(@variant, @color),
          item[:summary_class]
        ]}>
          <.native_chevron_position
            position={chevron_position(@rest)}
            chevron_icon={@chevron_icon}
            item={item}
            hide_chevron={@rest[:hide_chevron] || false}
          />
        </summary>

        <div class={[
          "-mt-1 shrink-0 transition-all duration-1000 ease-in-out opacity-0 group-open:opacity-100",
          "-translate-y-4	group-open:translate-y-0 custom-accordion-content",
          item_color(@variant, @color),
          item[:content_class]
        ]}>
          {render_slot(item)}
        </div>
      </details>
    </div>
    """
  end

  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :item, :map, doc: "Determines each item"
  attr :position, :string, values: ["left", "right"], doc: "Determines the element position"
  attr :chevron_icon, :string, doc: "Determines the icon for the chevron"
  attr :chevron_class, :string, default: nil, doc: "Determines the icon for the chevron"
  attr :hide_chevron, :boolean, default: false, doc: "Hide chevron icon"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  defp native_chevron_position(%{position: "left"} = assigns) do
    ~H"""
    <div id={@id} class={[@class]} {@rest}>
      <div class={[
        "flex flex-nowrap items-center rtl:justify-start ltr:justify-start gap-2",
        @item[:hover]
      ]}>
        <.icon
          :if={!@hide_chevron}
          name={@chevron_icon}
          class={[
            "accordion-chevron transition-transform duration-300",
            "ease-in-out group-open:rotate-90 rotate-180 rtl:rotate-0 shrink-0",
            @chevron_class
          ]}
        />

        <div class="flex items-center gap-2">
          <img
            :if={!is_nil(@item[:image])}
            class={["accordion-title-media shrink-0", @item[:image_class]]}
            src={@item[:image]}
          />

          <div class={["shrink-0", @item[:icon_wrapper_class]]}>
            <.icon
              :if={!is_nil(@item[:icon])}
              name={@item[:icon]}
              class={@item[:icon_class] || "accordion-title-media"}
            />
          </div>

          <div class={["space-y-2"]}>
            <div class={[
              @item[:title_class],
              @item[:font_weight]
            ]}>
              {@item[:title]}
            </div>

            <div :if={!is_nil(@item[:description])} class="text-xs font-light">
              {@item[:description]}
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  defp native_chevron_position(%{position: "right"} = assigns) do
    ~H"""
    <div id={@id} class={[@class]} {@rest}>
      <div class={[
        "flex items-center justify-between gap-2",
        @item[:hover]
      ]}>
        <div class="flex items-center gap-2">
          <img
            :if={!is_nil(@item[:image])}
            class={["accordion-title-media shrink-0", @item[:image_class]]}
            src={@item[:image]}
          />

          <div class={["shrink-0", @item[:icon_wrapper_class]]}>
            <.icon
              :if={!is_nil(@item[:icon])}
              name={@item[:icon]}
              class={@item[:icon_class] || "accordion-title-media"}
            />
          </div>

          <div class={["space-y-2", @item[:title_class]]}>
            <div class={[
              @item[:title_class],
              @item[:font_weight]
            ]}>
              {@item[:title]}
            </div>

            <div :if={!is_nil(@item[:description])} class="text-xs font-light">
              {@item[:description]}
            </div>
          </div>
        </div>

        <.icon
          :if={!@hide_chevron}
          name={@chevron_icon}
          class={[
            "accordion-chevron transition-transform duration-300",
            "ease-in-out group-open:rotate-90 rtl:rotate-180 shrink-0",
            @chevron_class
          ]}
        />
      </div>
    </div>
    """
  end

  @doc """
  Shows the content of an accordion item and applies the necessary CSS classes to indicate
  its active state.

  ## Parameters

    - `js`: (optional) An existing `Phoenix.LiveView.JS` structure to apply transformations on.
    Defaults to a new `%JS{}`.
    - `id`: A string representing the unique identifier of the accordion item. It is used
    to target the specific DOM elements for showing content and applying classes.

  ## Returns

    - A `Phoenix.LiveView.JS` structure with commands to show the accordion content,
    add the `active` class to the content, and add the `active-accordion-button`
    class to the corresponding button.

  ## Example
  ```elixir
  show_accordion_content(%JS{}, "accordion-item-1")
  ```

  This example will show the content of the accordion item with the ID `accordion-item-1`
  and add the active classes to it.
  """
  def show_accordion_content(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.show(to: "##{id}")
    |> JS.add_class("active", to: "##{id}")
    |> JS.add_class("active-accordion-button", to: "##{id}-role-button")
    |> JS.set_attribute({"aria-expanded", "true"}, to: "##{id}-role-button")
  end

  @doc """
  Hides the content of an accordion item and removes the active CSS classes to indicate its
  inactive state.

  ## Parameters

    - `js`: (optional) An existing `Phoenix.LiveView.JS` structure to apply transformations on.
    Defaults to a new `%JS{}`.
    - `id`: A string representing the unique identifier of the accordion item. It is used to
    target the specific DOM elements for hiding content and removing classes.

  ## Returns

    - A `Phoenix.LiveView.JS` structure with commands to remove the `active` class from
    the content and the `active-accordion-button` class from the corresponding button.

  ## Example
  ```elixir
  hide_accordion_content(%JS{}, "accordion-item-1")
  ```
  This example will hide the content of the accordion item with the ID "accordion-item-1" and remove
  the active classes from it.
  """
  def hide_accordion_content(js \\ %JS{}, id) do
    js
    |> JS.remove_class("active", to: "##{id}")
    |> JS.remove_class("active-accordion-button", to: "##{id}-role-button")
    |> JS.set_attribute({"aria-expanded", "false"}, to: "##{id}-role-button")
  end

  defp space_class(_, variant)
       when variant not in ["outline_separated", "bordered_separated", "base_separated"],
       do: nil

  defp space_class("extra_small", _), do: "accordion-item-gap space-y-2"

  defp space_class("small", _), do: "accordion-item-gap space-y-3"

  defp space_class("medium", _), do: "accordion-item-gap space-y-4"

  defp space_class("large", _), do: "accordion-item-gap space-y-5"

  defp space_class("extra_large", _), do: "accordion-item-gap space-y-6"

  defp space_class("none", _), do: nil

  defp space_class(params, _) when is_binary(params), do: params

  defp menu_rounded("extra_small"), do: "[&_.accordion-summary]:rounded-sm"

  defp menu_rounded("small"), do: "[&_.accordion-summary]:rounded"

  defp menu_rounded("medium"), do: "[&_.accordion-summary]:rounded-md"

  defp menu_rounded("large"), do: "[&_.accordion-summary]:rounded-lg"

  defp menu_rounded("extra_large"), do: "[&_.accordion-summary]:rounded-xl"

  defp menu_rounded("full"), do: "[&_.accordion-summary]:rounded-full"

  defp menu_rounded(params) when is_binary(params), do: params

  defp media_size("extra_small"), do: "[&>.accordion-item-wrapper_.accordion-title-media]:size-12"

  defp media_size("small"), do: "[&>.accordion-item-wrapper_.accordion-title-media]:size-14"

  defp media_size("medium"), do: "[&>.accordion-item-wrapper_.accordion-title-media]:size-16"

  defp media_size("large"), do: "[&>.accordion-item-wrapper_.accordion-title-media]:size-20"

  defp media_size("extra_large"), do: "[&>.accordion-item-wrapper_.accordion-title-media]:size-24"

  defp media_size(params) when is_binary(params), do: params

  defp size_class("extra_small") do
    [
      "text-xs [&_.accordion-summary]:py-1 [&_.accordion-summary]:px-2"
    ]
  end

  defp size_class("small") do
    [
      "text-sm [&_.accordion-summary]:py-1.5 [&_.accordion-summary]:px-3"
    ]
  end

  defp size_class("medium") do
    [
      "text-base [&_.accordion-summary]:py-2 [&_.accordion-summary]:px-4"
    ]
  end

  defp size_class("large") do
    [
      "text-lg [&_.accordion-summary]:py-2.5 [&_.accordion-summary]:px-5"
    ]
  end

  defp size_class("extra_large") do
    [
      "text-xl [&_.accordion-summary]:py-3 [&_.accordion-summary]:px-5"
    ]
  end

  defp size_class(params) when is_binary(params), do: params

  defp rounded_size("extra_small", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded-sm"
    ]
  end

  defp rounded_size("small", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded"
    ]
  end

  defp rounded_size("medium", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded-md"
    ]
  end

  defp rounded_size("medium", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded-md"
    ]
  end

  defp rounded_size("large", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded-lg"
    ]
  end

  defp rounded_size("extra_large", variant)
       when variant in ["outline_separated", "bordered_separated", "base_separated"] do
    [
      "[&_.accordion-item-wrapper_.accordion-summary]:rounded-xl"
    ]
  end

  defp rounded_size("extra_small", variant)
       when variant in ["default", "bordered", "outline", "base", "shadow", "gradient"] do
    [
      "rounded-sm [&:not(.accordion-item-gap)>.accordion-item-wrapper:first-child>.accordion-summary]:rounded-t-sm",
      "[&.accordion-item-gap>.accordion-item-wrapper>.accordion-summary]:rounded-t-sm",
      "[&.accordion-item-gap>.accordion-item-wrapper>:not(.accordion-summary)]:rounded-b-sm"
    ]
  end

  defp rounded_size("small", variant)
       when variant in ["default", "bordered", "outline", "base", "shadow", "gradient"] do
    [
      "rounded [&:not(.accordion-item-gap)>.accordion-item-wrapper:first-child>.accordion-summary]:rounded-t",
      "[&.accordion-item-gap>.accordion-item-wrapper>.accordion-summary]:rounded-t",
      "[&.accordion-item-gap>.accordion-item-wrapper>:not(.accordion-summary)]:rounded-b"
    ]
  end

  defp rounded_size("medium", variant)
       when variant in ["default", "bordered", "outline", "base", "shadow", "gradient"] do
    [
      "rounded-md [&:not(.accordion-item-gap)>.accordion-item-wrapper:first-child>.accordion-summary]:rounded-t-md",
      "[&.accordion-item-gap>.accordion-item-wrapper>.accordion-summary]:rounded-t-md",
      "[&.accordion-item-gap>.accordion-item-wrapper>:not(.accordion-summary)]:rounded-b-md"
    ]
  end

  defp rounded_size("large", variant)
       when variant in ["default", "bordered", "outline", "base", "shadow", "gradient"] do
    [
      "rounded-lg [&:not(.accordion-item-gap)>.accordion-item-wrapper:first-child>.accordion-summary]:rounded-t-lg",
      "[&.accordion-item-gap>.accordion-item-wrapper>.accordion-summary]:rounded-t-lg",
      "[&.accordion-item-gap>.accordion-item-wrapper>:not(.accordion-summary)]:rounded-b-lg"
    ]
  end

  defp rounded_size("extra_large", variant)
       when variant in ["default", "bordered", "outline", "base", "shadow", "gradient"] do
    [
      "rounded-xl [&:not(.accordion-item-gap)>.accordion-item-wrapper:first-child>.accordion-summary]:rounded-t-xl",
      "[&.accordion-item-gap>.accordion-item-wrapper>.accordion-summary]:rounded-t-xl",
      "[&.accordion-item-gap>.accordion-item-wrapper>:not(.accordion-summary)]:rounded-b-xl"
    ]
  end

  defp rounded_size("none", _), do: nil

  defp rounded_size(params, _) when is_binary(params), do: params

  defp padding_size("extra_small") do
    [
      "[&>.accordion-item-wrapper>.accordion-summary]:p-1",
      "[&>.accordion-item-wrapper>.custom-accordion-content]:p-1",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper>.accordion-content]:px-1",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper.active>.accordion-content]:py-1"
    ]
  end

  defp padding_size("small") do
    [
      "[&>.accordion-item-wrapper>.accordion-summary]:p-2",
      "[&>.accordion-item-wrapper>.custom-accordion-content]:p-2",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper>.accordion-content]:px-2",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper.active>.accordion-content]:py-2"
    ]
  end

  defp padding_size("medium") do
    [
      "[&>.accordion-item-wrapper>.accordion-summary]:p-3",
      "[&>.accordion-item-wrapper>.custom-accordion-content]:p-3",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper>.accordion-content]:px-3",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper.active>.accordion-content]:py-3"
    ]
  end

  defp padding_size("large") do
    [
      "[&>.accordion-item-wrapper>.accordion-summary]:p-4",
      "[&>.accordion-item-wrapper>.custom-accordion-content]:p-4",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper>.accordion-content]:px-4",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper.active>.accordion-content]:py-4"
    ]
  end

  defp padding_size("extra_large") do
    [
      "[&>.accordion-item-wrapper>.accordion-summary]:p-5",
      "[&>.accordion-item-wrapper>.custom-accordion-content]:p-5",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper>.accordion-content]:px-5",
      "[&>.accordion-item-wrapper>.accordion-content-wrapper.active>.accordion-content]:py-5"
    ]
  end

  defp padding_size("zero"), do: "[&>.accordion-item-wrapper>.accordion-summary]:p-0"
  defp padding_size(params) when is_binary(params), do: params

  defp border_class(_, variant) when variant in ["default", "shadow", "transparent", "gradient"],
    do: nil

  defp border_class("none", "outline") do
    [
      "border-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-0"
    ]
  end

  defp border_class("extra_small", "outline") do
    [
      "border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b"
    ]
  end

  defp border_class("small", "outline") do
    [
      "border-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-2"
    ]
  end

  defp border_class("medium", "outline") do
    [
      "border-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[3px]"
    ]
  end

  defp border_class("large", "outline") do
    [
      "border-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-4"
    ]
  end

  defp border_class("extra_large", "outline") do
    [
      "border-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[5px]"
    ]
  end

  defp border_class("none", "bordered") do
    [
      "border-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-0"
    ]
  end

  defp border_class("extra_small", "bordered") do
    [
      "border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b"
    ]
  end

  defp border_class("small", "bordered") do
    [
      "border-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-2"
    ]
  end

  defp border_class("medium", "bordered") do
    [
      "border-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[3px]"
    ]
  end

  defp border_class("large", "bordered") do
    [
      "border-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-4"
    ]
  end

  defp border_class("extra_large", "bordered") do
    [
      "border-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[5px]"
    ]
  end

  defp border_class("none", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-0"
  end

  defp border_class("extra_small", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border"
  end

  defp border_class("small", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-2"
  end

  defp border_class("medium", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[3px]"
  end

  defp border_class("large", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-4"
  end

  defp border_class("extra_large", "bordered_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[5px]"
  end

  defp border_class("none", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-0"
  end

  defp border_class("extra_small", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border"
  end

  defp border_class("small", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-2"
  end

  defp border_class("medium", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[3px]"
  end

  defp border_class("large", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-4"
  end

  defp border_class("extra_large", "outline_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[5px]"
  end

  defp border_class("none", "base") do
    [
      "border-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-0",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-0"
    ]
  end

  defp border_class("extra_small", "base") do
    [
      "border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b"
    ]
  end

  defp border_class("small", "base") do
    [
      "border-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-2",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-2"
    ]
  end

  defp border_class("medium", "base") do
    [
      "border-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[3px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[3px]"
    ]
  end

  defp border_class("large", "base") do
    [
      "border-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-4",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-4"
    ]
  end

  defp border_class("extra_large", "base") do
    [
      "border-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-b-[5px]",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-b-[5px]"
    ]
  end

  defp border_class("none", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-0"
  end

  defp border_class("extra_small", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border"
  end

  defp border_class("small", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-2"
  end

  defp border_class("medium", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[3px]"
  end

  defp border_class("large", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-4"
  end

  defp border_class("extra_large", "base_separated") do
    "[&>.accordion-item-wrapper>.accordion-summary]:border-[5px]"
  end

  defp border_class(params, _) when is_binary(params), do: params

  defp color_variant("base", _) do
    [
      "text-base-text-light border-base-border-light bg-white",
      "dark:text-base-text-dark dark:border-base-border-dark dark:bg-base-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-base-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-base-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-base-border-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-base-border-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-base-border-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-base-border-dark"
    ]
  end

  defp color_variant("base_separated", _) do
    [
      "text-base-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-base-border-light",
      "[&>.accordion-item-wrapper]:bg-white",
      "dark:text-base-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-base-border-dark",
      "dark:[&>.accordion-item-wrapper]:bg-base-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-base-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-base-hover-dark"
    ]
  end

  defp color_variant("transparent", "natural") do
    [
      "text-natural-light dark:text-natural-dark"
    ]
  end

  defp color_variant("transparent", "primary") do
    [
      "text-primary-light dark:text-primary-dark"
    ]
  end

  defp color_variant("transparent", "secondary") do
    [
      "text-secondary-light dark:text-secondary-dark"
    ]
  end

  defp color_variant("transparent", "success") do
    [
      "text-success-light dark:text-success-dark"
    ]
  end

  defp color_variant("transparent", "warning") do
    [
      "text-warning-light dark:text-warning-dark"
    ]
  end

  defp color_variant("transparent", "danger") do
    [
      "text-danger-light dark:text-danger-dark"
    ]
  end

  defp color_variant("transparent", "info") do
    [
      "text-info-light dark:text-info-dark"
    ]
  end

  defp color_variant("transparent", "misc") do
    [
      "text-misc-light dark:text-misc-dark"
    ]
  end

  defp color_variant("transparent", "dawn") do
    [
      "text-dawn-light dark:text-dawn-dark"
    ]
  end

  defp color_variant("transparent", "silver") do
    [
      "text-silver-light dark:text-silver-dark"
    ]
  end

  defp color_variant("default", "white") do
    [
      "bg-white text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-disabled-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-disabled-light"
    ]
  end

  defp color_variant("default", "dark") do
    [
      "bg-default-dark-bg text-white",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-bg-dark",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-bg-dark"
    ]
  end

  defp color_variant("default", "natural") do
    [
      "bg-natural-light text-white dark:bg-natural-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-dark"
    ]
  end

  defp color_variant("default", "primary") do
    [
      "bg-primary-light text-white bg-primary-hover-light dark:bg-primary-darkhover: dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-hover-dark"
    ]
  end

  defp color_variant("default", "secondary") do
    [
      "bg-secondary-light text-white dark:bg-secondary-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-hover-dark"
    ]
  end

  defp color_variant("default", "success") do
    [
      "bg-success-light text-white dark:bg-success-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-hover-dark"
    ]
  end

  defp color_variant("default", "warning") do
    [
      "bg-warning-light text-white dark:bg-warning-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-hover-dark"
    ]
  end

  defp color_variant("default", "danger") do
    [
      "bg-danger-light text-white dark:bg-danger-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-hover-dark"
    ]
  end

  defp color_variant("default", "info") do
    [
      "bg-info-light text-white dark:bg-info-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-hover-dark"
    ]
  end

  defp color_variant("default", "misc") do
    [
      "bg-misc-light text-white dark:bg-misc-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-hover-dark"
    ]
  end

  defp color_variant("default", "dawn") do
    [
      "bg-dawn-light text-white dark:bg-dawn-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-hover-dark"
    ]
  end

  defp color_variant("default", "silver") do
    [
      "bg-silver-light text-white dark:bg-silver-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-dark"
    ]
  end

  defp color_variant("outline", "natural") do
    [
      "border-natural-light dark:border-natural-dark text-natural-light dark:text-natural-dark",
      "hover:text-natural-hover-light dark:hover:text-natural-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-natural-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-natural-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-natural-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-natural-dark"
    ]
  end

  defp color_variant("outline", "primary") do
    [
      "border-primary-light dark:border-primary-dark text-primary-light dark:text-primary-dark",
      "hover:text-primary-hover-light dark:hover:text-primary-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-primary-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-primary-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-primary-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-primary-dark"
    ]
  end

  defp color_variant("outline", "secondary") do
    [
      "border-secondary-light dark:border-secondary-dark text-secondary-light dark:text-secondary-dark",
      "hover:text-secondary-hover-light dark:hover:text-secondary-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-secondary-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-secondary-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-secondary-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-secondary-dark"
    ]
  end

  defp color_variant("outline", "success") do
    [
      "border-success-light dark:border-success-dark text-success-light dark:text-success-dark",
      "hover:text-success-hover-light dark:hover:text-success-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-success-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-success-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-success-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-success-dark"
    ]
  end

  defp color_variant("outline", "warning") do
    [
      "border-warning-light dark:border-warning-dark text-warning-light dark:text-warning-dark",
      "hover:text-warning-hover-light dark:hover:text-warning-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-warning-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-warning-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-warning-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-warning-dark"
    ]
  end

  defp color_variant("outline", "danger") do
    [
      "border-danger-light dark:border-danger-dark text-danger-light dark:text-danger-dark",
      "hover:text-danger-hover-light dark:hover:text-danger-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-danger-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-danger-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-danger-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-danger-dark"
    ]
  end

  defp color_variant("outline", "info") do
    [
      "border-info-light dark:border-info-dark text-info-light dark:text-info-dark",
      "hover:text-info-hover-light dark:hover:text-info-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-info-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-info-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-info-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-info-dark"
    ]
  end

  defp color_variant("outline", "misc") do
    [
      "border-misc-light dark:border-misc-dark text-misc-light dark:text-misc-dark",
      "hover:text-misc-hover-light dark:hover:text-misc-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-misc-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-misc-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-misc-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-misc-dark"
    ]
  end

  defp color_variant("outline", "dawn") do
    [
      "border-dawn-light dark:border-dawn-dark text-dawn-light dark:text-dawn-dark",
      "hover:text-dawn-hover-light dark:hover:text-dawn-hover-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-dawn-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-dawn-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-dawn-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-dawn-dark"
    ]
  end

  defp color_variant("outline", "silver") do
    [
      "border-silver-light dark:border-silver-dark text-silver-light dark:text-silver-dark",
      "hover:text-silver-hover-light dark:hover:text-silver-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-silver-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-silver-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-silver-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-silver-dark"
    ]
  end

  defp color_variant("bordered", "white") do
    [
      "bg-white text-black border-bordered-white-border",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-bordered-white-border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-bordered-white-border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-bordered-white-border"
    ]
  end

  defp color_variant("bordered", "dark") do
    [
      "bg-bordered-dark-bg text-white border-bordered-dark-border",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-bordered-dark-border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-bordered-dark-border",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-bordered-dark-border"
    ]
  end

  defp color_variant("bordered", "natural") do
    [
      "text-natural-bordered-text-light border-natural-border-light bg-natural-bordered-bg-light",
      "dark:text-natural-bordered-text-dark dark:border-natural-border-dark dark:bg-natural-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-natural-border-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-natural-border-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-natural-border-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-natural-border-dark"
    ]
  end

  defp color_variant("bordered", "primary") do
    [
      "text-primary-bordered-text-light border-primary-bordered-text-light bg-primary-bordered-bg-light",
      "dark:text-primary-bordered-text-dark dark:border-primary-bordered-text-dark dark:bg-primary-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-indicator-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-primary-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-primary-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-primary-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-primary-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "secondary") do
    [
      "text-secondary-bordered-text-light border-secondary-bordered-text-light bg-secondary-bordered-bg-light",
      "dark:text-secondary-bordered-text-dark dark:border-secondary-bordered-text-dark dark:bg-secondary-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-indicator-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-secondary-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-secondary-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-secondary-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-secondary-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "success") do
    [
      "text-success-bordered-text-light border-success-bordered-text-light bg-success-bordered-bg-light",
      "dark:text-success-bordered-text-dark dark:border-success-bordered-text-dark dark:bg-success-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-success-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-success-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-success-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-success-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "warning") do
    [
      "text-warning-bordered-text-light border-warning-bordered-text-light bg-warning-bordered-bg-light",
      "dark:text-warning-bordered-text-dark dark:border-warning-bordered-text-dark dark:bg-warning-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-warning-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-warning-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-warning-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-warning-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "danger") do
    [
      "text-danger-bordered-text-light border-danger-bordered-text-light bg-danger-bordered-bg-light",
      "dark:text-danger-bordered-text-dark dark:border-danger-bordered-text-dark dark:bg-danger-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-danger-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-danger-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-danger-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-danger-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "info") do
    [
      "text-info-bordered-text-light border-info-bordered-text-light bg-info-bordered-bg-light",
      "dark:text-info-bordered-text-dark dark:border-info-bordered-text-dark dark:bg-info-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-info-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-info-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-info-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-info-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "misc") do
    [
      "text-misc-bordered-text-light border-misc-bordered-text-light bg-misc-bordered-bg-light",
      "dark:text-misc-bordered-text-dark dark:border-misc-bordered-text-dark dark:bg-misc-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-misc-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-misc-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-misc-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-misc-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "dawn") do
    [
      "text-dawn-bordered-text-light border-dawn-bordered-text-light bg-dawn-bordered-bg-light",
      "dark:text-dawn-bordered-text-dark dark:border-dawn-bordered-text-dark dark:bg-dawn-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-indicator-alt-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-dawn-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-dawn-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-dawn-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-dawn-bordered-text-dark"
    ]
  end

  defp color_variant("bordered", "silver") do
    [
      "text-silver-bordered-text-light border-silver-bordered-text-light bg-silver-bordered-bg-light",
      "dark:text-silver-bordered-text-dark dark:border-silver-bordered-text-dark dark:bg-silver-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-dark",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-silver-bordered-text-light",
      "[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-silver-bordered-text-light",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-summary]:border-silver-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper:not(:last-child)>.accordion-content-wrapper.active]:border-silver-bordered-text-dark"
    ]
  end

  defp color_variant("bordered_separated", "natural") do
    [
      "text-natural-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-natural-border-light",
      "[&>.accordion-item-wrapper]:bg-natural-bordered-bg-light",
      "dark:text-natural-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-natural-border-dark",
      "dark:[&>.accordion-item-wrapper]:bg-natural-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-dark"
    ]
  end

  defp color_variant("bordered_separated", "primary") do
    [
      "text-primary-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-primary-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-primary-bordered-bg-light",
      "dark:text-primary-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-primary-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-primary-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-indicator-light"
    ]
  end

  defp color_variant("bordered_separated", "secondary") do
    [
      "text-secondary-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-secondary-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-secondary-bordered-bg-light",
      "dark:text-secondary-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-secondary-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-secondary-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-indicator-light"
    ]
  end

  defp color_variant("bordered_separated", "success") do
    [
      "text-success-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-success-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-success-bordered-bg-light",
      "dark:text-success-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-success-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-success-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "warning") do
    [
      "text-warning-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-warning-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-warning-bordered-bg-light",
      "dark:text-warning-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-warning-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-warning-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "danger") do
    [
      "text-danger-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-danger-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-danger-bordered-bg-light",
      "dark:text-danger-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-danger-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-danger-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "info") do
    [
      "text-info-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-info-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-info-bordered-bg-light",
      "dark:text-info-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-info-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-info-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "misc") do
    [
      "text-misc-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-misc-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-misc-bordered-bg-light",
      "dark:text-misc-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-misc-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-misc-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "dawn") do
    [
      "text-dawn-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-dawn-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-dawn-bordered-bg-light",
      "dark:text-dawn-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-dawn-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-dawn-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-gradient-indicator-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-indicator-alt-light"
    ]
  end

  defp color_variant("bordered_separated", "silver") do
    [
      "text-silver-bordered-text-light [&>.accordion-item-wrapper>.accordion-summary]:border-silver-bordered-text-light",
      "[&>.accordion-item-wrapper]:bg-silver-bordered-bg-light",
      "dark:text-silver-bordered-text-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-silver-bordered-text-dark",
      "dark:[&>.accordion-item-wrapper]:bg-silver-bordered-bg-dark",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-light dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "natural") do
    [
      "text-natural-light [&>.accordion-item-wrapper>.accordion-summary]:border-natural-light",
      "dark:text-natural-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-natural-dark",
      "hover:text-natural-hover-light dark:hover:text-natural-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "primary") do
    [
      "text-primary-light [&>.accordion-item-wrapper>.accordion-summary]:border-primary-light",
      "dark:text-primary-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-primary-dark",
      "hover:text-primary-hover-light dark:hover:text-primary-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "secondary") do
    [
      "text-secondary-light [&>.accordion-item-wrapper>.accordion-summary]:border-secondary-light",
      "dark:text-secondary-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-secondary-dark",
      "hover:text-secondary-hover-light dark:hover:text-secondary-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "success") do
    [
      "text-success-light [&>.accordion-item-wrapper>.accordion-summary]:border-success-light",
      "dark:text-success-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-success-dark",
      "hover:text-success-hover-light dark:hover:text-success-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "warning") do
    [
      "text-warning-light [&>.accordion-item-wrapper>.accordion-summary]:border-warning-light",
      "dark:text-warning-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-warning-dark",
      "hover:text-warning-hover-light dark:hover:text-warning-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "danger") do
    [
      "text-danger-light [&>.accordion-item-wrapper>.accordion-summary]:border-danger-light",
      "dark:text-danger-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-danger-dark",
      "hover:text-danger-hover-light dark:hover:text-danger-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "info") do
    [
      "text-info-light [&>.accordion-item-wrapper>.accordion-summary]:border-info-light",
      "dark:text-info-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-info-dark",
      "hover:text-info-hover-light dark:hover:text-info-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "misc") do
    [
      "text-misc-light [&>.accordion-item-wrapper>.accordion-summary]:border-misc-light",
      "dark:text-misc-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-misc-dark",
      "hover:text-misc-hover-light dark:hover:text-misc-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "dawn") do
    [
      "text-dawn-light [&>.accordion-item-wrapper>.accordion-summary]:border-dawn-light",
      "dark:text-dawn-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-dawn-dark",
      "hover:text-dawn-hover-light dark:hover:text-dawn-hover-dark"
    ]
  end

  defp color_variant("outline_separated", "silver") do
    [
      "text-silver-light [&>.accordion-item-wrapper>.accordion-summary]:border-silver-light",
      "dark:text-silver-dark dark:[&>.accordion-item-wrapper>.accordion-summary]:border-silver-dark",
      "hover:text-silver-hover-light dark:hover:text-silver-hover-dark"
    ]
  end

  defp color_variant("menu", "white") do
    [
      "[&>.accordion-item-wrapper]:bg-white text-black"
    ]
  end

  defp color_variant("menu", "dark") do
    [
      "[&>.accordion-item-wrapper]:bg-default-dark-bg text-white"
    ]
  end

  defp color_variant("menu", "natural") do
    [
      "[&>.accordion-item-wrapper]:bg-natural-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-natural-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "primary") do
    [
      "[&>.accordion-item-wrapper]:bg-primary-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-primary-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "secondary") do
    [
      "[&>.accordion-item-wrapper]:bg-secondary-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-secondary-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "success") do
    [
      "[&>.accordion-item-wrapper]:bg-success-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-success-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "warning") do
    [
      "[&>.accordion-item-wrapper]:bg-warning-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-warning-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "danger") do
    [
      "[&>.accordion-item-wrapper]:bg-danger-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-danger-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "info") do
    [
      "[&>.accordion-item-wrapper]:bg-info-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-info-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "misc") do
    [
      "[&>.accordion-item-wrapper]:bg-misc-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-misc-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "dawn") do
    [
      "[&>.accordion-item-wrapper]:bg-dawn-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-dawn-dark dark:text-black"
    ]
  end

  defp color_variant("menu", "silver") do
    [
      "[&>.accordion-item-wrapper]:bg-silver-light text-white",
      "dark:[&>.accordion-item-wrapper]:bg-silver-dark dark:text-black"
    ]
  end

  defp color_variant("shadow", "natural") do
    [
      "bg-natural-light text-white dark:bg-natural-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-natural-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-natural)] shadow-[0px_10px_15px_-3px_var(--color-shadow-natural)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "primary") do
    [
      "bg-primary-light text-white dark:bg-primary-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-primary-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-primary)] shadow-[0px_10px_15px_-3px_var(--color-shadow-primary)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "secondary") do
    [
      "bg-secondary-light text-white dark:bg-secondary-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-secondary-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-secondary)] shadow-[0px_10px_15px_-3px_var(--color-shadow-secondary)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "success") do
    [
      "bg-success-light text-white dark:bg-success-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-success-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-success)] shadow-[0px_10px_15px_-3px_var(--color-shadow-success)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "warning") do
    [
      "bg-warning-light text-white dark:bg-warning-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-warning-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-warning)] shadow-[0px_10px_15px_-3px_var(--color-shadow-warning)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "danger") do
    [
      "bg-danger-light text-white dark:bg-danger-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-danger-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-danger)] shadow-[0px_10px_15px_-3px_var(--color-shadow-danger)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "info") do
    [
      "bg-info-light text-white dark:bg-info-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-info-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-info)] shadow-[0px_10px_15px_-3px_var(--color-shadow-info)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "misc") do
    [
      "bg-misc-light text-white dark:bg-misc-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-misc-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-misc)] shadow-[0px_10px_15px_-3px_var(--color-shadow-misc)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "dawn") do
    [
      "bg-dawn-light text-white dark:bg-dawn-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-dawn-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-dawn)] shadow-[0px_10px_15px_-3px_var(--color-shadow-dawn)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "silver") do
    [
      "bg-silver-light text-white dark:bg-silver-dark dark:text-black",
      "[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-light",
      "dark:[&>.accordion-item-wrapper>.accordion-summary]:hover:bg-silver-hover-dark",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-silver)] shadow-[0px_10px_15px_-3px_var(--color-shadow-silver)] dark:shadow-none"
    ]
  end

  defp color_variant("gradient", "natural") do
    [
      "bg-gradient-to-br from-gradient-natural-from-light to-gradient-natural-to-light text-white",
      "dark:from-gradient-natural-from-dark dark:to-white dark:text-black"
    ]
  end

  defp color_variant("gradient", "primary") do
    [
      "bg-gradient-to-br from-gradient-primary-from-light to-gradient-primary-to-light text-white",
      "dark:from-gradient-primary-from-dark dark:to-gradient-primary-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "secondary") do
    [
      "bg-gradient-to-br from-gradient-secondary-from-light to-gradient-secondary-to-light text-white",
      "dark:from-gradient-secondary-from-dark dark:to-gradient-secondary-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "success") do
    [
      "bg-gradient-to-br from-gradient-success-from-light to-gradient-success-to-light text-white",
      "dark:from-gradient-success-from-dark dark:to-gradient-success-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "warning") do
    [
      "bg-gradient-to-br from-gradient-warning-from-light to-gradient-warning-to-light text-white",
      "dark:from-gradient-warning-from-dark dark:to-gradient-warning-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "danger") do
    [
      "bg-gradient-to-br from-gradient-danger-from-light to-gradient-danger-to-light text-white",
      "dark:from-gradient-danger-from-dark dark:to-gradient-danger-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "info") do
    [
      "bg-gradient-to-br from-gradient-info-from-light to-gradient-info-to-light text-white",
      "dark:from-gradient-info-from-dark dark:to-gradient-info-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "misc") do
    [
      "bg-gradient-to-br from-gradient-misc-from-light to-gradient-misc-to-light text-white",
      "dark:from-gradient-misc-from-dark dark:to-gradient-misc-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "dawn") do
    [
      "bg-gradient-to-br from-gradient-dawn-from-light to-gradient-dawn-to-light text-white",
      "dark:from-gradient-dawn-from-dark dark:to-gradient-dawn-to-dark dark:text-black"
    ]
  end

  defp color_variant("gradient", "silver") do
    [
      "bg-gradient-to-br from-gradient-silver-from-light to-gradient-silver-to-light text-white",
      "dark:from-gradient-silver-from-dark dark:to-gradient-silver-to-dark dark:text-black"
    ]
  end

  defp color_variant(params, _) when is_binary(params), do: params

  defp item_color("base", _) do
    [
      "group-open:bg-white group-open:text-base-text-light dark:group-open:bg-base-bg-dark dark:group-open:text-base-text-dark"
    ]
  end

  defp item_color("base_separated", _) do
    [
      "group-open:bg-white group-open:text-base-text-light dark:group-open:bg-base-bg-dark dark:group-open:text-base-text-dark"
    ]
  end

  defp item_color("default", "white") do
    [
      "group-open:bg-white text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-bordered-white-border"
    ]
  end

  defp item_color("default", "dark") do
    [
      "group-open:bg-default-dark-bg text-white",
      "group-open:[&:is(.accordion-summary)]:hover:bg-natural-light"
    ]
  end

  defp item_color("default", "natural") do
    [
      "group-open:bg-natural-light text-white",
      "dark:group-open:bg-natural-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-natural-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-natural-hover-dark"
    ]
  end

  defp item_color("default", "primary") do
    [
      "group-open:bg-primary-light text-white",
      "dark:group-open:bg-primary-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-primary-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-primary-hover-dark"
    ]
  end

  defp item_color("default", "secondary") do
    [
      "group-open:bg-secondary-light text-white",
      "dark:group-open:bg-secondary-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-secondary-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-secondary-hover-dark"
    ]
  end

  defp item_color("default", "success") do
    [
      "group-open:bg-success-light text-white",
      "dark:group-open:bg-success-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-success-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-success-hover-dark"
    ]
  end

  defp item_color("default", "warning") do
    [
      "group-open:bg-warning-light text-white",
      "dark:group-open:bg-warning-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-warning-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-warning-hover-dark"
    ]
  end

  defp item_color("default", "danger") do
    [
      "group-open:bg-danger-light text-white",
      "dark:group-open:bg-danger-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-danger-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-danger-hover-dark"
    ]
  end

  defp item_color("default", "info") do
    [
      "group-open:bg-info-light text-white",
      "dark:group-open:bg-info-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-info-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-info-hover-dark"
    ]
  end

  defp item_color("default", "misc") do
    [
      "group-open:bg-misc-light text-white",
      "dark:group-open:bg-misc-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-misc-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-misc-hover-dark"
    ]
  end

  defp item_color("default", "dawn") do
    [
      "group-open:bg-dawn-light text-white",
      "dark:group-open:bg-dawn-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-dawn-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-dawn-hover-dark"
    ]
  end

  defp item_color("default", "silver") do
    [
      "group-open:bg-silver-light text-white",
      "dark:group-open:bg-silver-dark dark:text-black",
      "group-open:[&:is(.accordion-summary)]:hover:bg-silver-hover-light dark:group-open:[&:is(.accordion-summary)]:hover:bg-silver-hover-dark"
    ]
  end

  defp item_color("outline", "natural") do
    [
      "group-open:bg-natural-light group-open:text-white dark:group-open:bg-natural-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "primary") do
    [
      "group-open:bg-primary-light group-open:text-white dark:group-open:bg-primary-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "secondary") do
    [
      "group-open:bg-secondary-light group-open:text-white dark:group-open:bg-secondary-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "success") do
    [
      "group-open:bg-success-light group-open:text-white dark:group-open:bg-success-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "warning") do
    [
      "group-open:bg-warning-light group-open:text-white dark:group-open:bg-warning-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "danger") do
    [
      "group-open:bg-danger-light group-open:text-white dark:group-open:bg-danger-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "info") do
    [
      "group-open:bg-info-light group-open:text-white dark:group-open:bg-info-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "misc") do
    [
      "group-open:bg-misc-light group-open:text-white dark:group-open:bg-misc-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "dawn") do
    [
      "group-open:bg-dawn-light group-open:text-white dark:group-open:bg-dawn-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("outline", "silver") do
    [
      "group-open:bg-silver-light group-open:text-white dark:group-open:bg-silver-dark dark:group-open:text-black",
      "group-open:[&:is(.accordion-summary)]:border-b-0"
    ]
  end

  defp item_color("bordered", "natural") do
    [
      "group-open:bg-natural-light group-open:text-white dark:group-open:bg-natural-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "primary") do
    [
      "group-open:bg-primary-light group-open:text-white dark:group-open:bg-primary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "secondary") do
    [
      "group-open:bg-secondary-light group-open:text-white dark:group-open:bg-secondary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "success") do
    [
      "group-open:bg-success-light group-open:text-white dark:group-open:bg-success-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "warning") do
    [
      "group-open:bg-warning-light group-open:text-white dark:group-open:bg-warning-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "danger") do
    [
      "group-open:bg-danger-light group-open:text-white dark:group-open:bg-danger-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "info") do
    [
      "group-open:bg-info-light group-open:text-white dark:group-open:bg-info-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "misc") do
    [
      "group-open:bg-misc-light group-open:text-white dark:group-open:bg-misc-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "dawn") do
    [
      "group-open:bg-dawn-light group-open:text-white dark:group-open:bg-dawn-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered", "silver") do
    [
      "group-open:bg-silver-light group-open:text-white dark:group-open:bg-silver-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "natural") do
    [
      "group-open:bg-natural-light group-open:text-white dark:group-open:bg-natural-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "primary") do
    [
      "group-open:bg-primary-light group-open:text-white dark:group-open:bg-primary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "secondary") do
    [
      "group-open:bg-secondary-light group-open:text-white dark:group-open:bg-secondary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "success") do
    [
      "group-open:bg-success-light group-open:text-white dark:group-open:bg-success-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "warning") do
    [
      "group-open:bg-warning-light group-open:text-white dark:group-open:bg-warning-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "danger") do
    [
      "group-open:bg-danger-light group-open:text-white dark:group-open:bg-danger-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "info") do
    [
      "group-open:bg-info-light group-open:text-white dark:group-open:bg-info-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "misc") do
    [
      "group-open:bg-misc-light group-open:text-white dark:group-open:bg-misc-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "dawn") do
    [
      "group-open:bg-dawn-light group-open:text-white dark:group-open:bg-dawn-dark dark:group-open:text-black"
    ]
  end

  defp item_color("bordered_separated", "silver") do
    [
      "group-open:bg-silver-light group-open:text-white dark:group-open:bg-silver-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "natural") do
    [
      "group-open:bg-natural-light group-open:text-white dark:group-open:bg-natural-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "primary") do
    [
      "group-open:bg-primary-light group-open:text-white dark:group-open:bg-primary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "secondary") do
    [
      "group-open:bg-secondary-light group-open:text-white dark:group-open:bg-secondary-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "success") do
    [
      "group-open:bg-success-light group-open:text-white dark:group-open:bg-success-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "warning") do
    [
      "group-open:bg-warning-light group-open:text-white dark:group-open:bg-warning-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "danger") do
    [
      "group-open:bg-danger-light group-open:text-white dark:group-open:bg-danger-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "info") do
    [
      "group-open:bg-info-light group-open:text-white dark:group-open:bg-info-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "misc") do
    [
      "group-open:bg-misc-light group-open:text-white dark:group-open:bg-misc-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "dawn") do
    [
      "group-open:bg-dawn-light group-open:text-white dark:group-open:bg-dawn-dark dark:group-open:text-black"
    ]
  end

  defp item_color("outline_separated", "silver") do
    [
      "group-open:bg-silver-light group-open:text-white dark:group-open:bg-silver-dark dark:group-open:text-black"
    ]
  end

  defp item_color(params, _) when is_binary(params), do: params

  defp chevron_position(%{left_chevron: true}), do: "left"
  defp chevron_position(%{right_chevron: true}), do: "right"
  defp chevron_position(%{chevron: true}), do: "right"
  defp chevron_position(_), do: "right"

  defp drop_rest(rest) do
    all_rest =
      ~w(left_chevron right_chevron chevron hide_chevron)
      |> Enum.map(&if(is_binary(&1), do: String.to_atom(&1), else: &1))

    Map.drop(rest, all_rest)
  end
end
