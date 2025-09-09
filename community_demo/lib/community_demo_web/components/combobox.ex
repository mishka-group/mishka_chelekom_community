defmodule CommunityDemoWeb.Components.Combobox do
  @moduledoc """
  The `CommunityDemoWeb.Components.Combobox` is a Phoenix LiveView component module for creating customizable combobox elements.

  This module provides components to display combobox/select inputs with various styles, colors,
  sizes, and configurations. The main component, `combobox/1`, acts as a container for select options,
  and allows users to search, filter and select items from a dropdown list.

  The combobox component supports features like:
  - Search filtering of options
  - Single and multiple selection modes
  - Custom option rendering
  - Keyboard navigation
  - Accessibility support
  """

  use Phoenix.Component
  use Gettext, backend: CommunityDemoWeb.Gettext
  import CommunityDemoWeb.Components.ScrollArea, only: [scroll_area: 1]
  import Phoenix.LiveView.Utils, only: [random_id: 0]
  import CommunityDemoWeb.Components.Icon, only: [icon: 1]

  @doc """
  The `combobox` component is a customizable select/dropdown element with advanced features
  such as searchable options, multiple selection, and grouped items.

  It supports various customization options including:
  - Searchable options with filter functionality
  - Single or multiple selection modes
  - Option grouping with labels
  - Custom styling with color themes and variants
  - Accessibility features with ARIA attributes
  - Responsive dropdown with scrollable area
  - Form field integration
  - Custom placeholders and descriptions
  - Start section slots for icons or additional content


   ## Example usage:
    <.combobox
      options={@options}
      placeholder="Select an option"
      on_change="handle_selection"
    />
    # Single selection with options
    <.combobox placeholder="Select an item">
      <:option value="Item 1">First Item</:option>
      <:option value="Item 2">Second Item</:option>
      <:option value="Item 3">Third Item</:option>
    </.combobox>

    # With grouped options
    <.combobox placeholder="Select a fruit">
      <:option group="Citrus" value="orange">Orange</:option>
      <:option group="Citrus" value="lemon">Lemon</:option>
      <:option group="Berries" value="strawberry">Strawberry</:option>
      <:option group="Berries" value="blueberry">Blueberry</:option>
    </.combobox>

    # With disabled options
    <.combobox placeholder="Select an option">
      <:option value="available">Available Option</:option>
      <:option value="disabled" disabled>Disabled Option</:option>
      <:option value="another">Another Option</:option>
    </.combobox>

    # Multiple selection with custom rendering
    <.combobox multiple searchable placeholder="Select fruits">
      <:option value="apple">
        <div class="flex items-center gap-2">
          <span>🍎</span>
          <span>Apple</span>
        </div>
      </:option>
      <:option value="banana">
        <div class="flex items-center gap-2">
          <span>🍌</span>
          <span>Banana</span>
        </div>
      </:option>
    </.combobox>
  ```
  """

  @doc type: :component
  attr :id, :any, default: nil, doc: "A unique identifier is used to manage state and interaction"
  attr :name, :any, doc: "Name of input"
  attr :label, :string, default: nil
  attr :value, :any, doc: "Value of input"
  attr :field, Phoenix.HTML.FormField, doc: "a form field struct retrieved from the form"

  attr :options, :list, doc: "the options to pass to Phoenix.HTML.Form.options_for_select/2"
  attr :errors, :list, default: [], doc: "List of error messages to be displayed"

  attr :class, :string, default: nil, doc: "Custom CSS class for additional styling"
  attr :placeholder, :string, default: nil, doc: "Placeholder of field"
  attr :description_class, :string, default: "text-[12px]", doc: "Custom classes for description"
  attr :label_class, :string, default: nil, doc: "Custom CSS class for the label styling"
  attr :field_wrapper_class, :string, default: nil, doc: "Custom CSS class field wrapper"
  attr :option_group_class, :string, default: nil, doc: "Custom CSS class option group"

  attr :description_wrapper_class, :string,
    default: nil,
    doc: "Custom classes for description wrapper"

  attr :search_placeholder, :string,
    default: "Search..",
    doc: "Custom CSS class for additional styling"

  attr :color, :string, default: "natural", doc: "Determines color theme"
  attr :variant, :string, default: "base", doc: "Determines variant theme"
  attr :border, :string, default: "extra_small", doc: "Determines border style"
  attr :rounded, :string, default: "medium", doc: "Radius size"
  attr :space, :string, default: "extra_small", doc: "Space between elements"
  attr :padding, :string, default: "small", doc: "Padding size"
  attr :height, :string, default: "h-fit max-h-40", doc: "Dropdown height"
  attr :description, :string, default: nil, doc: "Determines a short description"
  attr :searchable, :boolean, default: false, doc: "Enables search functionality in the combobox"
  attr :multiple, :boolean, default: false, doc: "Multiple selections in the combobox"

  slot :start_section, required: false, doc: "Renders heex content in start of an element" do
    attr :class, :string, doc: "Custom CSS class for additional styling"
    attr :icon, :string, doc: "Icon displayed alongside of an item"
  end

  attr :size, :string,
    default: "small",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  slot :option, required: false do
    attr :value, :string, required: true, doc: "Value of the select option"
    attr :class, :string, doc: "Value of the select option"
    attr :group, :string, required: false, doc: "Group name for the option"
    attr :disabled, :boolean, required: false, doc: "Specifies if this option is disabled"
  end

  attr :rest, :global,
    include: ~w(accept autocomplete capture cols disabled form list max maxlength min minlength
                multiple pattern placeholder readonly required rows size step),
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  def combobox(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
    errors = if Phoenix.Component.used_input?(field), do: field.errors, else: []

    assigns
    |> assign(field: nil, id: assigns.id || field.id)
    |> assign(:errors, Enum.map(errors, &translate_error(&1)))
    |> assign_new(:name, fn -> if assigns.multiple, do: field.name <> "[]", else: field.name end)
    |> assign_new(:value, fn -> field.value end)
    |> combobox()
  end

  def combobox(%{multiple: true} = assigns) do
    assigns =
      assigns
      |> assign_new(:id, fn -> "combo-#{random_id()}" end)
      |> assign_new(:options, fn -> [] end)
      |> assign_new(:option, fn -> [] end)
      |> assign_new(:value, fn -> Map.get(assigns, :value, []) end)

    ~H"""
    <div class={[
      "leading-5",
      border_class(@border, @variant),
      color_variant(@variant, @color),
      rounded_size(@rounded),
      padding_size(@padding),
      size_class(@size),
      space_class(@space)
    ]}>
      <div
        :if={@label || @description}
        class={["combobox-label-wrapper", @description_wrapper_class]}
      >
        <.label :if={@label} for={@id} class={@label_class}>{@label}</.label>
        <div :if={@description} class={@description_class}>
          {@description}
        </div>
      </div>

      <div phx-hook="Combobox" data-multiple={@multiple} id={"#{@id}-combo"}>
        <input type="hidden" name={@name} />
        <select id={@id} name={@name} multiple class="combo-select hidden" {@rest}>
          <option value=""></option>

          <%= if Enum.empty?(@option) do %>
            {Phoenix.HTML.Form.options_for_select(@options, @value)}
          <% else %>
            <optgroup
              :for={{group_label, grouped_options} <- Enum.group_by(@option, & &1[:group])}
              :if={!is_nil(group_label)}
              label={group_label}
            >
              {Phoenix.HTML.Form.options_for_select(
                Enum.map(grouped_options, fn option -> {option[:value], option[:value]} end),
                @value
              )}
            </optgroup>

            {!Enum.any?(@option, &Map.has_key?(&1, :group)) &&
              Phoenix.HTML.Form.options_for_select(
                Enum.map(@option, fn %{value: v} -> {v, v} end),
                @value
              )}
          <% end %>
        </select>

        <div phx-update="ignore" id={"#{@id}-combo-wrapper"} class="relative">
          <button
            class="combobox-trigger w-full text-start py-1 flex items-center justify-between focus:outline-none border"
            role="combobox"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-controls={"#{@id}-listbox"}
            aria-labelledby={"#{@id}-label #{@id}-button"}
            type="button"
          >
            <div class="flex-1 flex items-center gap-2">
              <div
                :if={@start_section != []}
                class={[
                  "shrink-0",
                  @start_section[:class]
                ]}
              >
                {render_slot(@start_section)}
              </div>

              <div :if={@placeholder} class="combobox-placeholder select-none">
                {@placeholder}
              </div>

              <div
                data-part="select-toggle-label"
                class={[
                  "selected-value flex flex-wrap items-center gap-2 [&_.combobox-pill]:py-0.5",
                  "[&_.combobox-pill]:px-1 [&_.combobox-pill]:leading-4"
                ]}
              >
              </div>
            </div>

            <div class="flex items-center gap-1">
              <div class="shrink-0" data-part="clear-combobox-button" role="button" hidden>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  class="size-3.5 opacity-60"
                >
                  <path d="M18 6 6 18" /><path d="m6 6 12 12" />
                </svg>
              </div>

              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="shrink-0 combobox-icon"
              >
                <path d="m7 15 5 5 5-5" /><path d="m7 9 5-5 5 5" />
              </svg>
            </div>
          </button>

          <div
            id={"#{@id}-listbox"}
            role="listbox"
            data-part="listbox"
            aria-multiselectable={@multiple}
            class="combobox-dropdown z-50 absolute w-full px-[3px] py-2 transition-all ease-out duration-[250ms] top-full mt-2"
            hidden
          >
            <div :if={@searchable} class="mt-1 mb-2 mx-1.5">
              <input
                type="text"
                role="searchbox"
                aria-controls={"#{@id}-listbox"}
                aria-autocomplete="list"
                aria-activedescendant=""
                aria-label={@search_placeholder}
                class="combobox-search-input appearance-none bg-transparent px-2 py-1 w-full focus:outline-none"
                placeholder={@search_placeholder}
              />
            </div>

            <.scroll_area
              id={"combobox-wrapper-#{@id}"}
              padding="none"
              height={@height}
              scrollbar_width="w-[4px]"
            >
              <div class="px-1.5">
                <.option :for={{label, value} <- @options} :if={@options} value={value}>
                  {label}
                </.option>

                <div
                  :for={{group_label, grouped_options} <- Enum.group_by(@option, & &1[:group])}
                  :if={!is_nil(group_label)}
                  class={["option-group", @option_group_class]}
                >
                  <div class="group-label font-semibold my-2">{group_label}</div>

                  <div>
                    <.option
                      :for={option <- grouped_options}
                      value={option[:value]}
                      disabled={option[:disabled]}
                      class={option[:class]}
                    >
                      {render_slot(option)}
                    </.option>
                  </div>
                </div>

                <.option
                  :for={option <- Enum.filter(@option, &is_nil(&1[:group]))}
                  value={option[:value]}
                  disabled={option[:disabled]}
                  class={option[:class]}
                >
                  {render_slot(option)}
                </.option>

                <div :if={@searchable} class="no-results text-center hidden">
                  {gettext("Nothing found!")}
                </div>
              </div>
            </.scroll_area>
          </div>
        </div>
      </div>

      <.error :for={msg <- @errors}>{msg}</.error>
    </div>
    """
  end

  def combobox(assigns) do
    assigns =
      assigns
      |> assign_new(:id, fn -> "combo-#{random_id()}" end)
      |> assign_new(:options, fn -> [] end)
      |> assign_new(:option, fn -> [] end)
      |> assign_new(:value, fn -> Map.get(assigns, :value) end)

    ~H"""
    <div class={[
      "leading-5",
      border_class(@border, @variant),
      color_variant(@variant, @color),
      rounded_size(@rounded),
      padding_size(@padding),
      size_class(@size),
      space_class(@space)
    ]}>
      <div
        :if={@label || @description}
        class={["combobox-label-wrapper", @description_wrapper_class]}
      >
        <.label :if={@label} for={@id} class={@label_class}>{@label}</.label>
        <div :if={@description} class={@description_class}>
          {@description}
        </div>
      </div>

      <div phx-hook="Combobox" id={"#{@id}-combo"}>
        <select id={@id} name={@name} class="combo-select hidden" {@rest}>
          <option value=""></option>

          <%= if Enum.empty?(@option) do %>
            {Phoenix.HTML.Form.options_for_select(@options, @value)}
          <% else %>
            <optgroup
              :for={{group_label, grouped_options} <- Enum.group_by(@option, & &1[:group])}
              :if={!is_nil(group_label)}
              label={group_label}
            >
              {Phoenix.HTML.Form.options_for_select(
                Enum.map(grouped_options, fn option -> {option[:value], option[:value]} end),
                @value
              )}
            </optgroup>

            {!Enum.any?(@option, &Map.has_key?(&1, :group)) &&
              Phoenix.HTML.Form.options_for_select(
                Enum.map(@option, fn %{value: v} -> {v, v} end),
                @value
              )}
          <% end %>
        </select>

        <div id={"#{@id}-combo-wrapper"} class="relative" phx-update="ignore">
          <button
            class="combobox-trigger w-full text-start py-1 flex items-center justify-between focus:outline-none border"
            role="combobox"
            aria-haspopup="listbox"
            aria-expanded="false"
            aria-controls={"#{@id}-listbox"}
            aria-labelledby={"#{@id}-label #{@id}-button"}
            type="button"
          >
            <div id={"#{@id}-select-toggle-label"} class="flex-1 flex items-center gap-2">
              <div
                :if={@start_section != []}
                class={[
                  "shrink-0",
                  @start_section[:class]
                ]}
              >
                {render_slot(@start_section)}
              </div>

              <div :if={@placeholder} class="combobox-placeholder select-none">
                {@placeholder}
              </div>

              <div data-part="select-toggle-label" class="selected-value"></div>
            </div>

            <div class="flex items-center gap-1">
              <div class="shrink-0" data-part="clear-combobox-button" role="button" hidden>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  class="size-3.5 opacity-60"
                >
                  <path d="M18 6 6 18" /><path d="m6 6 12 12" />
                </svg>
              </div>

              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="shrink-0 combobox-icon"
              >
                <path d="m7 15 5 5 5-5" /><path d="m7 9 5-5 5 5" />
              </svg>
            </div>
          </button>

          <div
            id={"#{@id}-listbox"}
            role="listbox"
            data-part="listbox"
            class="combobox-dropdown z-50 absolute w-full px-[3px] py-2 transition-all ease-out duration-[250ms] top-full mt-2"
            hidden
          >
            <div :if={@searchable} class="mt-1 mb-2 mx-1.5">
              <input
                type="text"
                role="searchbox"
                aria-controls={"#{@id}-listbox"}
                aria-autocomplete="list"
                aria-activedescendant=""
                aria-label={@search_placeholder}
                class="combobox-search-input appearance-none bg-transparent px-2 py-1 w-full focus:outline-none"
                data-part="search"
                placeholder={@search_placeholder}
              />
            </div>

            <.scroll_area
              id={"combobox-wrapper-#{@id}"}
              padding="none"
              height={@height}
              scrollbar_width="w-[4px]"
            >
              <div class="px-1.5">
                <.option :for={{label, value} <- @options} :if={@options} value={value}>
                  {label}
                </.option>

                <div
                  :for={{group_label, grouped_options} <- Enum.group_by(@option, & &1[:group])}
                  :if={!is_nil(group_label)}
                  class={["option-group", @option_group_class]}
                >
                  <div class="group-label font-semibold my-2">{group_label}</div>

                  <div>
                    <.option
                      :for={option <- grouped_options}
                      value={option[:value]}
                      disabled={option[:disabled]}
                      class={option[:class]}
                    >
                      {render_slot(option)}
                    </.option>
                  </div>
                </div>

                <.option
                  :for={option <- Enum.filter(@option, &is_nil(&1[:group]))}
                  value={option[:value]}
                  disabled={option[:disabled]}
                  class={option[:class]}
                >
                  {render_slot(option)}
                </.option>

                <div :if={@searchable} class="no-results text-center hidden">
                  {gettext("Nothing found!")}
                </div>
              </div>
            </.scroll_area>
          </div>
        </div>
      </div>

      <.error :for={msg <- @errors}>{msg}</.error>
    </div>
    """
  end

  @doc type: :component
  attr :value, :string, required: true, doc: "Specifies the form which is associated with"
  attr :disabled, :boolean, default: false, doc: "Inner block that renders HEEx content"
  attr :class, :string, default: nil, doc: "Custom class"
  slot :inner_block, required: false, doc: "Inner block that renders HEEx content"

  defp option(assigns) do
    ~H"""
    <div
      role="option"
      class={[
        "combobox-option cursor-pointer rounded flex justify-between items-center",
        "[&[data-combobox-navigate]]:bg-blue-500 [&[data-combobox-navigate]]:text-white",
        @class
      ]}
      data-combobox-value={@value}
    >
      {render_slot(@inner_block)}
      <svg
        class="hidden [[data-combobox-selected]_&]:block shrink-0 w-3.5 h-3.5 combobox-icon"
        fill="none"
        viewBox="0 0 24 24"
      >
        <path
          stroke="currentColor"
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M20 6 9 17l-5-5"
        >
        </path>
      </svg>
    </div>
    """
  end

  attr :id, :string, default: nil, doc: "Unique identifier"
  attr :for, :string, default: nil, doc: "Specifies the form which is associated with"
  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"
  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  defp label(assigns) do
    ~H"""
    <label for={@for} class={["leading-5 font-semibold", @class]} id={@id}>
      {render_slot(@inner_block)}
    </label>
    """
  end

  attr :icon, :string, default: nil, doc: "Icon displayed alongside of an item"
  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  defp error(assigns) do
    ~H"""
    <p class="mt-3 flex items-center gap-3 text-[14px] text-rose-700">
      <.icon :if={!is_nil(@icon)} name={@icon} class="shrink-0" /> {render_slot(@inner_block)}
    </p>
    """
  end

  defp size_class("extra_small") do
    [
      "[&_.combobox-trigger]:min-h-7 [&_.combobox-icon]:size-3 text-[12px]",
      "[&_.combobox-search-input]:h-6 [&_.combobox-search-input]:text-[12px]"
    ]
  end

  defp size_class("small") do
    [
      "[&_.combobox-trigger]:min-h-8 [&_.combobox-icon]:size-3.5 text-[13px]",
      "[&_.combobox-search-input]:h-7 [&_.combobox-search-input]:text-[13px]"
    ]
  end

  defp size_class("medium") do
    [
      "[&_.combobox-trigger]:min-h-9 [&_.combobox-icon]:size-4 text-[14px]",
      "[&_.combobox-search-input]:h-8 [&_.combobox-search-input]:text-[14px]"
    ]
  end

  defp size_class("large") do
    [
      "[&_.combobox-trigger]:min-h-10 [&_.combobox-icon]:size-[18px] text-[15px]",
      "[&_.combobox-search-input]:h-9 [&_.combobox-search-input]:text-[15px]"
    ]
  end

  defp size_class("extra_large") do
    [
      "[&_.combobox-trigger]:min-h-11 [&_.combobox-icon]:size-5 text-[16px]",
      "[&_.combobox-search-input]:h-10 [&_.combobox-search-input]:text-[16px]"
    ]
  end

  defp size_class(params) when is_binary(params), do: params

  defp rounded_size("extra_small") do
    [
      "[&_.combobox-trigger]:rounded-sm [&_.combobox-dropdown]:rounded-sm",
      "[&_.combobox-pill]:rounded-[0.0625rem] [&_.combobox-search-input]:rounded-sm"
    ]
  end

  defp rounded_size("small") do
    [
      "[&_.combobox-trigger]:rounded [&_.combobox-dropdown]:rounded",
      "[&_.combobox-pill]:rounded-[0.13rem] [&_.combobox-search-input]:rounded"
    ]
  end

  defp rounded_size("medium") do
    [
      "[&_.combobox-trigger]:rounded-md [&_.combobox-dropdown]:rounded-md",
      "[&_.combobox-pill]:rounded-[0.19rem] [&_.combobox-search-input]:rounded-md"
    ]
  end

  defp rounded_size("large") do
    [
      "[&_.combobox-trigger]:rounded-lg [&_.combobox-dropdown]:rounded-lg",
      "[&_.combobox-pill]:rounded-[0.3rem] [&_.combobox-search-input]:rounded-lg"
    ]
  end

  defp rounded_size("extra_large") do
    [
      "[&_.combobox-trigger]:rounded-xl [&_.combobox-dropdown]:rounded-xl",
      "[&_.combobox-pill]:rounded-[0.313rem] [&_.combobox-search-input]:rounded-xl"
    ]
  end

  defp rounded_size("full") do
    [
      "[&_.combobox-trigger]:rounded-full [&_.combobox-dropdown]:rounded-full",
      "[&_.combobox-pill]:rounded-full [&_.combobox-search-input]:rounded-full"
    ]
  end

  defp rounded_size("none"), do: nil

  defp rounded_size(params) when is_binary(params), do: params

  defp border_class(_, variant) when variant in ["default"],
    do: nil

  defp border_class("none", _), do: nil

  defp border_class("extra_small", _),
    do: "[&_.combobox-trigger]:border [&_.combobox-dropdown]:border"

  defp border_class("small", _),
    do: "[&_.combobox-trigger]:border-2 [&_.combobox-dropdown]:border-2"

  defp border_class("medium", _),
    do: "[&_.combobox-trigger]:border-[3px] [&_.combobox-dropdown]:border-[3px]"

  defp border_class("large", _),
    do: "[&_.combobox-trigger]:border-4 [&_.combobox-dropdown]:border-4"

  defp border_class("extra_large", _),
    do: "[&_.combobox-trigger]:border-[5px] [&_.combobox-dropdown]:border-[5px]"

  defp border_class(params, _) when is_binary(params), do: params

  defp padding_size("extra_small") do
    ["[&_.combobox-trigger]:px-2 [&_.combobox-option]:px-2", "[&_.combobox-option]:py-0.5"]
  end

  defp padding_size("small") do
    ["[&_.combobox-trigger]:px-3 [&_.combobox-option]:px-3", "[&_.combobox-option]:py-1"]
  end

  defp padding_size("medium") do
    ["[&_.combobox-trigger]:px-4 [&_.combobox-option]:px-4", "[&_.combobox-option]:py-1.5"]
  end

  defp padding_size("large") do
    ["[&_.combobox-trigger]:px-5 [&_.combobox-option]:px-5", "[&_.combobox-option]:py-2"]
  end

  defp padding_size("extra_large") do
    ["[&_.combobox-trigger]:px-6 [&_.combobox-option]:px-6", "[&_.combobox-option]:py-2.5"]
  end

  defp padding_size(params) when is_binary(params), do: params

  defp space_class("extra_small"), do: "space-y-2 [&_.combobox-label-wrapper]:space-y-1"
  defp space_class("small"), do: "space-y-3 [&_.combobox-label-wrapper]:space-y-2"
  defp space_class("medium"), do: "space-y-4 [&_.combobox-label-wrapper]:space-y-3"
  defp space_class("large"), do: "space-y-5 [&_.combobox-label-wrapper]:space-y-4"
  defp space_class("extra_large"), do: "space-y-6 [&_.combobox-label-wrapper]:space-y-5"
  defp space_class("none"), do: nil
  defp space_class(params) when is_binary(params), do: params

  defp color_variant("base", _) do
    [
      "[&_.combobox-trigger]:bg-white text-black [&_.combobox-trigger]:border-base-border-light [&_.combobox-trigger]:shadow-sm",
      "dark:[&_.combobox-trigger]:bg-base-bg-dark dark:text-base-text-dark dark:[&_.combobox-trigger]:border-base-border-dark",
      "[&_.combobox-dropdown]:bg-white [&_.combobox-dropdown]:border-base-border-light",
      "dark:[&_.combobox-dropdown]:bg-base-bg-dark dark:[&_.combobox-dropdown]:border-base-border-dark",
      "[&_.combobox-option:not([data-combobox-navigate])]:hover:bg-base-border-light [&_.combobox-option:not([data-combobox-navigate])]:hover:text-black",
      "dark:[&_.combobox-option:not([data-combobox-navigate])]:hover:bg-base-border-dark dark:[&_.combobox-option:not([data-combobox-navigate])]:hover:text-base-text-dark",
      "[&_.combobox-search-input]:border-base-border-light dark:[&_.combobox-search-input]:border-base-border-dark",
      "[&_.combobox-pill]:text-black [&_.combobox-pill]:bg-base-border-light",
      "[&_.combobox-dropdown]:shadow"
    ]
  end

  defp color_variant("default", "natural") do
    [
      "[&_.combobox-trigger]:bg-natural-bg-dark text-white dark:[&_.combobox-trigger]:bg-natural-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-natural-bg-dark dark:[&_.combobox-dropdown]:bg-natural-hover-dark",
      "[&_.combobox-option]:hover:bg-natural-hover-light dark:[&_.combobox-option]:hover:bg-natural-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-natural-hover-light dark:[&_.combobox-pill]:bg-natural-hover-dark"
    ]
  end

  defp color_variant("default", "primary") do
    [
      "[&_.combobox-trigger]:bg-primary-light text-white dark:[&_.combobox-trigger]:bg-primary-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-primary-light dark:[&_.combobox-dropdown]:bg-primary-dark",
      "[&_.combobox-option]:hover:bg-primary-hover-light dark:[&_.combobox-option]:hover:bg-primary-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-primary-hover-light dark:[&_.combobox-pill]:bg-primary-hover-dark"
    ]
  end

  defp color_variant("default", "secondary") do
    [
      "[&_.combobox-trigger]:bg-secondary-light text-white dark:[&_.combobox-trigger]:bg-secondary-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-secondary-light dark:[&_.combobox-dropdown]:bg-secondary-dark",
      "[&_.combobox-option]:hover:bg-secondary-hover-light dark:[&_.combobox-option]:hover:bg-secondary-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-secondary-hover-light dark:[&_.combobox-pill]:bg-secondary-hover-dark"
    ]
  end

  defp color_variant("default", "success") do
    [
      "[&_.combobox-trigger]:bg-success-light text-white dark:[&_.combobox-trigger]:bg-success-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-success-light dark:[&_.combobox-dropdown]:bg-success-dark",
      "[&_.combobox-option]:hover:bg-success-hover-light dark:[&_.combobox-option]:hover:bg-success-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-success-hover-light dark:[&_.combobox-pill]:bg-success-hover-dark"
    ]
  end

  defp color_variant("default", "warning") do
    [
      "[&_.combobox-trigger]:bg-warning-light text-white dark:[&_.combobox-trigger]:bg-warning-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-warning-light dark:[&_.combobox-dropdown]:bg-warning-dark",
      "[&_.combobox-option]:hover:bg-warning-hover-light dark:[&_.combobox-option]:hover:bg-warning-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-warning-hover-light dark:[&_.combobox-pill]:bg-warning-hover-dark"
    ]
  end

  defp color_variant("default", "danger") do
    [
      "[&_.combobox-trigger]:bg-danger-light text-white dark:[&_.combobox-trigger]:bg-danger-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-danger-light dark:[&_.combobox-dropdown]:bg-danger-dark",
      "[&_.combobox-option]:hover:bg-danger-hover-light dark:[&_.combobox-option]:hover:bg-danger-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-danger-hover-light dark:[&_.combobox-pill]:bg-danger-hover-dark"
    ]
  end

  defp color_variant("default", "info") do
    [
      "[&_.combobox-trigger]:bg-info-light text-white dark:[&_.combobox-trigger]:bg-info-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-info-light dark:[&_.combobox-dropdown]:bg-info-dark",
      "[&_.combobox-option]:hover:bg-info-hover-light dark:[&_.combobox-option]:hover:bg-info-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-info-hover-light dark:[&_.combobox-pill]:bg-info-hover-dark"
    ]
  end

  defp color_variant("default", "misc") do
    [
      "[&_.combobox-trigger]:bg-misc-light text-white dark:[&_.combobox-trigger]:bg-misc-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-misc-light dark:[&_.combobox-dropdown]:bg-misc-dark",
      "[&_.combobox-option]:hover:bg-misc-hover-light dark:[&_.combobox-option]:hover:bg-misc-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-misc-hover-light dark:[&_.combobox-pill]:bg-misc-hover-dark"
    ]
  end

  defp color_variant("default", "dawn") do
    [
      "[&_.combobox-trigger]:bg-dawn-light text-white dark:[&_.combobox-trigger]:bg-dawn-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-dawn-light dark:[&_.combobox-dropdown]:bg-dawn-dark",
      "[&_.combobox-option]:hover:bg-dawn-hover-light dark:[&_.combobox-option]:hover:bg-dawn-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-dawn-hover-light dark:[&_.combobox-pill]:bg-dawn-hover-dark"
    ]
  end

  defp color_variant("default", "silver") do
    [
      "[&_.combobox-trigger]:bg-silver-light text-white dark:[&_.combobox-trigger]:bg-silver-dark dark:text-black",
      "[&_.combobox-dropdown]:bg-silver-light dark:[&_.combobox-dropdown]:bg-silver-dark",
      "[&_.combobox-option]:hover:bg-silver-hover-light dark:[&_.combobox-option]:hover:bg-silver-hover-dark",
      "[&_.combobox-search-input]:border-white dark:[&_.combobox-search-input]:border-black",
      "[&_.combobox-search-input]:text-white dark:[&_.combobox-search-input]:text-black",
      "[&_.combobox-search-input]:placeholder-white dark:[&_.combobox-search-input]:placeholder-black",
      "[&_.combobox-pill]:bg-silver-hover-light dark:[&_.combobox-pill]:bg-silver-hover-dark"
    ]
  end

  defp color_variant("bordered", "natural") do
    [
      "text-natural-bordered-text-light [&_.combobox-trigger]:border-natural-border-light [&_.combobox-trigger]:bg-natural-bordered-bg-light",
      "dark:text-natural-bordered-text-dark dark:[&_.combobox-trigger]:border-natural-border-dark dark:[&_.combobox-trigger]:bg-natural-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-natural-bordered-bg-light [&_.combobox-dropdown]:border-natural-border-light",
      "dark:[&_.combobox-dropdown]:bg-natural-bordered-bg-dark dark:[&_.combobox-dropdown]:border-natural-border-dark",
      "[&_.combobox-option]:hover:bg-natural-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-natural-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-natural-border-light dark:[&_.combobox-search-input]:border-natural-border-dark",
      "[&_.combobox-search-input]:text-natural-bordered-text-light dark:[&_.combobox-search-input]:text-natural-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-natural-bordered-text-light dark:[&_.combobox-search-input]:placeholder-natural-bordered-text-dark",
      "[&_.combobox-pill]:bg-natural-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-natural-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "primary") do
    [
      "text-primary-bordered-text-light [&_.combobox-trigger]:border-primary-bordered-text-light [&_.combobox-trigger]:bg-primary-bordered-bg-light",
      "dark:text-primary-bordered-text-dark dark:[&_.combobox-trigger]:border-primary-bordered-text-dark dark:[&_.combobox-trigger]:bg-primary-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-primary-bordered-bg-light [&_.combobox-dropdown]:border-primary-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-primary-bordered-bg-dark dark:[&_.combobox-dropdown]:border-primary-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-primary-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-primary-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-primary-bordered-text-light dark:[&_.combobox-search-input]:border-primary-bordered-text-dark",
      "[&_.combobox-search-input]:text-primary-bordered-text-light dark:[&_.combobox-search-input]:text-primary-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-primary-bordered-text-light dark:[&_.combobox-search-input]:placeholder-primary-bordered-text-dark",
      "[&_.combobox-pill]:bg-primary-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-primary-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "secondary") do
    [
      "text-secondary-bordered-text-light [&_.combobox-trigger]:border-secondary-bordered-text-light [&_.combobox-trigger]:bg-secondary-bordered-bg-light",
      "dark:text-secondary-bordered-text-dark dark:[&_.combobox-trigger]:border-secondary-bordered-text-dark dark:[&_.combobox-trigger]:bg-secondary-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-secondary-bordered-bg-light [&_.combobox-dropdown]:border-secondary-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-secondary-bordered-bg-dark dark:[&_.combobox-dropdown]:border-secondary-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-secondary-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-secondary-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-secondary-bordered-text-light dark:[&_.combobox-search-input]:border-secondary-bordered-text-dark",
      "[&_.combobox-search-input]:text-secondary-bordered-text-light dark:[&_.combobox-search-input]:text-secondary-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-secondary-bordered-text-light dark:[&_.combobox-search-input]:placeholder-secondary-bordered-text-dark",
      "[&_.combobox-pill]:bg-secondary-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-secondary-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "success") do
    [
      "text-success-bordered-text-light [&_.combobox-trigger]:border-success-bordered-text-light [&_.combobox-trigger]:bg-success-bordered-bg-light",
      "dark:text-success-bordered-text-dark dark:[&_.combobox-trigger]:border-success-bordered-text-dark dark:[&_.combobox-trigger]:bg-success-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-success-bordered-bg-light [&_.combobox-dropdown]:border-success-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-success-bordered-bg-dark dark:[&_.combobox-dropdown]:border-success-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-success-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-success-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-success-bordered-text-light dark:[&_.combobox-search-input]:border-success-bordered-text-dark",
      "[&_.combobox-search-input]:text-success-bordered-text-light dark:[&_.combobox-search-input]:text-success-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-success-bordered-text-light dark:[&_.combobox-search-input]:placeholder-success-bordered-text-dark",
      "[&_.combobox-pill]:bg-success-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-success-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "warning") do
    [
      "text-warning-bordered-text-light [&_.combobox-trigger]:border-warning-bordered-text-light [&_.combobox-trigger]:bg-warning-bordered-bg-light",
      "dark:text-warning-bordered-text-dark dark:[&_.combobox-trigger]:border-warning-bordered-text-dark dark:[&_.combobox-trigger]:bg-warning-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-warning-bordered-bg-light [&_.combobox-dropdown]:border-warning-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-warning-bordered-bg-dark dark:[&_.combobox-dropdown]:border-warning-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-warning-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-warning-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-warning-bordered-text-light dark:[&_.combobox-search-input]:border-warning-bordered-text-dark",
      "[&_.combobox-search-input]:text-warning-bordered-text-light dark:[&_.combobox-search-input]:text-warning-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-warning-bordered-text-light dark:[&_.combobox-search-input]:placeholder-warning-bordered-text-dark",
      "[&_.combobox-pill]:bg-warning-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-warning-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "danger") do
    [
      "text-danger-bordered-text-light [&_.combobox-trigger]:border-danger-bordered-text-light [&_.combobox-trigger]:bg-danger-bordered-bg-light",
      "dark:text-danger-bordered-text-dark dark:[&_.combobox-trigger]:border-danger-bordered-text-dark dark:[&_.combobox-trigger]:bg-danger-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-danger-bordered-bg-light [&_.combobox-dropdown]:border-danger-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-danger-bordered-bg-dark dark:[&_.combobox-dropdown]:border-danger-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-danger-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-danger-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-danger-bordered-text-light dark:[&_.combobox-search-input]:border-danger-bordered-text-dark",
      "[&_.combobox-search-input]:text-danger-bordered-text-light dark:[&_.combobox-search-input]:text-danger-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-danger-bordered-text-light dark:[&_.combobox-search-input]:placeholder-danger-bordered-text-dark",
      "[&_.combobox-pill]:bg-danger-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-danger-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "info") do
    [
      "text-info-bordered-text-light [&_.combobox-trigger]:border-info-bordered-text-light [&_.combobox-trigger]:bg-info-bordered-bg-light",
      "dark:text-info-bordered-text-dark dark:[&_.combobox-trigger]:border-info-bordered-text-dark dark:[&_.combobox-trigger]:bg-info-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-info-bordered-bg-light [&_.combobox-dropdown]:border-info-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-info-bordered-bg-dark dark:[&_.combobox-dropdown]:border-info-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-info-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-info-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-info-bordered-text-light dark:[&_.combobox-search-input]:border-info-bordered-text-dark",
      "[&_.combobox-search-input]:text-info-bordered-text-light dark:[&_.combobox-search-input]:text-info-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-info-bordered-text-light dark:[&_.combobox-search-input]:placeholder-info-bordered-text-dark",
      "[&_.combobox-pill]:bg-info-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-info-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "misc") do
    [
      "text-misc-bordered-text-light [&_.combobox-trigger]:border-misc-bordered-text-light [&_.combobox-trigger]:bg-misc-bordered-bg-light",
      "dark:text-misc-bordered-text-dark dark:[&_.combobox-trigger]:border-misc-bordered-text-dark dark:[&_.combobox-trigger]:bg-misc-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-misc-bordered-bg-light [&_.combobox-dropdown]:border-misc-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-misc-bordered-bg-dark dark:[&_.combobox-dropdown]:border-misc-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-misc-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-misc-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-misc-bordered-text-light dark:[&_.combobox-search-input]:border-misc-bordered-text-dark",
      "[&_.combobox-search-input]:text-misc-bordered-text-light dark:[&_.combobox-search-input]:text-misc-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-misc-bordered-text-light dark:[&_.combobox-search-input]:placeholder-misc-bordered-text-dark",
      "[&_.combobox-pill]:bg-misc-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-misc-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "dawn") do
    [
      "text-dawn-bordered-text-light [&_.combobox-trigger]:border-dawn-bordered-text-light [&_.combobox-trigger]:bg-dawn-bordered-bg-light",
      "dark:text-dawn-bordered-text-dark dark:[&_.combobox-trigger]:border-dawn-bordered-text-dark dark:[&_.combobox-trigger]:bg-dawn-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-dawn-bordered-bg-light [&_.combobox-dropdown]:border-dawn-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-dawn-bordered-bg-dark dark:[&_.combobox-dropdown]:border-dawn-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-dawn-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-dawn-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-dawn-bordered-text-light dark:[&_.combobox-search-input]:border-dawn-bordered-text-dark",
      "[&_.combobox-search-input]:text-dawn-bordered-text-light dark:[&_.combobox-search-input]:text-dawn-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-dawn-bordered-text-light dark:[&_.combobox-search-input]:placeholder-dawn-bordered-text-dark",
      "[&_.combobox-pill]:bg-dawn-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-dawn-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant("bordered", "silver") do
    [
      "text-silver-bordered-text-light [&_.combobox-trigger]:border-silver-bordered-text-light [&_.combobox-trigger]:bg-silver-bordered-bg-light",
      "dark:text-silver-bordered-text-dark dark:[&_.combobox-trigger]:border-silver-bordered-text-dark dark:[&_.combobox-trigger]:bg-silver-bordered-bg-dark",
      "[&_.combobox-dropdown]:bg-silver-bordered-bg-light [&_.combobox-dropdown]:border-silver-bordered-text-light",
      "dark:[&_.combobox-dropdown]:bg-silver-bordered-bg-dark dark:[&_.combobox-dropdown]:border-silver-bordered-text-dark",
      "[&_.combobox-option]:hover:bg-silver-hover-light [&_.combobox-option]:hover:text-white",
      "dark:[&_.combobox-option]:hover:bg-silver-hover-dark dark:[&_.combobox-option]:hover:text-black",
      "[&_.combobox-search-input]:border-silver-bordered-text-light dark:[&_.combobox-search-input]:border-silver-bordered-text-dark",
      "[&_.combobox-search-input]:text-silver-bordered-text-light dark:[&_.combobox-search-input]:text-silver-bordered-text-dark",
      "[&_.combobox-search-input]:placeholder-silver-bordered-text-light dark:[&_.combobox-search-input]:placeholder-silver-bordered-text-dark",
      "[&_.combobox-pill]:bg-silver-hover-light [&_.combobox-pill]:text-white",
      "dark:[&_.combobox-pill]:bg-silver-hover-dark dark:[&_.combobox-pill]:text-black"
    ]
  end

  defp color_variant(params, _) when is_binary(params), do: params

  defp translate_error({msg, opts}) do
    # When using gettext, we typically pass the strings we want
    # to translate as a static argument:
    #
    #     # Translate the number of files with plural rules
    #     dngettext("errors", "1 file", "%{count} files", count)
    #
    # However the error messages in our forms and APIs are generated
    # dynamically, so we need to translate them by calling Gettext
    # with our gettext backend as first argument. Translations are
    # available in the errors.po file (as we use the "errors" domain).
    if count = opts[:count] do
      Gettext.dngettext(CommunityDemoWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(CommunityDemoWeb.Gettext, "errors", msg, opts)
    end
  end
end
