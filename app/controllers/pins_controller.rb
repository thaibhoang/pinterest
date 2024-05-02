# handle routing to pins
class PinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pin, only: %i[show edit update destroy]
  before_action :check_user, only: %i[edit update destroy]
  before_action :set_boards, only: %i[new create]

  # GET /pins or /pins.json
  def index
    @pins = Pin.get_random_pins(50)
  end

  # GET /pins/1 or /pins/1.json
  def show
    @note = @pin.notes.find_by(user: current_user)
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
    @in_frame_mode = params[:in_frame_mode]
    @cancel_form = params[:cancel_form]
  end

  # POST /pins or /pins.json
  def create
    @pin = current_user.pins.build(pin_params)
    respond_to do |format|
      if @pin.save
        create_saved_pin_along_with_pin(@pin)
        format.html { redirect_to pin_url(@pin), notice: 'Pin was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1 or /pins/1.json
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to pin_url(@pin), notice: 'Pin was successfully updated.' }
        format.turbo_stream { flash.now[:notice] = 'Pin was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1 or /pins/1.json
  def destroy
    @pin.destroy!

    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_boards
    @boards = current_user.boards
  end

  def check_user
    set_pin
    redirect_to @pin, notice: 'You are not the owner of this pin' if @pin.user != current_user
  end

  # Only allow a list of trusted parameters through.
  def pin_params
    params.require(:pin).permit(:image, :title, :description, :link, :image_url)
  end

  def create_saved_pin_along_with_pin(pin)
    return unless pin.persisted? && params[:board_id].present?

    pin.saved_pins.create!(user_id: current_user.id, board_id: params[:board_id])
  end
end
