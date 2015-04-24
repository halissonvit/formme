module Pages
  module Users
    class SignUpPage < SitePrism::Page
      set_url '/users/sign_up'

      element :email, 'input#user_email'
      element :password, 'input#user_password'
      element :confirmation_password, 'input#user_confirmation_password'
      element :sign_up_button, 'button[type="submit"]'

      def sign_up(email, password, confirmation_password = password)
        self.email.set(email)
        self.password.set(password)
        self.confirmation_password.set(confirmation_password)
        self.sign_up_button.click
      end
    end
  end
end