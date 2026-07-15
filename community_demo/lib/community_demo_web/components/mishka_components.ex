defmodule CommunityDemoWeb.Components.MishkaComponents do
  defmacro __using__(_) do
    quote do
      import CommunityDemoWeb.Components.MishkaAccordion, only: [mishka_accordion: 1]

      import CommunityDemoWeb.Components.MishkaAlert,
        only: [
          mishka_flash: 1,
          mishka_alert: 1,
          show_alert: 1,
          show_alert: 2,
          hide_alert: 1,
          hide_alert: 2
        ]

      import CommunityDemoWeb.Components.MishkaAvatar,
        only: [mishka_avatar: 1, mishka_avatar_group: 1]

      import CommunityDemoWeb.Components.MishkaBadge,
        only: [mishka_badge: 1, hide_badge: 1, hide_badge: 2, show_badge: 1, show_badge: 2]

      import CommunityDemoWeb.Components.MishkaBanner,
        only: [mishka_banner: 1, show_banner: 1, show_banner: 2, hide_banner: 1, hide_banner: 2]

      import CommunityDemoWeb.Components.MishkaBlockquote, only: [mishka_blockquote: 1]
      import CommunityDemoWeb.Components.MishkaBreadcrumb, only: [mishka_breadcrumb: 1]

      import CommunityDemoWeb.Components.MishkaButton,
        only: [
          mishka_button_group: 1,
          mishka_button: 1,
          mishka_input_button: 1,
          mishka_button_link: 1,
          mishka_back: 1
        ]

      import CommunityDemoWeb.Components.MishkaCard,
        only: [
          mishka_card: 1,
          mishka_card_title: 1,
          mishka_card_media: 1,
          mishka_card_content: 1,
          mishka_card_footer: 1
        ]

      import CommunityDemoWeb.Components.MishkaCarousel, only: [mishka_carousel: 1]

      import CommunityDemoWeb.Components.MishkaChat,
        only: [mishka_chat: 1, mishka_chat_section: 1]

      import CommunityDemoWeb.Components.MishkaCheckboxCard,
        only: [mishka_checkbox_card: 1, checkbox_card_check: 3]

      import CommunityDemoWeb.Components.MishkaCheckboxField,
        only: [mishka_checkbox_field: 1, mishka_group_checkbox: 1, checkbox_check: 3]

      import CommunityDemoWeb.Components.MishkaClipboard, only: [mishka_clipboard: 1]
      import CommunityDemoWeb.Components.MishkaCollapse, only: [mishka_collapse: 1]
      import CommunityDemoWeb.Components.MishkaColorField, only: [mishka_color_field: 1]
      import CommunityDemoWeb.Components.MishkaCombobox, only: [mishka_combobox: 1]
      import CommunityDemoWeb.Components.MishkaDateTimeField, only: [mishka_date_time_field: 1]
      import CommunityDemoWeb.Components.MishkaDeviceMockup, only: [mishka_device_mockup: 1]
      import CommunityDemoWeb.Components.MishkaDivider, only: [mishka_divider: 1, mishka_hr: 1]
      import CommunityDemoWeb.Components.MishkaDock, only: [mishka_dock: 1]

      import CommunityDemoWeb.Components.MishkaDrawer,
        only: [mishka_drawer: 1, hide_drawer: 2, hide_drawer: 3, show_drawer: 2, show_drawer: 3]

      import CommunityDemoWeb.Components.MishkaDropdown,
        only: [mishka_dropdown: 1, mishka_dropdown_trigger: 1, mishka_dropdown_content: 1]

      import CommunityDemoWeb.Components.MishkaEmailField, only: [mishka_email_field: 1]
      import CommunityDemoWeb.Components.MishkaFieldset, only: [mishka_fieldset: 1]
      import CommunityDemoWeb.Components.MishkaFileField, only: [mishka_file_field: 1]

      import CommunityDemoWeb.Components.MishkaFooter,
        only: [mishka_footer: 1, mishka_footer_section: 1]

      import CommunityDemoWeb.Components.MishkaFormWrapper,
        only: [mishka_form_wrapper: 1, mishka_simple_form: 1]

      import CommunityDemoWeb.Components.MishkaGallery,
        only: [mishka_gallery: 1, mishka_gallery_media: 1, mishka_filterable_gallery: 1]

      import CommunityDemoWeb.Components.MishkaIcon, only: [mishka_icon: 1]
      import CommunityDemoWeb.Components.MishkaImage, only: [mishka_image: 1]
      import CommunityDemoWeb.Components.MishkaIndicator, only: [mishka_indicator: 1]
      import CommunityDemoWeb.Components.MishkaInputField, only: [mishka_input: 1, error: 1]
      import CommunityDemoWeb.Components.MishkaJumbotron, only: [mishka_jumbotron: 1]
      import CommunityDemoWeb.Components.MishkaKeyboard, only: [mishka_keyboard: 1]
      import CommunityDemoWeb.Components.MishkaLayout, only: [mishka_flex: 1, mishka_grid: 1]

      import CommunityDemoWeb.Components.MishkaList,
        only: [mishka_list: 1, mishka_li: 1, mishka_ul: 1, mishka_ol: 1, mishka_list_group: 1]

      import CommunityDemoWeb.Components.MishkaMegaMenu, only: [mishka_mega_menu: 1]
      import CommunityDemoWeb.Components.MishkaMenu, only: [mishka_menu: 1]

      import CommunityDemoWeb.Components.MishkaModal,
        only: [
          mishka_modal: 1,
          show_modal: 1,
          show_modal: 2,
          hide_modal: 1,
          hide_modal: 2,
          show: 1,
          show: 2,
          hide: 1,
          hide: 2
        ]

      import CommunityDemoWeb.Components.MishkaNativeSelect,
        only: [mishka_native_select: 1, mishka_select_option_group: 1]

      import CommunityDemoWeb.Components.MishkaNavbar, only: [mishka_navbar: 1, mishka_header: 1]
      import CommunityDemoWeb.Components.MishkaNumberField, only: [mishka_number_field: 1]
      import CommunityDemoWeb.Components.MishkaOverlay, only: [mishka_overlay: 1]
      import CommunityDemoWeb.Components.MishkaPagination, only: [mishka_pagination: 1]
      import CommunityDemoWeb.Components.MishkaPasswordField, only: [mishka_password_field: 1]
      import CommunityDemoWeb.Components.MishkaPopover, only: [mishka_popover: 1]

      import CommunityDemoWeb.Components.MishkaProgress,
        only: [
          mishka_progress: 1,
          mishka_progress_section: 1,
          mishka_semi_circle_progress: 1,
          mishka_ring_progress: 1
        ]

      import CommunityDemoWeb.Components.MishkaRadioCard,
        only: [mishka_radio_card: 1, radio_card_check: 3]

      import CommunityDemoWeb.Components.MishkaRadioField,
        only: [mishka_radio_field: 1, mishka_group_radio: 1, radio_check: 3]

      import CommunityDemoWeb.Components.MishkaRangeField, only: [mishka_range_field: 1]
      import CommunityDemoWeb.Components.MishkaRating, only: [mishka_rating: 1]
      import CommunityDemoWeb.Components.MishkaScrollArea, only: [mishka_scroll_area: 1]
      import CommunityDemoWeb.Components.MishkaSearchField, only: [mishka_search_field: 1]
      import CommunityDemoWeb.Components.MishkaShape, only: [mishka_shape: 1]
      import CommunityDemoWeb.Components.MishkaSidebar, only: [mishka_sidebar: 1]
      import CommunityDemoWeb.Components.MishkaSkeleton, only: [mishka_skeleton: 1]
      import CommunityDemoWeb.Components.MishkaSpeedDial, only: [mishka_speed_dial: 1]
      import CommunityDemoWeb.Components.MishkaSpinner, only: [mishka_spinner: 1]
      import CommunityDemoWeb.Components.MishkaStat, only: [mishka_stat: 1, mishka_stat_group: 1]

      import CommunityDemoWeb.Components.MishkaStepper,
        only: [mishka_stepper: 1, mishka_stepper_section: 1]

      import CommunityDemoWeb.Components.MishkaTable,
        only: [mishka_table: 1, mishka_th: 1, mishka_tr: 1, mishka_td: 1]

      import CommunityDemoWeb.Components.MishkaTableContent,
        only: [mishka_table_content: 1, mishka_content_wrapper: 1, mishka_content_item: 1]

      import CommunityDemoWeb.Components.MishkaTabs,
        only: [mishka_tabs: 1, show_tab: 2, show_tab: 3, hide_tab: 2, hide_tab: 3]

      import CommunityDemoWeb.Components.MishkaTelField, only: [mishka_tel_field: 1]
      import CommunityDemoWeb.Components.MishkaTextField, only: [mishka_text_field: 1]
      import CommunityDemoWeb.Components.MishkaTextareaField, only: [mishka_textarea_field: 1]

      import CommunityDemoWeb.Components.MishkaTimeline,
        only: [mishka_timeline: 1, mishka_timeline_section: 1]

      import CommunityDemoWeb.Components.MishkaToast,
        only: [
          mishka_toast: 1,
          mishka_toast_group: 1,
          show_toast: 1,
          show_toast: 2,
          hide_toast: 1,
          hide_toast: 2
        ]

      import CommunityDemoWeb.Components.MishkaToggleField,
        only: [mishka_toggle_field: 1, toggle_check: 2]

      import CommunityDemoWeb.Components.MishkaTooltip, only: [mishka_tooltip: 1]

      import CommunityDemoWeb.Components.MishkaTypography,
        only: [
          mishka_h1: 1,
          mishka_h2: 1,
          mishka_h3: 1,
          mishka_h4: 1,
          mishka_h5: 1,
          mishka_h6: 1,
          mishka_p: 1,
          mishka_strong: 1,
          mishka_em: 1,
          mishka_dl: 1,
          mishka_dt: 1,
          mishka_dd: 1,
          mishka_figure: 1,
          mishka_figcaption: 1,
          mishka_abbr: 1,
          mishka_mark: 1,
          mishka_small: 1,
          mishka_s: 1,
          mishka_u: 1,
          mishka_cite: 1,
          mishka_del: 1
        ]

      import CommunityDemoWeb.Components.MishkaUrlField, only: [mishka_url_field: 1]
      import CommunityDemoWeb.Components.MishkaVideo, only: [mishka_video: 1]
    end
  end
end
