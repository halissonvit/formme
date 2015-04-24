module Pages
  class HomePage < SitePrism::Page
    set_url '/'

    element :user_account, 'input#user_email'
  end
end