class EventVolunteerSlotsController < ApplicationController
  before_action :set_event_volunteer_slot, only: [:show, :edit, :update, :destroy]

  # GET /event_volunteer_slots
  # GET /event_volunteer_slots.json
  def index
    @event_volunteer_slots = EventVolunteerSlot.all
  end

  # GET /event_volunteer_slots/1
  # GET /event_volunteer_slots/1.json
  def show
  end

  # GET /event_volunteer_slots/new
  def new
    @event_volunteer_slot = EventVolunteerSlot.new
  end

  # GET /event_volunteer_slots/1/edit
  def edit
  end

  # POST /event_volunteer_slots
  # POST /event_volunteer_slots.json
  def create
    @event_volunteer_slot = EventVolunteerSlot.new(event_volunteer_slot_params)

    respond_to do |format|
      if @event_volunteer_slot.save
        format.html { redirect_to @event_volunteer_slot, notice: 'Event volunteer slot was successfully created.' }
        format.json { render :show, status: :created, location: @event_volunteer_slot }
      else
        format.html { render :new }
        format.json { render json: @event_volunteer_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_volunteer_slots/1
  # PATCH/PUT /event_volunteer_slots/1.json
  def update
    respond_to do |format|
      if @event_volunteer_slot.update(event_volunteer_slot_params)
        format.html { redirect_to @event_volunteer_slot, notice: 'Event volunteer slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_volunteer_slot }
      else
        format.html { render :edit }
        format.json { render json: @event_volunteer_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_volunteer_slots/1
  # DELETE /event_volunteer_slots/1.json
  def destroy
    @event_volunteer_slot.destroy
    respond_to do |format|
      format.html { redirect_to event_volunteer_slots_url, notice: 'Event volunteer slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_volunteer_slot
      @event_volunteer_slot = EventVolunteerSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_volunteer_slot_params
      params.fetch(:event_volunteer_slot, {})
    end
end