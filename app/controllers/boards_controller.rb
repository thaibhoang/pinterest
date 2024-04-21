class BoardsController < ApplicationController
  before_action :authenticate_user!, :set_user
  before_action :validate_owner, only: %i[ new create edit update destroy ]
  before_action :set_board, only: %i[ show edit update destroy ]
  

  # GET /boards or /boards.json
  def index
    if (@user != current_user)
      @boards = @user.boards.where(keep_secret: false)
    else
      @boards = @user.boards
    end
  end

  # GET /boards/1 or /boards/1.json
  def show
    redirect_to user__saved_index_path(@user) if (@board.keep_secret && @board.user != current_user)
    @saved_pins = @board.saved_pins
  end

  # GET /boards/new
  def new
    @board = current_user.boards.build
    if params[:pin_id]
      @pin_id = params[:pin_id]
    end
  end

  # GET /boards/1/edit
  def edit
  end

  # POST /boards or /boards.json
  def create
    if params[:pin_id]
      @pin = Pin.find_by(id: params[:pin_id])
    end
    names_used = current_user.boards.pluck(:name)
    @board = current_user.boards.build(board_params)
    @options = current_user.boards.pluck(:name, :id)
    if params[:pin_id] == nil
      @board.save
      redirect_to user_board_url(current_user, @board), notice: "Board was successfully created."
    end
    respond_to do |format|
      if names_used.include?(params[:board][:name])
        flash[:error] = "Name already used"
        format.html { render :new }
        format.json { render json: { error: "Name already used" }, status: :unprocessable_entity }
      elsif @board.save
        @new_board_id = @board.id
        @new_board_name = @board.name  
        @boards = current_user.boards
        
        format.turbo_stream { flash.now[:notice] = "Board was successfully created." }
        format.json { render :show, status: :created, location: @board }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boards/1 or /boards/1.json
  def update
    respond_to do |format|
      if @board.update(board_params)
        format.html { redirect_to user_board_url(current_user, @board), notice: "Board was successfully updated." }
        format.json { render :show, status: :ok, location: @board }
        format.turbo_stream
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1 or /boards/1.json
  def destroy
    @board.destroy!

    respond_to do |format|
      format.html { redirect_to user_boards_url(current_user), notice: "Board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_board
      set_user
      @board = @user.boards.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def board_params
      params.require(:board).permit(:cover, :name, :description, :keep_secret, :user_id)
    end

    def validate_owner
      if current_user != @user
        redicrect_to user_boards_path(@user), notice: "You are not authorized to make change to this user's boards"
      end
    end
end
