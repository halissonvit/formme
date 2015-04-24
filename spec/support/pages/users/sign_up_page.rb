module Pages
  module Users
    class SignUpPage < SitePrism::Page
      set_url '/users/sign_up'

      element :email, 'input#user_email'
      element :password, 'input#user_password'
      element :password_confirmation, 'input#user_password_confirmation'
      element :sign_up_button, 'input[type="submit"]'

      def sign_up(email, password, password_confirmation = password)
        self.email.set(email)
        self.password.set(password)
        self.password_confirmation.set(password_confirmation)
        self.sign_up_button.click
      end
    end
  end
end