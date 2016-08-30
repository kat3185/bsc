class UserRolesController < ApplicationController
  before_action :set_user_role, only: [:show, :edit, :update]
  before_action :set_user_roles, only: [:destroy]

  # GET /user_roles
  # GET /user_roles.json
  def index
    @user = current_user
    @user_role = UserRole.new
    @roles = Role.all.order(:name)
    @errors = params[:errors] ? params[:errors] : []
  end

  # GET /user_roles/1
  # GET /user_roles/1.json
  def show
    @user = current_user
    @user_role = UserRole.new
    @roles = Role.all.order(:name)
    @errors = params[:errors] ? params[:errors] : []
  end

  # GET /user_roles/new
  def new
    @user_role = UserRole.new
  end

  # GET /user_roles/1/edit
  def edit
  end

  # POST /user_roles
  # POST /user_roles.json
  def create
    @user_role = UserRole.new(user_role_params)

    respond_to do |format|
      if @user_role.save
        format.html { redirect_to user_information_path(@user_role.user_id), notice: 'User role was successfully created.' }
        format.json { render :show, status: :created, location: @user_role }
      else
        format.html { redirect_to user_information_path(@user_role.user_id), errors: @user_role.errors.messages }
        format.json { render json: @user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_roles/1
  # PATCH/PUT /user_roles/1.json
  def update
    respond_to do |format|
      if @user_role.update(user_role_params)
        format.html { redirect_to @user_role, notice: 'User role was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_role }
      else
        format.html { render :edit }
        format.json { render json: @user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_roles/1
  # DELETE /user_roles/1.json
  def destroy
    @user_roles.map(&:destroy)
    respond_to do |format|
      format.html { redirect_to user_information_path(first_user), notice: 'User role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_roles
      @user_roles = UserRole.where(user_id: user_role_params[:user_id], role_id: user_role_params[:role_id])
    end
    def set_user_role
      @user_role = UserRole.find(params[:id])
    end
    def first_user
      @user_roles.first.user_id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_role_params
      params.require(:user_role).permit(:user_id, :role_id)
    end
end
