# showing user's boards and unorganized pins
class SavedController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
    @boards = @user != current_user ? @user.boards.where(keep_secret: false) : @user.boards
    @unorganized_saved_pins = @user.saved_pins.where(board_id: nil).includes(:pin)

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
