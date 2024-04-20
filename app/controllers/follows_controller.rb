class FollowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_follow, only: %i[ destroy ]

  # POST /follows or /follows.json
  def create
    @follow = current_user.given_follows.build(followee_id: params[:followee_id])

    respond_to do |format|
      if @follow.save
        format.html { redirect_to follow_url(@follow), notice: "Followed" }
        format.json { render :show, status: :created, location: @follow }
        format.turbo_stream
      else
        format.html { redirect_to root_path, notice: "Follow failed to process" }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /follows/1 or /follows/1.json
  def destroy
    @followee_id = @follow.followee_id
    redirect_to root_path if @follow.follower != current_user
    @follow.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Unfollowed." }
      format.json { head :no_content }
      format.turbo_stream
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow
      @follow = Follow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.

end
