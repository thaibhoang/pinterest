class BoardsController < ApplicationController
  before_action :authenticate_user!, :set_user
  before_action :validate_owner, only: %i[ new create edit update destroy ]
  before_action :set_board, only: %i[ show edit update destroy ]
  

  # GET /boards or /boards.json
  def index
    @boards = @user.boards
  end

  # GET /boards/1 or /boards/1.json
  def show
    @saved_pins = @board.saved_pins
  end

  # GET /boards/new
  def new
    @board = current_user.boards.build
  end

  # GET /boards/1/edit
  def edit
  end

  # POST /boards or /boards.json
  def create
    @board = current_user.boards.build(board_params)
    @options = current_user.boards.pluck(:name, :id)
    respond_to do |format|
      if @board.save
        @new_board_id = @board.id
        @new_board_name = @board.name  
        @boards = current_user.boards
        format.turbo_stream
        format.html { redirect_to user_board_url(current_user, @board), notice: "Board was successfully created." }
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
