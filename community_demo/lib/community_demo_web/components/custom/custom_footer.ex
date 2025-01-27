defmodule CommunityDemoWeb.Components.CustomFooter do
  use Phoenix.Component

  @doc type: :component
  attr :title, :string
  attr :logo_link, :string
  attr :products, :string
  attr :services, :string

  def custom_footer(assigns) do
    ~H"""
    <footer class="footer-custom-component dark:text-[#f6f6f6] text-[13px] text-center">
      <div class="max-w-5xl mx-auto px-5 py-4 space-y-2 border-t border-[#505050]">
        <p>© 2025 Mishka. All rights reserved.</p>

        <div class="text-[#535353] dark:text-[#cacfd2]">
          <span class="cursor-pointer group">
            <span>Based in Netherlands</span><svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              fill="currentColor"
              class="size-4 ms-1 -mt-0.5 inline-block group-hover:text-rose-600 transition-all duration-75"
            >
              <path d="m11.645 20.91-.007-.003-.022-.012a15.247 15.247 0 0 1-.383-.218 25.18 25.18 0 0 1-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0 1 12 5.052 5.5 5.5 0 0 1 16.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 0 1-4.244 3.17 15.247 15.247 0 0 1-.383.219l-.022.012-.007.004-.003.001a.752.752 0 0 1-.704 0l-.003-.001Z" />
            </svg>
          </span>
        </div>
      </div>
    </footer>
    """
  end
end
