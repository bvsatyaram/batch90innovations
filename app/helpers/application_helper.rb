module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def flash_tag(msg, msg_type)
    return unless msg.present?
    if msg_type == "notice"
      msg_type = "success"
    elsif msg_type == "alert"
      msg_type = "danger"
    end

    content_tag(:div, class: "alert alert-#{msg_type} alert-dismissible", role: "alert") do
      button_tag(class: "close", "data-dismiss" => "alert") do 
        content_tag(:span, raw("&times;"), "aria-hidden" => true) +
          content_tag(:span, "Close", class: "sr-only")
      end + msg
    end
  end
end
