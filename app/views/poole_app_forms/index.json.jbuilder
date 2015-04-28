json.array!(@poole_app_forms) do |poole_app_form|
  json.extract! poole_app_form, :id, :title, :user_id
  json.url poole_app_form_url(poole_app_form, format: :json)
end
