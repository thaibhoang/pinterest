class SavedPinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_saved_pin, only: %i[ show edit update destroy ]

  # GET /saved_pins or /saved_pins.json
  def index
    @saved_pins = SavedPin.all
  end

  # GET /saved_pins/1 or /saved_pins/1.json
  def show
  end

  # GET /saved_pins/new
  def new
    @saved_pin = SavedPin.new
  end

  # GET /saved_pins/1/edit
  def edit
  end

  # POST /saved_pins or /saved_pins.json
  def create
    @saved_pin = SavedPin.new(saved_pin_params)

    respond_to do |format|
      if @saved_pin.save
        format.html { redirect_to saved_pin_url(@saved_pin), notice: "Saved pin was successfully created." }
        format.json { render :show, status: :created, location: @saved_pin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @saved_pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_pins/1 or /saved_pins/1.json
  def update
    respond_to do |format|
      if @saved_pin.update(saved_pin_params)
        format.html { redirect_to saved_pin_url(@saved_pin), notice: "Saved pin was successfully updated." }
        format.json { render :show, status: :ok, location: @saved_pin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saved_pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_pins/1 or /saved_pins/1.json
  def destroy
    @saved_pin.destroy!

    respond_to do |format|
      format.html { redirect_to saved_pins_url, notice: "Saved pin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_pin
      @saved_pin = SavedPin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_pin_params
      params.require(:saved_pin).permit(:pin_id, :user_id, :board_id)
    end
end
