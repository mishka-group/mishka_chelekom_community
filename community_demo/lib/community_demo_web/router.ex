defmodule CommunityDemoWeb.Router do
  use CommunityDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {CommunityDemoWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CommunityDemoWeb do
    pipe_through :browser

    live "/", HomeLive
  end

  scope "/demo/community", CommunityDemoWeb.Demo.Community do
    pipe_through(:browser)

    live "/cards", CardsLive
    live "/alerts", AlertsLive
    live "/tabs", TabsLive
    live "/forms", FormsLive
    live "/carousel", CarouselLive
    live "/chats", ChatsLive
    live "/drawer", DrawerLive
    live "/tables", TablesLive
    live "/toast", ToastLive
    live "/timeline", TimelineLive
    live "/stepper", StepperLive
    live "/accordion", AccordionLive
    live "/avatars", AvatarsLive
    live "/video", VideoLive
    live "/skeleton", SkeletonLive
    live "/ratings", RatingsLive
    live "/badges", BadgesLive
    live "/dropdown", DropdownLive
    live "/jumbotron", JumbotronLive
    live "/breadcrumb", BreadcrumbLive
    live "/paginations", PaginationsLive
    live "/tooltips", TooltipsLive
    live "/popovers", PopoversLive
    live "/progress", ProgressLive
    live "/spinner", SpinnerLive
    live "/banner", BannerLive
    live "/blockquote", BlockquoteLive
    live "/divider", DividerLive
    live "/mega-menu", MegaMenuLive
    live "/typography", TypographyLive
    live "/footer", FooterLive
    live "/lists", ListsLive
    live "/overlays", OverlaysLive
    live "/indicators", IndicatorsLive
    live "/images", ImagesLive
    live "/keyboars", KeyboardsLive
    live "/speed-dials", SpeedDialsLive
    live "/device-mockups", DeviceMockupsLive
    live "/table-contents", TableContentsLive
    live "/sidebar", SidebarLive
    live "/navbar", NavbarLive
    live "/menu", MenuLive
    live "/modal", ModalLive
    live "/buttons", ButtonsLive
    live "/gallery", GalleryLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", CommunityDemoWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:community_demo, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: CommunityDemoWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
