# handle saved_pin_routing
class SavedPinsController < ApplicationController
  before_action :authenticate_user!, :set_pin
  before_action :set_saved_pin, only: %i[show edit update destroy]
  before_action :check_owner, only: %i[update destroy]

  def new
    @saved_pin = @pin.saved_pins.build
    @cancel_form = params[:cancel_form]
  end

  # GET /saved_pins/1/edit
  def edit
    @cancel_form = params[:cancel_form]
  end

  # POST /saved_pins or /saved_pins.json
  def create
    @saved_pin = @pin.saved_pins.build
    add_info_to_saved_pin(@saved_pin)
    respond_to do |format|
      if @saved_pin.save
        format.turbo_stream { flash.now[:notice] = 'Saved pin was successfully created.' }
        format.html { redirect_to saved_pin_url(@saved_pin), notice: 'Saved pin was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_pins/1 or /saved_pins/1.json
  def update
    respond_to do |format|
      if @saved_pin.update(board_id: params[:board_id])
        @pin = @saved_pin.pin
        format.html { redirect_to root_path, notice: 'Saved pin was successfully updated.' }
        format.turbo_stream { flash.now[:notice] = 'Saved pin was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_pins/1 or /saved_pins/1.json
  def destroy
    @removed_from_profile = @saved_pin.board_id.nil?
    @saved_pin.destroy!

    respond_to do |format|
      format.html { redirect_to saved_pins_url, notice: 'Saved pin was successfully destroyed.' }
      format.json { head :no_content }
      format.turbo_stream { flash.now[:notice] = 'Saved pin was successfully destroyed.' }
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

  def check_owner
    redirect_back(fallback_location: root_path) if @saved_pin.user != current_user
  end

  def add_info_to_saved_pin(saved_pin)
    saved_pin.board_id = params[:board_id]
    saved_pin.user_id = current_user.id
  end
end
