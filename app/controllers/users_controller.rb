# handle user routing
class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user

  def show
    @pins = @user.pins.includes([:image_attachment, { saved_pins: :board }])
    @saved_pins = current_user.saved_pins.includes(:pin).where(board_id: nil) if user_signed_in?
    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
