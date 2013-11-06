class Owners::EmployeesController < ApplicationController
  before_action :set_owners_employee, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_owner!
  load_and_authorize_resource

  # GET /owners/employees
  # GET /owners/employees.json
  def index
    @owners_employees = Employee.all
  end

  # GET /owners/employees/1
  # GET /owners/employees/1.json
  def show
  end

  # GET /owners/employees/new
  def new
    @owners_employee = Employee.new
  end

  # GET /owners/employees/1/edit
  def edit
  end

  # POST /owners/employees
  # POST /owners/employees.json
  def create
    @owners_employee = Employee.new(owners_employee_params)

    respond_to do |format|
      if @owners_employee.save
        format.html { redirect_to owners_employee_path(@owners_employee), notice: 'Employee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @owners_employee }
      else
        format.html { render action: 'new' }
        format.json { render json: @owners_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owners/employees/1
  # PATCH/PUT /owners/employees/1.json
  def update
    respond_to do |format|
      if @owners_employee.update(owners_employee_params)
        format.html { redirect_to @owners_employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @owners_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/employees/1
  # DELETE /owners/employees/1.json
  def destroy
    @owners_employee.destroy
    respond_to do |format|
      format.html { redirect_to owners_employees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owners_employee
      @owners_employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owners_employee_params
      params[:employee]
    end
end
