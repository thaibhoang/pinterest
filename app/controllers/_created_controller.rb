# This controller show all the pins created by one user
class CreatedController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
    @pins = @user.pins.includes([:image_attachment, { saved_pins: :board }])
    @saved_pins = current_user.saved_pins.includes(:pin).where(board_id: nil) if user_signed_in?
    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
