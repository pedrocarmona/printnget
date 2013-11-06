class Admins::OwnersController < ApplicationController
  before_action :set_admins_owner, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!
  load_and_authorize_resource

  # GET /admins/owners
  # GET /admins/owners.json
  def index
    @admins_owners = Owner.all
  end

  # GET /admins/owners/1
  # GET /admins/owners/1.json
  def show
  end

  # GET /admins/owners/new
  def new
    @admins_owner = Owner.new
  end

  # GET /admins/owners/1/edit
  def edit
  end

  # POST /admins/owners
  # POST /admins/owners.json
  def create
    @admins_owner = Owner.new(admins_owner_params)

    respond_to do |format|
      if @admins_owner.save
        format.html { redirect_to admins_owner_path(@admins_owner), notice: 'Owner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admins_owner }
      else
        format.html { render action: 'new' }
        format.json { render json: @admins_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/owners/1
  # PATCH/PUT /admins/owners/1.json
  def update
    respond_to do |format|
      if @admins_owner.update(admins_owner_params)
        format.html { redirect_to admins_owner_path @admins_owner, notice: 'Owner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admins_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/owners/1
  # DELETE /admins/owners/1.json
  def destroy
    @admins_owner.destroy
    respond_to do |format|
      format.html { redirect_to admins_owners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_owner
      @admins_owner = Owner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admins_owner_params
      params[:owner]
    end
end
