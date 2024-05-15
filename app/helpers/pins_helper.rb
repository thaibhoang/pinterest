module PinsHelper
  def render_pin_image(pin, width, height)
    if pin.image_url.present?
      link_to image_tag(pin.image_url, style: "max-width: #{width}px; max-height: #{height}px; object-fit: cover;"),
              pin.image_url, data: { turbo_frame: "_top" }
    elsif pin.image.attached?
      link_to image_tag(pin.resize_img(pin.image, width, height)), pin.image
    end
  end

  def render_full_pin_image(pin)
    if pin.image_url.present?
      link_to image_tag(pin.image_url, class: "img--full"),
              pin.image_url,
              data: { turbo_frame: "_top" },
              class: "link--img--full"
    elsif pin.image.attached?
      link_to image_tag(pin.image, class: "img--full"), pin.image, class: "link--img--full"
    end
  end

  def render_pin_thumbnail(pin, width, height, lazy_load=False)
    destination = user_signed_in? ? pin : new_user_session_path
    data = user_signed_in? ? { turbo_frame: "#{dom_id(pin)}__modal" } : { turbo_frame: "_top" }
    url = lazy_load ? 'img_placeholder.png' : pin.image_url
    img_data = lazy_load ? { src: pin.image_url } : {}
    if pin.image_url.present?
      link_to image_tag(url, data: img_data, style: 'width: 100%; height: auto;', crossorigin: "anonymous"), destination,
              data: data
    elsif pin.image.attached?
      link_to image_tag(pin.resize_img(pin.image, width, height)), destination, data: data
    end
  end

  def load_save_overlay(pin)
    been_saved, saved_to = saved_to_board(pin, current_user)
    # saved_to_board is a helper method
    render partial: "shared/saved_pin_form_layout", locals: { pin: pin } if been_saved == false
    render partial: "shared/unsave_layout", locals: { pin: pin, board_id: saved_to } if been_saved == true
  end

  def create_frame_tag_id(condition, pin)
    condition ? "box_#{dom_id(pin)}" : "original_box_#{dom_id(pin)}"
  end
end
