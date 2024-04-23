class ProfileController < ApplicationController
  before_action :authenticate_user!, :set_user, :set_profile
  before_action :check_owner, except: %i[show]

  def show     
  end 

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to user_profile_url(@user, @profile)}
        format.turbo_stream
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private
  
  def set_user 
    @user = User.find(params[:user_id])
  end

  def set_profile
    set_user
    @profile = @user.profile
  end 

  def check_owner
    redicrect_to user_path(@user) if current_user != @user
  end

  def profile_params
    params.require(:profile).permit(:avatar, :avatar_url, :username, :about)
  end
end
