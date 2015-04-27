require_relative './main_navigation_section'

module Pages
  class HomePage < SitePrism::Page
    set_url '/'

    section :menu, Pages::MainNavigationSection, 'nav#main-navigation'
  end
end