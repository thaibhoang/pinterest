module ApplicationHelper
  def show_pin_or_saved_pin(saved_pin)
    pin = saved_pin.pin
    saved_pin_id = saved_pin.id if current_user_is_owner_of?(saved_pin)
    thumbnail_path = pin_thumbnail_index_path(pin, saved_pin_id: saved_pin_id)
    turbo_frame_tag "#{dom_id(pin)}_thumbnail", src: thumbnail_path, loading: "lazy" do
      content_tag(:div, "", class: "pin_thumbnail--placeholder")
    end
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
