class SavedPinsController < ApplicationController
  before_action :authenticate_user!, :set_pin
  before_action :set_saved_pin, only: %i[ show edit update destroy ]

  def new
    @saved_pin = @pin.saved_pins.build
    @cancel_form = params[:cancel_form] ? true : false
  end

  # GET /saved_pins/1/edit
  def edit
  end

  # POST /saved_pins or /saved_pins.json
  def create
    @saved_pin = @pin.saved_pins.build
    if params[:board_id]
      @saved_pin.board_id = params[:board_id]
    end
    @saved_pin.user_id = current_user.id
    respond_to do |format|
      if @saved_pin.save
        format.turbo_stream { flash.now[:notice] = "Saved pin was successfully created." }
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
      if @saved_pin.update(board_id: params[:board_id])
        @pin = @saved_pin.pin
        format.html { redirect_to user_board_url(current_user, old_board), notice: "Saved pin was successfully updated." }
        format.json { render :show, status: :ok, location: @saved_pin }
        format.turbo_stream { flash.now[:notice] = "Saved pin was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saved_pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_pins/1 or /saved_pins/1.json
  def destroy
    @removed_from_profile = @saved_pin.board_id == nil ? true : false
    @saved_pin.destroy!

    respond_to do |format|
      format.html { redirect_to saved_pins_url, notice: "Saved pin was successfully destroyed." }
      format.json { head :no_content }
      format.turbo_stream { flash.now[:notice] = "Saved pin was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin 
      @pin = Pin.find(params[:pin_id])
    end

    def set_saved_pin
      @saved_pin = SavedPin.find(params[:id])
    end


end
