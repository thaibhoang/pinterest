# This controller show all the pins created by one user
class CreatedController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
    @pins = @user.pins

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
