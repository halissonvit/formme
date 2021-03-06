module Pages
  module Users
    class SignInPage < SitePrism::Page
      set_url '/users/sign_in'

      element :email, 'input#user_email'
      element :password, 'input#user_password'
      element :sign_in_button, 'button[type="submit"]'

      def sign_in(email, password)
        self.wait_for_email
        self.wait_for_password

        self.email.set(email)
        self.password.set(password)

        self.sign_in_button.click
      end
    end
  end
end