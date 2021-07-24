class InterventionsController < ApplicationController
  before_action :set_intervention, only: %i[ show edit update destroy ]

  # GET /interventions or /interventions.json
  def index
    @interventions = Intervention.all
  end

  # GET /interventions/1 or /interventions/1.json
  def show
  end

  # GET /interventions/new
  def new
    @employees = Employee.order(:first_name)
    @intervention = Intervention.new
  end

  # GET /interventions/1/edit
  def edit
    @employees = Employee.order(:first_name)
    @intervention = Intervention.find(params[:id])
  end

  def get_form_customer_selector
    employee_id = params[:employee_id]
    @customers = Customer.where(user_id: employee_id)
    render partial: 'step-1', locals: { customers: @customers }
  end

  def get_form_building_selector
    customer_id = params[:customer_id]
    @buildings = Building.where(customer_id: customer_id)
    render partial: 'step-2', locals: { buildings: @buildings }
  end

  def get_form_battery_selector
    building_id = params[:building_id]
    @batteries = Battery.where(building_id: building_id)
    render partial: 'step-3', locals: { batteries: @batteries }
  end
  
  def get_form_column_selector
    battery_id = params[:battery_id]
    @columns = Column.where(battery: battery_id)
    render partial: 'step-4', locals: { columns: @columns }
  end

  def get_form_elevator_selector
    column_id = params[:column_id]
    @elevators = Elevator.where(column_id: column_id)
    render partial: 'step-5', locals: { elevators: @elevators }
  end

  # POST /interventions or /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)

    respond_to do |format|
      if @intervention.save
        format.html { redirect_to @intervention, notice: "Intervention was successfully created." }
        format.json { render :show, status: :created, location: @intervention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interventions/1 or /interventions/1.json
  def update
    respond_to do |format|
      if @intervention.update(intervention_params)
        format.html { redirect_to @intervention, notice: "Intervention was successfully updated." }
        format.json { render :show, status: :ok, location: @intervention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1 or /interventions/1.json
  def destroy
    @intervention.destroy
    respond_to do |format|
      format.html { redirect_to interventions_url, notice: "Intervention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervention_params
      params.require(:intervention).permit(:author, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :start_date_and_time_of_the_intervention, :end_date_and_time_of_the_intervention, :result, :report, :status)
    end
end
