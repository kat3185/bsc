class EventSlotUsersController < ApplicationController
  before_action :set_event_slot_user, only: [:show, :edit, :update, :destroy]

  # GET /event_slot_users
  # GET /event_slot_users.json
  def index
    @event_slot_users = EventSlotUser.all
  end

  # GET /event_slot_users/1
  # GET /event_slot_users/1.json
  def show
  end

  # GET /event_slot_users/new
  def new
    @event_slot_user = EventSlotUser.new
  end

  # GET /event_slot_users/1/edit
  def edit
  end

  # POST /event_slot_users
  # POST /event_slot_users.json
  def create
    @event_slot_user = EventSlotUser.new(event_slot_user_params)
    @event_slot_user.user = current_user

    respond_to do |format|
      if @event_slot_user.save
        format.html { redirect_to event_path(@event_slot_user.event), notice: 'Event volunteer slot user was successfully created.' }
        format.json { render :show, status: :created, location: @event_slot_user }
      else
        format.html { redirect_to event_path(@event_slot_user.event), error: 'User not recorded.'}
        format.json { render json: @event_slot_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_slot_users/1
  # PATCH/PUT /event_slot_users/1.json
  def update
    respond_to do |format|
      if @event_slot_user.update(event_slot_user_params)
        format.html { redirect_to @event_slot_user, notice: 'Event volunteer slot user was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_slot_user }
      else
        format.html { render :edit }
        format.json { render json: @event_slot_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_slot_users/1
  # DELETE /event_slot_users/1.json
  def destroy
    @event_slot_user.destroy
    respond_to do |format|
      format.html { redirect_to event_volunteers_url, notice: 'Event volunteer slot user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_slot_user
      @event_slot_user = EventSlotUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_slot_user_params
      params.require(:event_slot_user).permit(:user_id, :event_slot_user_id)
    end
end
