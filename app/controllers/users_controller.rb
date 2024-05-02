# handle user routing
class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user

  def show
    @pins = @user.pins
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
