# handling boards routing
class BoardsController < ApplicationController
  before_action :authenticate_user!, :set_user
  before_action :validate_owner, only: %i[new create edit update destroy]
  before_action :set_board, only: %i[show edit update destroy]
  before_action :set_pin, :set_options, only: %i[create]

  # GET /boards or /boards.json
  def index
    @boards = @user != current_user ? @user.boards.where(keep_secret: false) : @user.boards
  end

  # GET /boards/1 or /boards/1.json
  def show
    redirect_to user__saved_index_path(@user) if @board.keep_secret && @board.user != current_user
    @saved_pins = @board.saved_pins
  end

  # GET /boards/new
  def new
    @board = current_user.boards.build
    @in_saved_pin_mode = params[:in_saved_pin_mode]
    @cancel_form = params[:cancel_form]
    @pin_id = params[:pin_id]
  end

  # GET /boards/1/edit
  def edit; end

  # POST /boards or /boards.json
  def create
    @board = current_user.boards.build(board_params)
    respond_to do |format|
      if @board.save
        if params[:pin_id].nil?
          redirect_to user_board_url(current_user, @board), notice: 'Board was successfully created.'
          return
        end
        format.turbo_stream { flash.now[:notice] = 'Board was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
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

  def set_pin
    @pin = Pin.find_by(id: params[:pin_id]) if params[:pin_id]
  end

  # Only allow a list of trusted parameters through.
  def board_params
    params.require(:board).permit(:cover, :cover_url, :name, :description, :keep_secret, :user_id)
  end

  def validate_owner
    if current_user != @user
      redicrect_to user_boards_path(@user), notice: "You are not authorized to make change to this user's boards"
    end
  end

  def set_options
    @options = current_user.boards.pluck(:name, :id)
  end
end
