class PinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pin, only: %i[ show edit update destroy ]
  before_action :check_user, only: %i[ edit update destroy ]

  # GET /pins or /pins.json
  def index
    @pins = Pin.all.order(Arel.sql("RANDOM()")).limit(100)
  end

  # GET /pins/1 or /pins/1.json
  def show
    @note = @pin.notes.find_by(user_id: current_user.id)
  end

  # GET /pins/new
  def new
    @pin = Pin.new
    @boards = current_user.boards.all
  end

  # GET /pins/1/edit
  def edit
    @in_frame_mode = params[:in_frame_mode] ? true : false
    @cancel_form = params[:cancel_form] ? true : false
  end

  # POST /pins or /pins.json
  def create
    puts params.inspect
    @pin = Pin.new(pin_params)
    @boards = current_user.boards.all
    @pin.user_id = current_user.id
    respond_to do |format|
      if @pin.save
        # if user fill in board_id, then create the saved_pin for user
        if @pin.persisted? && !params[:board_id].nil?
          @pin.saved_pins.create(user_id: current_user.id, board_id: params[:board_id])
        end
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
        format.turbo_stream { flash.now[:notice] = "Pin was successfully updated." }
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
      params.require(:pin).permit(:image, :title, :description, :link, :image_url)
    end
end
