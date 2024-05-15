module ApplicationHelper
  def show_pin_or_saved_pin(saved_pin)
    pin = saved_pin.pin
    if current_user_is_owner_of?(saved_pin)
      render partial: "shared/pin", locals: {pin: pin, saved_pin: saved_pin}
    else
      render partial: "shared/pin", locals: {pin: pin, lazy_load: true}
    end
  end

  def edit_pin_button(pin)
    link_to edit_pin_path(pin, in_frame_mode: true), class: "button", data: { turbo_frame: "#{dom_id(pin)}_edit_layout" } do
      content_tag(:i, "", class: "fa-solid fa-pen")
    end
  end

  def current_user_is_owner_of?(resource)
    resource.user_id == current_user.id
  end
end
