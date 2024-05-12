# handling comments
class CommentsController < ApplicationController
  before_action :authenticate_user!, :set_pin
  before_action :set_comment, only: %i[edit update destroy]
  before_action :check_owner, only: %i[edit update destroy]

  # GET /comments/1 or /comments/1.json
  def show
    @comment = Comment.includes(replies: [{ user: :profile }, :likes, { replies: [{ user: :profile }, :likes] }]).find(params[:id])
  end

  # GET /comments/new
  def new
    @comment = @pin.comments.build(parent_id: params[:parent_id])
    @cancel_form = params[:cancel_form]
  end

  # GET /comments/1/edit
  def edit
    @cancel_form = params[:cancel_form]
  end

  # POST /comments or /comments.json
  def create
    @comment = @pin.comments.build(comment_params)
    # manually adding :user_id to avoid a user can write comment for other user
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.turbo_stream
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy!
    respond_to(&:turbo_stream)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:pin_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:body, :comment_id, :parent_id)
  end

  def check_owner
    redirect_to pin_path(@pin), notice: 'You are not authorized to change this comment' if @comment.user != current_user
  end
end
