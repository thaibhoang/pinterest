module ApplicationHelper
  def show_pin_or_saved_pin(saved_pin)
    args = saved_pin.user == current_user ? { pin: saved_pin.pin, saved_pin: saved_pin } : { pin: saved_pin.pin }
    render partial: "shared/pin", locals: args
  end
end
