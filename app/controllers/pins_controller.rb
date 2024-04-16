class PinsController < ApplicationController
  before_action :set_pin, only: %i[ show edit update destroy ]
  before_action :check_user, only: %i[ edit update destroy ]

  # GET /pins or /pins.json
  def index
    @pins = current_user.pins.all
  end

  # GET /pins/1 or /pins/1.json
  def show
  end

  # GET /pins/new
  def new
    @pin = Pin.new
    @boards = current_user.boards.all
  end

  # GET /pins/1/edit
  def edit
    @boards = current_user.boards.all
  end

  # POST /pins or /pins.json
  def create
    @pin = Pin.new(pin_params)
    @boards = current_user.boards.all
    @pin.user_id = current_user.id
    respond_to do |format|
      if @pin.save
        format.html { redirect_to pin_url(@pin), notice: "Pin was successfully created." }
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1 or /pins/1.json
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to pin_url(@pin), notice: "Pin was successfully updated." }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1 or /pins/1.json
  def destroy
    @pin.destroy!

    respond_to do |format|
      format.html { redirect_to pins_url, notice: "Pin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def check_user
      @pin = set_pin
      if @pin.user != current_user
        redirect_to @pin, notice: "You are not the owner of this pin"
      end
    end

    # Only allow a list of trusted parameters through.
    def pin_params
      params.require(:pin).permit(:image, :title, :description, :link, :board_id)
    end
end
