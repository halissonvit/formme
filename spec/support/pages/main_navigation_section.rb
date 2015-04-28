module Pages
  class MainNavigationSection < SitePrism::Section
    element :brand, 'a.navbar-brand'
    element :forms, 'a#link-menu-forms'
    element :new_poole_form, 'a#link-new-poole-form'
  end
end