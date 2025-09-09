defmodule CommunityDemoWeb.Components.Tooltip do
  @moduledoc """
  A Tooltip CommunityDemoWeb.Components.Tooltip module for use in Phoenix applications.

  This component allows you to display informative text when the user hovers over or focuses on an element.
  It supports various customization options, including position, color themes, and sizes, allowing for
  flexible integration within your UI.

  ## Features

  - Customizable tooltip position (top, bottom, left, right).
  - Multiple color variants and styles for different contexts.
  - Adjustable size and padding to fit design requirements.
  - Support for additional CSS classes to further customize appearance.

  Use this component to enhance user experience by providing contextual information without cluttering the interface.
  """
  use Phoenix.Component

  @doc """
  The `tooltip` component is used to display additional information when users hover over an element.

  It provides a small box with text or content and is positioned around the target
  element based on the specified `position`.

  ## Examples

  ```elixir
  <.tooltip text="This is text" position="bottom">
    <button class="p-2 bg-orange-700">
      This is Tooltip a long text for bottom tooltip
    </button>
  </.tooltip>

  <.tooltip text="This is text" color="warning" position="left">
    <button class="p-2 bg-orange-700">This is Tooltip left</button>
  </.tooltip>

  <.tooltip text="Delete" color="light" position="left">
    <button class="p-2 bg-red-500 text-white">
      <.icon name="hero-trash" />
    </button>
  </.tooltip>

  <.tooltip text="This is text" color="dark" position="right">
    <button class="p-2 bg-orange-700">This is Tooltip right</button>
  </.tooltip>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :position, :string, default: "top", doc: "Determines the element position"
  attr :variant, :string, default: "base", doc: "Determines the style"
  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :rounded, :string, default: "", doc: "Determines the border radius"
  attr :border, :string, default: "extra_small", doc: "Determines border style"
  attr :show_arrow, :boolean, default: true, doc: "Show or hide arrow of popover"

  attr :size, :string,
    default: "",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :space, :string, default: "", doc: "Space between items"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :width, :string, default: "fit", doc: "Determines the element width"
  attr :wrapper_width, :string, default: "w-fit", doc: "Determines the parent element width"
  attr :wrapper_class, :string, default: "w-fit", doc: "Determines the parent element class"
  attr :arrow_class, :string, default: nil, doc: "Determines arrow class"
  attr :padding, :string, default: "small", doc: "Determines padding for items"
  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :text_position, :string, default: "center", doc: "Determines the element's text position"
  attr :text, :string, default: "", doc: "Determines element's text"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  def tooltip(assigns) do
    ~H"""
    <span class={["relative group", @wrapper_width, @wrapper_class]}>
      {render_slot(@inner_block)}
      <span
        role="tooltip"
        id={@id}
        class={[
          "absolute z-10 transition-all ease-in-out delay-100 duration-500 w-full",
          "invisible opacity-0 group-hover:visible group-hover:opacity-100",
          space_class(@space),
          color_variant(@variant, @color),
          rounded_size(@rounded),
          size_class(@size),
          padding_size(@padding),
          @variant == "bordered" || (@variant == "base" && border_class(@border)),
          position_class(@position),
          text_position(@text_position),
          width_class(@width),
          @font_weight,
          @class
        ]}
        {@rest}
      >
        <span
          :if={@show_arrow && @variant != "bordered" && @variant != "base"}
          class={["block absolute size-[8px] bg-inherit rotate-45 -z-[1] tooltip-arrow", @arrow_class]}
        >
        </span>
        {@text}
      </span>
    </span>
    """
  end

  defp rounded_size("extra_small"), do: "rounded-sm"

  defp rounded_size("small"), do: "rounded"

  defp rounded_size("medium"), do: "rounded-md"

  defp rounded_size("large"), do: "rounded-lg"

  defp rounded_size("extra_large"), do: "rounded-xl"

  defp rounded_size(params) when is_binary(params), do: params

  defp position_class("top") do
    [
      "bottom-full left-1/2 -translate-x-1/2 -translate-y-[4px]",
      "[&>.tooltip-arrow]:-bottom-[4px] [&>.tooltip-arrow]:-translate-x-1/2 [&>.tooltip-arrow]:left-1/2"
    ]
  end

  defp position_class("bottom") do
    [
      "top-full left-1/2 -translate-x-1/2 translate-y-[4px]",
      "[&>.tooltip-arrow]:-top-[4px] [&>.tooltip-arrow]:-translate-x-1/2 [&>.tooltip-arrow]:left-1/2"
    ]
  end

  defp position_class("left") do
    [
      "right-full top-1/2 -translate-y-1/2 -translate-x-[6px]",
      "[&>.tooltip-arrow]:-right-[4px] [&>.tooltip-arrow]:translate-y-1/2 [&>.tooltip-arrow]:top-1/3"
    ]
  end

  defp position_class("right") do
    [
      "left-full top-1/2 -translate-y-1/2 translate-x-[6px]",
      "[&>.tooltip-arrow]:-left-[4px] [&>.tooltip-arrow]:translate-y-1/2 [&>.tooltip-arrow]:top-1/3"
    ]
  end

  defp border_class("extra_small"), do: "border"

  defp border_class("small"), do: "border-2"

  defp border_class("medium"), do: "border-[3px]"

  defp border_class("large"), do: "border-4"

  defp border_class("extra_large"), do: "border-[5px]"

  defp border_class("none"), do: nil

  defp border_class(params) when is_binary(params), do: params

  defp size_class("extra_small"), do: "text-xs max-w-40"

  defp size_class("small"), do: "text-sm max-w-44"

  defp size_class("medium"), do: "text-base max-w-48"

  defp size_class("large"), do: "text-lg max-w-28"

  defp size_class("extra_large"), do: "text-xl max-w-32"

  defp size_class(params) when is_binary(params), do: params

  defp text_position("left"), do: "text-left"
  defp text_position("right"), do: "text-right"
  defp text_position("center"), do: "text-center"
  defp text_position("justify"), do: "text-justify"
  defp text_position("start"), do: "text-start"
  defp text_position("end"), do: "text-end"
  defp text_position(_), do: text_position("center")

  defp width_class("extra_small"), do: "min-w-28"
  defp width_class("small"), do: "min-w-32"
  defp width_class("medium"), do: "min-w-36"
  defp width_class("large"), do: "min-w-40"
  defp width_class("extra_large"), do: "min-w-44"
  defp width_class("double_large"), do: "min-w-48"
  defp width_class("triple_large"), do: "min-w-52"
  defp width_class("quadruple_large"), do: "min-w-56"
  defp width_class("fit"), do: "min-w-fit"
  defp width_class(params) when is_binary(params), do: params

  defp padding_size("extra_small"), do: "p-1"

  defp padding_size("small"), do: "p-2"

  defp padding_size("medium"), do: "p-3"

  defp padding_size("large"), do: "p-4"

  defp padding_size("extra_large"), do: "p-5"

  defp padding_size("none"), do: "p-0"

  defp padding_size(params) when is_binary(params), do: params

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
      "bg-white text-black border-bordered-white-border"
    ]
  end

  defp color_variant("bordered", "dark") do
    [
      "bg-bordered-dark-bg text-white border-bordered-dark-border"
    ]
  end

  defp color_variant("bordered", "natural") do
    [
      "text-natural-bordered-text-light border-natural-bordered-text-light bg-natural-bordered-bg-light",
      "dark:text-natural-bordered-text-dark dark:border-natural--bordered-text-dark dark:bg-natural-bordered-bg-dark"
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
