module Helpers
  module Controllers
    module Authentication
      def login_user(employee = FactoryGirl.create(:user))
        @request.env['devise.mapping'] = Devise.mappings[:user]
        sign_in employee
      end
    end
  end
end