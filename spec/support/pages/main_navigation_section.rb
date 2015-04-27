module Pages
  class MainNavigationSection < SitePrism::Section
    element :brand, 'a.navbar-brand'
    element :forms, 'a#link-menu-forms'
  end
end