module Pages
  module PooleAppForms
    class NewPage < SitePrism::Page
      set_url '/poole_app_forms/new'

      element :title, '#poole_app_form_title'
      element :api_key, '#poole_app_form_api_key'
      element :api_secret, '#poole_app_form_api_secret'
      element :submit, 'input[type="submit"]'


      def create_form(title, api_key, api_secret)
        fill_content(title, api_key, api_secret)
        self.submit.click
      end

      def fill_content(title, api_key, api_secret)
        self.title.set(title)
        self.api_key.set(api_key)
        self.api_secret.set(api_secret)
      end
    end
  end
end
