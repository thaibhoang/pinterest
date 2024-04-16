class NotesController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_pin, only: %i[ new create ]
  before_action :set_note, only: %i[ edit update destroy ]
  
  

  # GET /notes/new
  def new
    @note = @pin.notes.build    
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes or /notes.json
  def create
    @note = @pin.notes.build(note_params)
    @note.user_id = current_user.id
    respond_to do |format|
      if @note.save
        format.turbo_stream
        format.html { redirect_to pin_path(@pin), notice: "Note was successfully created." }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.turbo_stream
        format.html { redirect_to pin_path(@pin), notice: "Note was successfully updated." }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy!

    respond_to do |format|
      @pin = Pin.find(params[:pin_id])
      format.turbo_stream
      format.html { redirect_to pin_path(@pin), notice: "Note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:pin_id])
    end
    
    def set_note
      set_pin
      @note = @pin.notes.find_by(user_id: current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:content)
    end

end
