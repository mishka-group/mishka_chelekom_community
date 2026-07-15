defmodule CommunityDemoWeb.Components.MishkaTypography do
  @moduledoc """
  The `CommunityDemoWeb.Components.MishkaTypography` module provides components for rendering
  typographic elements in a Phoenix application.

  This module offers various components such as headings (h1 to h6), paragraphs, and other
  text-related HTML elements. Each component allows customization of attributes such
  as `id`, `color`, `size`, and `font_weight`, enabling developers to create styled
  text elements that align with the design requirements of their applications.

  The components are designed to work seamlessly with HEEx templates, supporting slots for
  rendering dynamic content.

  **Documentation:** https://mishka.tools/chelekom/docs/typography
  """
  use Phoenix.Component

  @doc """
  The `h1` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h1>Heading 1</.mishka_h1>
  <.mishka_h1 color="primary" size="large">Primary Heading 1</.mishka_h1>
  <.mishka_h1 class="custom-class" font_weight="font-bold">Bold Heading 1</.mishka_h1>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "quadruple_large",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  @spec mishka_h1(map()) :: Phoenix.LiveView.Rendered.t()
  def mishka_h1(assigns) do
    ~H"""
    <h1
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h1>
    """
  end

  @doc """
  The `h2` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h2>Heading 2</.mishka_h2>
  <.mishka_h2 color="primary" size="large">Primary Heading 2</.mishka_h2>
  <.mishka_h2 class="custom-class" font_weight="font-bold">Bold Heading 2</.mishka_h2>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "triple_large",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  @spec mishka_h2(map()) :: Phoenix.LiveView.Rendered.t()
  def mishka_h2(assigns) do
    ~H"""
    <h2
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h2>
    """
  end

  @doc """
  The `h1` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h3>Heading 3</.mishka_h3>
  <.mishka_h3 color="primary" size="large">Primary Heading 3</.mishka_h3>
  <.mishka_h3 class="custom-class" font_weight="font-bold">Bold Heading 3</.mishka_h3>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "double_large",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  @doc type: :component
  def mishka_h3(assigns) do
    ~H"""
    <h3
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h3>
    """
  end

  @doc """
  The `h4` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h4>Heading 4</.mishka_h4>
  <.mishka_h4 color="primary" size="large">Primary Heading 4</.mishka_h4>
  <.mishka_h4 class="custom-class" font_weight="font-bold">Bold Heading 4</.mishka_h4>
  ```
  """
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "extra_large",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  @doc type: :component
  def mishka_h4(assigns) do
    ~H"""
    <h4
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h4>
    """
  end

  @doc """
  The `h1` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h5>Heading 5</.mishka_h5>
  <.mishka_h5 color="primary" size="large">Primary Heading 5</.mishka_h5>
  <.mishka_h5 class="custom-class" font_weight="font-bold">Bold Heading 5</.mishka_h5>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "large",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_h5(assigns) do
    ~H"""
    <h5
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h5>
    """
  end

  @doc """
  The `h6` component renders a large header text with customizable size, color, and other styling options.
  It is used to display primary headings in your layout.

  ## Examples

  ```elixir
  <.mishka_h6>Heading 6</.mishka_h6>
  <.mishka_h6 color="primary" size="large">Primary Heading 6</.mishka_h6>
  <.mishka_h6 class="custom-class" font_weight="font-bold">Bold Heading 6</.mishka_h6>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_h6(assigns) do
    ~H"""
    <h6
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </h6>
    """
  end

  @doc """
  The `p` component is used to render a paragraph with customizable size, color, and other
  styling options.

  It helps in displaying regular text content within your layout.

  ## Examples

  ```elixir
  <.mishka_p>Here is the paragraph.</.mishka_p>
  <.mishka_p color="primary" size="large">This is a primary colored paragraph with a larger size.</.mishka_p>
  <.mishka_p><.mishka_strong>This is Strong</.mishka_strong></.mishka_p>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_p(assigns) do
    ~H"""
    <p
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </p>
    """
  end

  @doc """
  The `strong` component is used to emphasize important text by rendering it in a bold style.

  It allows customization of color, size, and additional styles.

  ## Examples

  ```elixir
  <.mishka_strong>This is Strong</.mishka_strong>
  <.mishka_strong color="primary" size="large">
    This is a primary colored strong text with a larger size.
  </.mishka_strong>
  <.mishka_strong class="custom-class">This is strong text with custom styling.</.mishka_strong>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-bold",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_strong(assigns) do
    ~H"""
    <strong
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </strong>
    """
  end

  @doc """
  The `em` component is used to emphasize text, rendering it in italics to indicate importance or stress.

  It allows customization of color, size, and additional styles.

  ## Examples

  ```elixir
  <.mishka_p><.mishka_em>This is Em</.mishka_em></.mishka_p>

  <.mishka_em color="primary" size="large">
    This is emphasized text with a primary color and larger size.
  </.mishka_em>

  <.mishka_em class="custom-class">
    This is emphasized text with custom styling.
  </.mishka_em>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_em(assigns) do
    ~H"""
    <em
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </em>
    """
  end

  @doc """
  The `dl` component represents a description list, typically used for name-value pairs such as
  terms and definitions. It can be styled with custom colors, sizes, and other attributes.

  ## Examples

  ```elixir
  <.dl>
    <.mishka_dt>Coffee</.mishka_dt>
    <.mishka_dd>Black hot drink</.mishka_dd>
    <.mishka_dt>Milk</.mishka_dt>
    <.mishka_dd>White cold drink</.mishka_dd>
  </.dl>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_dl(assigns) do
    ~H"""
    <dl
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </dl>
    """
  end

  @doc """
  The `dt` component represents a term or name in a description list (`dl`). It is typically used in
  conjunction with the `dd` component to display a description or definition for the term.

  ## Examples

  ```elixir
  <.mishka_dt>Coffee</.mishka_dt>
  <.mishka_dd>Black hot drink</.mishka_dd>
  <.mishka_dt>Milk</.mishka_dt>
  <.mishka_dd>White cold drink</.mishka_dd>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-bold",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_dt(assigns) do
    ~H"""
    <dt
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </dt>
    """
  end

  @doc """
  The `dd` component represents the description or definition of a term in a description
  list (`dl`).

  It is typically used with the `dt` component to create a complete term-description structure.

  ## Examples

  ```elixir
  <.dl>
    <.mishka_dt>Coffee</.mishka_dt>
    <.mishka_dd>Black hot drink</.mishka_dd>
    <.mishka_dt>Milk</.mishka_dt>
    <.mishka_dd>White cold drink</.mishka_dd>
  </.dl>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_dd(assigns) do
    ~H"""
    <dd
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </dd>
    """
  end

  @doc """
  The `figure` component is used to group content, such as an image and its caption,
  as a single unit.

  It is typically used in conjunction with the `figcaption` component to provide a caption
  or description for the content.

  ## Examples

  ```elixir
  <.mishka_figure>
    <.mishka_p>Content of Figure</.mishka_p>

    <.mishka_figcaption>
      Someone famous in <cite title="Source Title">Source Title</cite>
    </.mishka_figcaption>
  </.mishka_figure>

  <.mishka_figure size="large" color="secondary">
    <img src="https://example.com/image.jpg" alt="Example image" />
    <.mishka_figcaption>
      A beautiful scenery captured during summer.
    </.mishka_figcaption>
  </.mishka_figure>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_figure(assigns) do
    ~H"""
    <figure
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </figure>
    """
  end

  @doc """
  The `figcaption` component is used to add a caption or description to a `figure` element.

  It is typically placed inside a `figure` component to provide context or credit for
  the enclosed content, such as an image or illustration.

  ## Examples

  ```elixir
  <.mishka_figcaption>
    Someone famous in <cite title="Source Title">Source Title</cite>
  </.mishka_figcaption>

  <.mishka_figure>
    <img src="https://example.com/image.jpg" alt="Example image" />
    <.mishka_figcaption>
      A beautiful scenery captured during summer.
    </.mishka_figcaption>
  </.mishka_figure>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_figcaption(assigns) do
    ~H"""
    <figcaption
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </figcaption>
    """
  end

  @doc """
  The `abbr` component is used to display an abbreviation or acronym, providing a way to
  define or explain the shortened text using the `title` attribute.

  ## Examples

  ```elixir
  <.mishka_abbr title="HyperText Markup Language">HTML</.mishka_abbr>

  <.mishka_p>
    The standard language for creating web pages is
    <.mishka_abbr title="HyperText Markup Language">HTML</.mishka_abbr>.
  </.mishka_p>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_abbr(assigns) do
    ~H"""
    <abbr
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </abbr>
    """
  end

  @doc """
  The `mark` component is used to highlight text, typically by applying a background color to
  the wrapped content.

  ## Examples

  ```elixir
  <.mishka_p><.mishka_mark>This is highlighted text</.mishka_mark> inside a paragraph.</.mishka_p>

  <.mishka_mark>Highlighted text with default styles.</.mishka_mark>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any,
    default: "p-0.5 bg-rose-200",
    doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_mark(assigns) do
    ~H"""
    <mark
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </mark>
    """
  end

  @doc """
  The `small` component is used for rendering small-sized text with various
  styling options such as color, size, and weight.

  ## Examples

  ```elixir
  <.mishka_small>This is small text</.mishka_small>

  <.mishka_small color="primary" font_weight="font-bold">This is bold primary small text</.mishka_small>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_small(assigns) do
    ~H"""
    <small
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </small>
    """
  end

  @doc """
  The `s` component is used to render text with a strikethrough style, representing
  content that is no longer relevant or accurate.

  ## Examples

  ```elixir
  <.mishka_p><.mishka_s>This is strikethrough text</.mishka_s></.mishka_p>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_s(assigns) do
    ~H"""
    <s
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </s>
    """
  end

  @doc """
  The `u` component is used to underline text content.

  It allows customization through attributes such as color, size, and font weight.

  ## Examples

  ```elixir
  <.mishka_p><.mishka_u>This is u</.mishka_u></.mishka_p>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_u(assigns) do
    ~H"""
    <u
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </u>
    """
  end

  @doc """
  The `cite` component is used to reference the title of a work or to indicate a citation.
  It allows customization through attributes such as color, size, and font weight.

  ## Examples

  ```elixir
  <.mishka_p>
    <.mishka_cite>
      Source Title
    </.mishka_cite>
  </.mishka_p>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_cite(assigns) do
    ~H"""
    <cite
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </cite>
    """
  end

  @doc """
  The `del` component is used to represent text that has been deleted or marked for removal.

  It supports attributes for customizing color, size, and font weight.

  ## Examples

  ```elixir
  <.mishka_del>This text is marked for deletion.</.mishka_del>
  ```
  """
  @doc type: :component
  attr :id, :string,
    default: nil,
    doc: "A unique identifier is used to manage state and interaction"

  attr :color, :string, default: "inherit", doc: "Determines color theme"

  attr :size, :string,
    default: "medium",
    doc:
      "Determines the overall size of the elements, including padding, font size, and other items"

  attr :class, :any, default: nil, doc: "Custom CSS class for additional styling"

  attr :font_weight, :string,
    default: "font-normal",
    doc: "Determines custom class for the font weight"

  attr :rest, :global,
    doc:
      "Global attributes can define defaults which are merged with attributes provided by the caller"

  slot :inner_block, required: true, doc: "Inner block that renders HEEx content"

  def mishka_del(assigns) do
    ~H"""
    <del
      id={@id}
      class={[
        color(@color),
        size_class(@size),
        @font_weight,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </del>
    """
  end

  defp color("base"), do: "text-base-text-light dark:text-base-text-dark"

  defp color("white"), do: "text-white"

  defp color("natural"), do: "text-natural-light dark:text-natural-dark"

  defp color("primary"), do: "text-primary-light dark:text-primary-dark"

  defp color("secondary"), do: "text-secondary-light dark:text-secondary-dark"

  defp color("success"), do: "text-success-light dark:text-success-dark"

  defp color("warning"), do: "text-warning-light dark:text-warning-dark"

  defp color("danger"), do: "text-danger-light dark:text-danger-dark"

  defp color("info"), do: "text-info-light dark:text-info-dark"

  defp color("misc"), do: "text-misc-light dark:text-misc-dark"

  defp color("dawn"), do: "text-dawn-light dark:text-dawn-dark"

  defp color("silver"), do: "text-silver-light dark:text-silver-dark"

  defp color("dark"), do: "text-default-dark-bg"

  defp color("inherit"), do: "text-inherit"

  defp color(params) when is_binary(params), do: params

  defp size_class("extra_small"), do: "text-xs"

  defp size_class("small"), do: "text-sm"

  defp size_class("medium"), do: "text-base"

  defp size_class("large"), do: "text-lg"

  defp size_class("extra_large"), do: "text-xl"

  defp size_class("double_large"), do: "text-2xl"

  defp size_class("triple_large"), do: "text-3xl"

  defp size_class("quadruple_large"), do: "text-4xl"

  defp size_class(params) when is_binary(params), do: params
end
