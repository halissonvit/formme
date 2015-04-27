module Pages
  module Users
    class SignInPage < SitePrism::Page
      set_url '/users/edit'

      element :email, 'input#user_email'
      element :current_password, 'input#user_current_password'
      element :password, 'input#user_password'
      element :password_confirmation, 'input#user_password_confirmation'
      element :update_button, 'button[type="submit"]'

      def sign_in(email, password)
        self.email.set(email)
        self.password.set(password)

        self.sign_in_button.click
      end
    end
  end
end