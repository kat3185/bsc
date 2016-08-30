class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :assign_price, only: [:update]
  before_action :authenticate_user!


  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event_volunteer_slots = EventVolunteerSlot.where(event_id: params[:id])
    @event_volunteer_slots = @event_volunteer_slots.select{ |slot| current_user.roles.include?(slot.role) }
    @users = User.all
  end

  # GET /events/new
  def new
    @event = Event.new(start_time: Chronic.parse('this friday 7:15 PM'), end_time: Chronic.parse('this saturday 12:30 AM'))
    @venues = Venue.all
    @bands = Band.all
  end

  # GET /events/1/edit
  def edit
    @event_volunteer_slots = EventVolunteerSlot.where(event: @event)
    @users = User.all.order(:first_name)
    @venues = Venue.all
    @bands = Band.all
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    assign_price

    respond_to do |format|
      if @event.save && create_friday_volunteer_slots
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def assign_price
      price = Price.find_or_create_by(general: price_params[:price_attributes][:general], student: price_params[:price_attributes][:student], discounted: price_params[:price_attributes][:discounted])
      @event.price = price
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.fetch(:event).permit(:band_id, :venue_id, :start_time, :end_time, :notes, :weekly_friday_dance)
    end

    def price_params
      params.fetch(:event).permit(price_attributes: [:general, :student, :discounted])
    end

    def create_friday_volunteer_slots
      @event.weekly_friday_dance ? EventVolunteerSlot.create_friday_volunteer_slots(@event) : true
    end

end
