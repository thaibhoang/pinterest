module ApplicationHelper
  def show_pin_or_saved_pin(saved_pin)
    args = saved_pin.user == current_user ? { pin: saved_pin.pin, saved_pin: saved_pin } : { pin: saved_pin.pin }
    render partial: "shared/pin", locals: args
  end

  def edit_pin_button(pin)
    link_to edit_pin_path(pin, in_frame_mode: true), class: "button", data: { turbo_frame: "#{dom_id(pin)}_edit_layout" } do
      content_tag(:i, "", class: "fa-solid fa-pen")
    end
  end

  def current_user_is_owner_of?(resource)
    resource.user == current_user
  end
end
