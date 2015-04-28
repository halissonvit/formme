module Pages
  module PooleAppForms
    class NewPage < SitePrism::Page
      set_url '/poole_app_forms/new'

      element :title, '#poole_form_app_title'
      element :api_key, '#poole_form_app_api_key'
      element :api_secret, '#poole_form_app_api_secret'
    end
  end
end