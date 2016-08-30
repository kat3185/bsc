class EventSlotAvailabilitiesController < ApplicationController
  before_action :set_event_slot_availability, only: [:show, :edit, :update, :destroy]

  # GET /event_slot_availabilities
  # GET /event_slot_availabilities.json
  def index
    @event_slot_availabilities = EventSlotAvailability.all
  end

  # GET /event_slot_availabilities/1
  # GET /event_slot_availabilities/1.json
  def show
  end

  # GET /event_slot_availabilities/new
  def new
    @event_slot_availability = EventSlotAvailability.new
  end

  # GET /event_slot_availabilities/1/edit
  def edit
  end

  # POST /event_slot_availabilities
  # POST /event_slot_availabilities.json
  def create
    @event_slot_availability = EventSlotAvailability.new(event_slot_availability_params)
    @event_slot_availability.user = current_user

    respond_to do |format|
      if @event_slot_availability.save
        format.html { redirect_to event_path(@event_slot_availability.event), notice: 'Event volunteer slot availability was successfully created.' }
        format.json { render :show, status: :created, location: @event_slot_availability }
      else
        format.html { render :new }
        format.json { render json: @event_slot_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_slot_availabilities/1
  # PATCH/PUT /event_slot_availabilities/1.json
  def update
    respond_to do |format|
      if @event_slot_availability.update(event_slot_availability_params)
        format.html { redirect_to @event_slot_availability, notice: 'Event volunteer slot availability was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_slot_availability }
      else
        format.html { render :edit }
        format.json { render json: @event_slot_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_slot_availabilities/1
  # DELETE /event_slot_availabilities/1.json
  def destroy
    @event_slot_availability.destroy
    respond_to do |format|
      format.html { redirect_to event_volunteers_url, notice: 'Event volunteer slot availability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_slot_availability
      @event_slot_availability = EventSlotAvailability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_slot_availability_params
      params.require(:event_slot_availability).permit(:user_id, :event_volunteer_slot_id)
    end
end
