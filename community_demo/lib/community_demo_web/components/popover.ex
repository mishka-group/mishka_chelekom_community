defmodule CommunityDemoWeb.Components.Popover do
  @moduledoc """
  The `CommunityDemoWeb.Components.Popover` module provides a versatile popover component for Phoenix LiveView
  applications. It allows developers to create interactive and visually appealing popover elements
  with various customization options.

  This component supports different display configurations, such as inline and block styles, and
  can be triggered by various user interactions like clicks or hover events. The popover can be
  styled using predefined color schemes and variants, including options for shadowed elements.

  The module also offers control over positioning, size, and spacing of the popover content, making
  it adaptable to different use cases. It is built to be highly configurable while maintaining a
  consistent design system across the application.

  By utilizing `slots`, it allows developers to include custom content within the popover and
  trigger elements, enhancing its flexibility and usability for complex UI scenarios.
  """
  use Phoenix.Component
  alias Phoenix.LiveView.JS

  @doc """
  Renders a customizable `popover` component that can display additional information when an element is
  hovered or clicked.

  You can choose between inline and block rendering, and include rich content within the popover.

  ## Examples

  ```elixir
  <p>
    Due to its central geographic location in Southern Europe,
    <.popover inline clickable>
      <:trigger trigger_id="popover-1" inline class="text-blue-400">Italy</:trigger>
      <:content
        id="popover-1"
        rounded="large"
        width="quadruple_large"
        color="light"
        padding="none"
        class="grid grid-cols-5"
        inline
      >
        <span class="block p-2 space-y-5 col-span-3">
          <span class="font-semibold block">About Italy</span>
          <span class="block">
            Italy is located in the middle of the Mediterranean Sea, in Southern Europe,
            and it is also considered part of Western Europe. It is a unitary parliamentary
            republic with Rome as its capital and largest city.
          </span>
          <a href="/" class="block text-blue-400">Read more <.icon name="hero-link" /></a>
        </span>
        <img
          src="https://example.com/italy.png"
          class="h-full w-full col-span-2"
          alt="Map of Italy"
        />
      </:content>
    </.popover>
    has historically been home to myriad peoples and cultures. In addition to the various ancient peoples dispersed throughout what is now modern-day Italy, the most predominant being the Indo-European Italic peoples who gave the peninsula its name, beginning from the classical era, Phoenicians and Carthaginians founded colonies mostly in insular Italy.
  </p>

  <.popover clickable>
    <:trigger trigger_id="popover-2" class="text-blue-400">Hover or Click here</:trigger>
    <:content id="popover-2" color="light" rounded="large" padding="medium">
      <div class="p-4">
        <h4 class="text-lg font-semibold">Popover Title</h4>
        <p class="mt-2">This is a simple popover example with content that can be customized.</p>
      </div>
    </:content>
  </.popover>
  ```
  """
  @doc type: :component
  attr :id, :string,
    required: true,
    doc: "A unique identifier is used to manage state and interaction"

  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :inline, :boolean, default: false, doc: "Determines whether this element is inline"

  attr :clickable, :boolean,
    default: false,
    doc: "Determines if the element can be activated on click"

  attr :position, :string, default: "top", doc: "Determines the element position"
  attr :variant, :string, default: "base", doc: "Determines the style"
  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :rounded, :string, default: "", doc: "Determines the border radius"
  attr :show_arrow, :boolean, default: true, doc: "Show or hide arrow of popover"
  attr :border, :string, default: "extra_small", doc: "Determines border style"

  attr :size, :string,
    default: "",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :space, :string, default: "", doc: "Space between items"
  attr :width, :string, default: "extra_large", doc: "Determines the element width"
  attr :text_position, :string, default: "start", doc: "Determines the element's text position"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :padding, :string, default: "", doc: "Determines padding for items"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  slot :content, required: false do
    attr :class, :string, doc: "Custom CSS class for additional styling"
  end

  slot :trigger, required: false do
    attr :class, :string, doc: "Custom CSS class for additional styling"
  end

  def popover(assigns) do
    ~H"""
    <span
      :if={@inline}
      id={@id}
      class={[
        "inline-block relative w-fit",
        "[&_.popover-content]:invisible [&_.popover-content]:opacity-0",
        "[&_.popover-content.show-popover]:visible [&_.popover-content.show-popover]:opacity-100",
        !@clickable && trigger_popover(),
        @class
      ]}
      {@rest}
    >
      <span
        :for={trigger <- @trigger}
        phx-click={show_popover(@id)}
        phx-click-away={hide_popover(@id)}
        class={["inline-block cursor-pointer popover-trigger", trigger[:class]]}
        role="button"
        aria-haspopup="tooltip"
        id={"#{@id}-popover-trigger"}
        aria-expanded="false"
        aria-controls={"#{@id}-popover-content"}
        tabindex="0"
        {@rest}
      >
        {render_slot(trigger)}
      </span>

      <span
        :for={content <- @content}
        id={"#{@id}-popover-content"}
        role="tooltip"
        aria-labelledby={"#{@id}-popover-trigger"}
        tabindex="-1"
        class={[
          "popover-content absolute z-10 w-full",
          "transition-all ease-in-out delay-100 duration-500",
          space_class(@space),
          color_variant(@variant, @color),
          rounded_size(@rounded),
          size_class(@size),
          position_class(@position),
          text_position(@text_position),
          @variant == "bordered" || (@variant == "base" && border_class(@border)),
          width_class(@width),
          wrapper_padding(@padding),
          @font_weight,
          content[:class]
        ]}
        {@rest}
      >
        {render_slot(content)}
        <span
          :if={@show_arrow && @variant != "bordered" && @variant != "base"}
          class={["block absolute size-[8px] bg-inherit rotate-45 -z-[1] popover-arrow"]}
        >
        </span>
      </span>
      {render_slot(@inner_block)}
    </span>

    <div
      :if={!@inline}
      id={@id}
      class={[
        "relative w-fit",
        "[&_.popover-content]:invisible [&_.popover-content]:opacity-0",
        "[&_.popover-content.show-popover]:visible [&_.popover-content.show-popover]:opacity-100",
        !@clickable && trigger_popover(),
        @class
      ]}
      {@rest}
    >
      <div
        :for={trigger <- @trigger}
        phx-click={show_popover(@id)}
        phx-click-away={hide_popover(@id)}
        id={"#{@id}-popover-trigger"}
        class={["cursor-pointer popover-trigger", trigger[:class]]}
        role="button"
        aria-haspopup="tooltip"
        aria-expanded="false"
        aria-controls={"#{@id}-popover-content"}
        {@rest}
      >
        {render_slot(trigger)}
      </div>

      <div
        :for={content <- @content}
        role="tooltip"
        aria-labelledby={"#{@id}-popover-trigger"}
        tabindex="-1"
        id={"#{@id}-popover-content"}
        class={[
          "popover-content absolute z-10 w-full",
          "transition-all ease-in-out delay-100 duration-500",
          space_class(@space),
          color_variant(@variant, @color),
          rounded_size(@rounded),
          size_class(@size),
          position_class(@position),
          text_position(@text_position),
          @variant == "bordered" || (@variant == "base" && border_class(@border)),
          width_class(@width),
          wrapper_padding(@padding),
          @font_weight,
          content[:class]
        ]}
        {@rest}
      >
        {render_slot(content)}
        <span
          :if={@show_arrow && @variant != "bordered" && @variant != "base"}
          class={["block absolute size-[8px] bg-inherit rotate-45 -z-[1] popover-arrow"]}
        >
        </span>
      </div>
      {render_slot(@inner_block)}
    </div>
    """
  end

  @doc """
  Renders a `popover_trigger` element, which is used to show or hide a popover content element.
  The trigger can be rendered as either an inline or block element. When the trigger is clicked,
  it toggles the visibility of the associated popover content.

  ## Examples

  ```elixir
  <p>
    Discover more about
    <.popover_trigger trigger_id="popover-1" inline class="text-blue-400">Italy</.popover_trigger>
    by clicking on the name.
    <.popover_content
      id="popover-1"
      inline
      rounded="large"
      width="quadruple_large"
      color="light"
      padding="none"
      class="grid grid-cols-5"
    >
      <span class="block p-2 space-y-5 col-span-3">
        <span class="font-semibold block">About Italy</span>
        <span class="block">
          Italy is located in the middle of the Mediterranean Sea, in Southern Europe, and it is also considered part of Western Europe. It is a unitary parliamentary republic with Rome as its capital and largest city.
        </span>
        <a href="/" class="block text-blue-400">Read more <.icon name="hero-link" /></a>
      </span>
      <img
        src="https://flowbite.com/docs/images/popovers/italy.png"
        class="h-full w-full col-span-2"
        alt="Map of Italy"
      />
    </.popover_content>
  </p>

  <.popover_trigger trigger_id="popover-2" class="text-blue-400">
    Hover or Click here to show the popover
  </.popover_trigger>
  <.popover_content id="popover-2" color="light" rounded="large" padding="medium">
    <div class="p-4">
      <h4 class="text-lg font-semibold">Popover Title</h4>
      <p class="mt-2">This is a simple popover example with content that can be customized.</p>
    </div>
  </.popover_content>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :trigger_id, :string, required: true, doc: "Identifies what is the triggered element id"
  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :inline, :boolean, default: false, doc: "Determines whether this element is inline"
  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  def popover_trigger(%{inline: true} = assigns) do
    ~H"""
    <span
      id={"#{@trigger_id}-popover-trigger"}
      phx-click-away={@trigger_id && hide_popover(@trigger_id)}
      phx-click={@trigger_id && show_popover(@trigger_id)}
      class={["inline-block cursor-pointer popover-trigger", @class]}
      role="button"
      aria-haspopup="tooltip"
      aria-expanded="false"
      aria-controls={"#{@trigger_id}-popover-content"}
      tabindex="0"
      {@rest}
    >
      {render_slot(@inner_block)}
    </span>
    """
  end

  def popover_trigger(assigns) do
    ~H"""
    <div
      id={"#{@trigger_id}-popover-trigger"}
      phx-click-away={@trigger_id && hide_popover(@trigger_id)}
      phx-click={@trigger_id && show_popover(@trigger_id)}
      class={["cursor-pointer popover-trigger", @class]}
      role="button"
      aria-haspopup="tooltip"
      aria-expanded="false"
      aria-controls={"#{@trigger_id}-popover-content"}
      tabindex="0"
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  @doc """
  Renders a `popover_content` element, which displays additional information when the associated
  popover trigger is activated.

  The content can be positioned relative to the trigger and customized with various styles,
  such as color, padding, and size.

  ## Examples

  ```elixir
  <.popover_content id="popover-3" inline position="top" color="dark" rounded="small" padding="small">
    <span class="block text-white p-2">This is a tooltip message!</span>
  </.popover_content>
  ```
  """
  @doc type: :component
  attr :trigger_id, :string, required: true, doc: "Identifies what is the triggered element id"
  attr :inline, :boolean, default: false, doc: "Determines whether this element is inline"
  attr :position, :string, default: "top", doc: "Determines the element position"
  attr :variant, :string, default: "base", doc: "Determines the style"
  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :rounded, :string, default: "", doc: "Determines the border radius"
  attr :show_arrow, :boolean, default: true, doc: "Show or hide arrow of popover"
  attr :border, :string, default: "extra_small", doc: "Determines border style"

  attr :size, :string,
    default: "",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :space, :string, default: "", doc: "Space between items"
  attr :width, :string, default: "extra_large", doc: "Determines the element width"
  attr :text_position, :string, default: "start", doc: "Determines the element's text position"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :padding, :string, default: "", doc: "Determines padding for items"
  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def popover_content(%{inline: true} = assigns) do
    ~H"""
    <span
      role="tooltip"
      aria-labelledby={"#{@trigger_id}-popover-trigger"}
      tabindex="-1"
      id={"#{@trigger_id}-popover-content"}
      class={[
        "popover-content absolute z-10 w-full",
        "transition-all ease-in-out delay-100 duration-500",
        space_class(@space),
        color_variant(@variant, @color),
        rounded_size(@rounded),
        size_class(@size),
        position_class(@position),
        text_position(@text_position),
        @variant == "bordered" && border_class(@border),
        width_class(@width),
        wrapper_padding(@padding),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      <span
        :if={@show_arrow && @variant != "bordered" && @variant != "base"}
        class={["block absolute size-[8px] bg-inherit rotate-45 -z-[1] popover-arrow"]}
      >
      </span>
      {render_slot(@inner_block)}
    </span>
    """
  end

  def popover_content(assigns) do
    ~H"""
    <div
      role="tooltip"
      aria-labelledby={"#{@trigger_id}-popover-trigger"}
      tabindex="-1"
      id={"#{@trigger_id}-popover-content"}
      class={[
        "popover-content absolute z-10 w-full",
        "transition-all ease-in-out delay-100 duration-500",
        space_class(@space),
        color_variant(@variant, @color),
        rounded_size(@rounded),
        size_class(@size),
        position_class(@position),
        text_position(@text_position),
        @variant == "bordered" && border_class(@border),
        width_class(@width),
        wrapper_padding(@padding),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      <span
        :if={@show_arrow && @variant != "bordered" && @variant != "base"}
        class={["block absolute size-[8px] bg-inherit rotate-45 -z-[1] popover-arrow"]}
      >
      </span>
      {render_slot(@inner_block)}
    </div>
    """
  end

  defp show_popover(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.add_class("show-popover", to: "##{id}-popover-content")
    |> JS.set_attribute({"aria-expanded", "true"}, to: "##{id}-trigger")
  end

  defp hide_popover(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.remove_class("show-popover", to: "##{id}-popover-content")
    |> JS.set_attribute({"aria-expanded", "false"}, to: "##{id}-trigger")
  end

  defp trigger_popover(),
    do: "[&_.popover-content]:hover:visible [&_.popover-content]:hover:opacity-100"

  defp border_class("extra_small"), do: "border"

  defp border_class("small"), do: "border-2"

  defp border_class("medium"), do: "border-[3px]"

  defp border_class("large"), do: "border-4"

  defp border_class("extra_large"), do: "border-[5px]"

  defp border_class("none"), do: nil

  defp border_class(params) when is_binary(params), do: params

  defp rounded_size("extra_small"), do: "rounded-sm"

  defp rounded_size("small"), do: "rounded"

  defp rounded_size("medium"), do: "rounded-md"

  defp rounded_size("large"), do: "rounded-lg"

  defp rounded_size("extra_large"), do: "rounded-xl"

  defp rounded_size(params) when is_binary(params), do: params

  defp position_class("top") do
    [
      "bottom-full left-1/2 -translate-x-1/2 -translate-y-[6px]",
      "[&>.popover-arrow]:-bottom-[4px] [&>.popover-arrow]:-translate-x-1/2 [&>.popover-arrow]:left-1/2"
    ]
  end

  defp position_class("bottom") do
    [
      "top-full left-1/2 -translate-x-1/2 translate-y-[6px]",
      "[&>.popover-arrow]:-top-[4px] [&>.popover-arrow]:-translate-x-1/2 [&>.popover-arrow]:left-1/2"
    ]
  end

  defp position_class("left") do
    [
      "right-full top-1/2 -translate-y-1/2 -translate-x-[6px]",
      "[&>.popover-arrow]:-right-[4px] [&>.popover-arrow]:translate-y-1/2 [&>.popover-arrow]:top-1/3"
    ]
  end

  defp position_class("right") do
    [
      "left-full top-1/2 -translate-y-1/2 translate-x-[6px]",
      "[&>.popover-arrow]:-left-[4px] [&>.popover-arrow]:translate-y-1/2 [&>.popover-arrow]:top-1/3"
    ]
  end

  defp size_class("extra_small"), do: "text-xs max-w-60 [&_.popover-title-icon]:size-3"

  defp size_class("small"), do: "text-sm max-w-64 [&_.popover-title-icon]:size-3.5"

  defp size_class("medium"), do: "text-base max-w-72 [&_.popover-title-icon]:size-4"

  defp size_class("large"), do: "text-lg max-w-80 [&_.popover-title-icon]:size-5"

  defp size_class("extra_large"), do: "text-xl max-w-96 [&_.popover-title-icon]:size-6"

  defp size_class(params) when is_binary(params), do: params

  defp text_position("left"), do: "text-left"
  defp text_position("right"), do: "text-right"
  defp text_position("center"), do: "text-center"
  defp text_position("justify"), do: "text-justify"
  defp text_position("start"), do: "text-start"
  defp text_position("end"), do: "text-end"
  defp text_position(params) when is_binary(params), do: params

  defp width_class("extra_small"), do: "min-w-48"
  defp width_class("small"), do: "min-w-52"
  defp width_class("medium"), do: "min-w-56"
  defp width_class("large"), do: "min-w-60"
  defp width_class("extra_large"), do: "min-w-64"
  defp width_class("double_large"), do: "min-w-72"
  defp width_class("triple_large"), do: "min-w-80"
  defp width_class("quadruple_large"), do: "min-w-96"
  defp width_class(params) when is_binary(params), do: params

  defp wrapper_padding("extra_small") do
    "[&:has(.popover-section)>.popover-section]:p-1 [&:not(:has(.popover-section))]:p-1"
  end

  defp wrapper_padding("small") do
    "[&:has(.popover-section)>.popover-section]:p-2 [&:not(:has(.popover-section))]:p-2"
  end

  defp wrapper_padding("medium") do
    "[&:has(.popover-section)>.popover-section]:p-3 [&:not(:has(.popover-section))]:p-3"
  end

  defp wrapper_padding("large") do
    "[&:has(.popover-section)>.popover-section]:p-4 [&:not(:has(.popover-section))]:p-4"
  end

  defp wrapper_padding("extra_large") do
    "[&:has(.popover-section)>.popover-section]:p-5 [&:not(:has(.popover-section))]:p-5"
  end

  defp wrapper_padding(params) when is_binary(params), do: params

  defp space_class("extra_small"), do: "space-y-2"

  defp space_class("small"), do: "space-y-3"

  defp space_class("medium"), do: "space-y-4"

  defp space_class("large"), do: "space-y-5"

  defp space_class("extra_large"), do: "space-y-6"

  defp space_class(params) when is_binary(params), do: params

  defp color_variant("base", _) do
    [
      "bg-white text-base-text-light border-base-border-light shadow-sm",
      "dark:bg-base-bg-dark dark:text-base-text-dark dark:border-base-border-dark"
    ]
  end

  defp color_variant("default", "white") do
    ["bg-white text-black"]
  end

  defp color_variant("default", "dark") do
    ["bg-default-dark-bg text-white"]
  end

  defp color_variant("default", "natural") do
    [
      "bg-natural-light text-white dark:bg-natural-dark dark:text-black"
    ]
  end

  defp color_variant("default", "primary") do
    [
      "bg-primary-light text-white dark:bg-primary-dark dark:text-black"
    ]
  end

  defp color_variant("default", "secondary") do
    [
      "bg-secondary-light text-white dark:bg-secondary-dark dark:text-black"
    ]
  end

  defp color_variant("default", "success") do
    [
      "bg-success-light text-white dark:bg-success-dark dark:text-black"
    ]
  end

  defp color_variant("default", "warning") do
    [
      "bg-warning-light text-white dark:bg-warning-dark dark:text-black"
    ]
  end

  defp color_variant("default", "danger") do
    [
      "bg-danger-light text-white dark:bg-danger-dark dark:text-black"
    ]
  end

  defp color_variant("default", "info") do
    [
      "bg-info-light text-white dark:bg-info-dark dark:text-black"
    ]
  end

  defp color_variant("default", "misc") do
    [
      "bg-misc-light text-white dark:bg-misc-dark dark:text-black"
    ]
  end

  defp color_variant("default", "dawn") do
    [
      "bg-dawn-light text-white dark:bg-dawn-dark dark:text-black"
    ]
  end

  defp color_variant("default", "silver") do
    [
      "bg-silver-light text-white dark:bg-silver-dark dark:text-black"
    ]
  end

  defp color_variant("shadow", "natural") do
    [
      "bg-natural-light text-white dark:bg-natural-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-natural)] shadow-[0px_10px_15px_-3px_var(--color-shadow-natural)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "primary") do
    [
      "bg-primary-light text-white dark:bg-primary-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-primary)] shadow-[0px_10px_15px_-3px_var(--color-shadow-primary)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "secondary") do
    [
      "bg-secondary-light text-white dark:bg-secondary-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-secondary)] shadow-[0px_10px_15px_-3px_var(--color-shadow-secondary)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "success") do
    [
      "bg-success-light text-white dark:bg-success-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-success)] shadow-[0px_10px_15px_-3px_var(--color-shadow-success)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "warning") do
    [
      "bg-warning-light text-white dark:bg-warning-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-warning)] shadow-[0px_10px_15px_-3px_var(--color-shadow-warning)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "danger") do
    [
      "bg-danger-light text-white dark:bg-danger-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-danger)] shadow-[0px_10px_15px_-3px_var(--color-shadow-danger)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "info") do
    [
      "bg-info-light text-white dark:bg-info-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-info)] shadow-[0px_10px_15px_-3px_var(--color-shadow-info)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "misc") do
    [
      "bg-misc-light text-white dark:bg-misc-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-misc)] shadow-[0px_10px_15px_-3px_var(--color-shadow-misc)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "dawn") do
    [
      "bg-dawn-light text-white dark:bg-dawn-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-dawn)] shadow-[0px_10px_15px_-3px_var(--color-shadow-dawn)] dark:shadow-none"
    ]
  end

  defp color_variant("shadow", "silver") do
    [
      "bg-silver-light text-white dark:bg-silver-dark dark:text-black",
      "shadow-[0px_4px_6px_-4px_var(--color-shadow-silver)] shadow-[0px_10px_15px_-3px_var(--color-shadow-silver)] dark:shadow-none"
    ]
  end

  defp color_variant("bordered", "white") do
    [
      "bg-white text-black border-natural-dark"
    ]
  end

  defp color_variant("bordered", "dark") do
    [
      "bg-default-dark-bg text-white border-silver-hover-light"
    ]
  end

  defp color_variant("bordered", "natural") do
    [
      "text-natural-bordered-text-light border-natural-bordered-text-light bg-natural-bordered-bg-light",
      "dark:text-natural-bordered-text-dark dark:border-natural-bordered-text-dark dark:bg-natural-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "primary") do
    [
      "text-primary-bordered-text-light border-primary-bordered-text-light bg-primary-bordered-bg-light",
      "dark:text-primary-bordered-text-dark dark:border-primary-bordered-text-dark dark:bg-primary-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "secondary") do
    [
      "text-secondary-bordered-text-light border-secondary-bordered-text-light bg-secondary-bordered-bg-light",
      "dark:text-secondary-bordered-text-dark dark:border-secondary-bordered-text-dark dark:bg-secondary-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "success") do
    [
      "text-success-bordered-text-light border-success-bordered-text-light bg-success-bordered-bg-light",
      "dark:text-success-bordered-text-dark dark:border-success-bordered-text-dark dark:bg-success-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "warning") do
    [
      "text-warning-bordered-text-light border-warning-bordered-text-light bg-warning-bordered-bg-light",
      "dark:text-warning-bordered-text-dark dark:border-warning-bordered-text-dark dark:bg-warning-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "danger") do
    [
      "text-danger-bordered-text-light border-danger-bordered-text-light bg-danger-bordered-bg-light",
      "dark:text-danger-bordered-text-dark dark:border-danger-bordered-text-dark dark:bg-danger-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "info") do
    [
      "text-info-bordered-text-light border-info-bordered-text-light bg-info-bordered-bg-light",
      "dark:text-info-bordered-text-dark dark:border-info-bordered-text-dark dark:bg-info-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "misc") do
    [
      "text-misc-bordered-text-light border-misc-bordered-text-light bg-misc-bordered-bg-light",
      "dark:text-misc-bordered-text-dark dark:border-misc-bordered-text-dark dark:bg-misc-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "dawn") do
    [
      "text-dawn-bordered-text-light border-dawn-bordered-text-light bg-dawn-bordered-bg-light",
      "dark:text-dawn-bordered-text-dark dark:border-dawn-bordered-text-dark dark:bg-dawn-bordered-bg-dark"
    ]
  end

  defp color_variant("bordered", "silver") do
    [
      "text-silver-bordered-text-light border-silver-bordered-text-light bg-silver-bordered-bg-light",
      "dark:text-silver-bordered-text-dark dark:border-silver-bordered-text-dark dark:bg-silver-bordered-bg-dark"
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
end
