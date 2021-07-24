class BuildingdetailsController < ApplicationController
  before_action :set_buildingdetail, only: %i[ show edit update destroy ]

  # GET /buildingdetails or /buildingdetails.json
  def index
    @buildingdetails = Buildingdetail.all
  end

  # GET /buildingdetails/1 or /buildingdetails/1.json
  def show
  end

  # GET /buildingdetails/new
  def new
    @buildingdetail = Buildingdetail.new
  end

  # GET /buildingdetails/1/edit
  def edit
  end

  # POST /buildingdetails or /buildingdetails.json
  def create
    @buildingdetail = Buildingdetail.new(buildingdetail_params)

    respond_to do |format|
      if @buildingdetail.save
        format.html { redirect_to @buildingdetail, notice: "Buildingdetail was successfully created." }
        format.json { render :show, status: :created, location: @buildingdetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buildingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildingdetails/1 or /buildingdetails/1.json
  def update
    respond_to do |format|
      if @buildingdetail.update(buildingdetail_params)
        format.html { redirect_to @buildingdetail, notice: "Buildingdetail was successfully updated." }
        format.json { render :show, status: :ok, location: @buildingdetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buildingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildingdetails/1 or /buildingdetails/1.json
  def destroy
    @buildingdetail.destroy
    respond_to do |format|
      format.html { redirect_to buildingdetails_url, notice: "Buildingdetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buildingdetail
      @buildingdetail = Buildingdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buildingdetail_params
      params.require(:buildingdetail).permit(:building_id, :information, :information_value)
    end
end
