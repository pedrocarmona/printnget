class Admins::CompaniesController < Admins::ApplicationAdminsController
  before_action :set_admins_company, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!
  load_and_authorize_resource

  # GET /admins/companies
  # GET /admins/companies.json
  def index
    @admin_companies = Company.all
  end

  # GET /admins/companies/1
  # GET /admins/companies/1.json
  def show
  end

  # GET /admins/companies/new
  def new
    @admin_company = Company.new
  end

  # GET /admins/companies/1/edit
  def edit
  end

  # POST /admins/companies
  # POST /admins/companies.json
  def create
    @admin_company = Company.new(admins_company_params)

    respond_to do |format|
      if @admin_company.save
        format.html { redirect_to admins_company_path(@admin_company), notice: 'Company was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_company }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/companies/1
  # PATCH/PUT /admins/companies/1.json
  def update
    respond_to do |format|
      if @admin_company.update(admins_company_params)
        format.html { redirect_to @admins_company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admins_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/companies/1
  # DELETE /admins/companies/1.json
  def destroy
    @admin_company.destroy
    respond_to do |format|
      format.html { redirect_to admins_companies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_company
      @admin_company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admins_company_params
      params[:admins_company]
    end
end
