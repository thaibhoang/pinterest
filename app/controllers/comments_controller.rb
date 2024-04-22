class CommentsController < ApplicationController
  before_action :authenticate_user!, :set_pin
  before_action :set_comment, only: %i[ show edit update destroy ]
  before_action :check_owner, only: %i[ edit update destroy ]

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new    
    @comment = @pin.comments.build(parent_id: params[:parent_id])
    @turbo_frame_id = params[:parent_id] ? "comment_#{params[:parent_id]}_new_reply" : "#{dom_id(@comment)}_new_reply"
    @cancel_form = params[:cancel_form] ? true : false
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = @pin.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to pin_comment_url(@pin, @comment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: pin_comment_url(@pin, @comment) }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to pin_comment_url(@pin, @comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: pin_comment_url(@pin, @comment) }
        format.turbo_stream
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy!

    respond_to do |format|
      format.html { redirect_to pin_url(@pin), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
      format.turbo_stream
    end
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
      if @comment.user != current_user
        redirect_to pin_path(@pin), notice: "You are not authorized to change this comment"
      end 
    end
end
