module Helpers
  module Acceptance
    module UsersHelpers
      def sign_in_user(user)
        page = Pages::Users::SignInPage.new
        page.load
        page.sign_in(user.email, user.password)
      end

      def sign_up_user(user)
        page = Pages::Users::SignUpPage.new
        page.load
        page.sign_up(user.email, user.password)
      end
    end
  end
end