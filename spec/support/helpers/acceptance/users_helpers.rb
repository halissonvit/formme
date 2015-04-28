module Helpers
  module Acceptance
    module UsersHelpers
      def sign_in_user(user)
        sign_in_page = Pages::Users::SignInPage.new
        sign_in_page.load
        sign_in_page.sign_in(user.email, user.password)
      end

      def sign_up_user(user)
        sign_up_page = Pages::Users::SignUpPage.new
        sign_up_page.load
        sign_up_page.sign_up(user.email, user.password)
      end
    end
  end
end
