class LikesController < ApplicationController
  before_action :authenticate_user!

  # POST /likes or /likes.json
  def create
    @like_frame_name = "like_frame_#{params[:like][:likeable_type].downcase}_#{params[:like][:likeable_id]}"
    @like = current_user.likes.build(like_params)
    @like.save
    @likeable = @like.likeable
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.turbo_stream
    end
  end

  # DELETE /likes/1 or /likes/1.json
  def destroy
    @like_frame_name = "like_frame_#{params[:like][:likeable_type].downcase}_#{params[:like][:likeable_id]}"
    @like = current_user.likes.find(params[:id])
    @likeable = @like.likeable
    @like.destroy
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.turbo_stream
    end
  end

  private
  
  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type)
  end    
end
