module ApplicationHelper
  def show_pin_or_saved_pin(saved_pins)
    return if saved_pins.count.zero?

    if current_user_is_owner_of?(saved_pins.first)
      render partial: "shared/pin", collection: saved_pins, as: :saved_pin
    else
      pins = saved_pins.map(&:pin)
      render partial: "shared/pin", collection: pins, as: :pin, locals: { lazy_load: true }
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
