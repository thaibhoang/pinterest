class PinThumbnailController < ApplicationController
  before_action :set_pin

  def index
    @edit_pin = params[:edit_pin]
    @saved_pin = current_user.saved_pins.find_by(id: params[:saved_pin_id])
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end
end
