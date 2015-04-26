module ApplicationHelper
  def t_form_title_for(object)
    action = (object && object.respond_to?(:persisted?) && object.persisted?) ? :update : :create
    model = object ? object.class.model_name.human : ''
    t("helpers.submit.#{action}", model: model)
  end
end
