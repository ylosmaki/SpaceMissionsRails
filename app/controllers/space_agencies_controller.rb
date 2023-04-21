class SpaceAgenciesController < ApplicationController
  before_action :set_space_agency, only: %i[ show edit update destroy ]

  # GET /space_agencies or /space_agencies.json
  def index
    @space_agencies = SpaceAgency.all
  end

  # GET /space_agencies/1 or /space_agencies/1.json
  def show
  end

  # GET /space_agencies/new
  def new
    @space_agency = SpaceAgency.new
  end

  # GET /space_agencies/1/edit
  def edit
  end

  # POST /space_agencies or /space_agencies.json
  def create
    @space_agency = SpaceAgency.new(space_agency_params)

    respond_to do |format|
      if @space_agency.save
        format.html { redirect_to space_agency_url(@space_agency), notice: "Space agency was successfully created." }
        format.json { render :show, status: :created, location: @space_agency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @space_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /space_agencies/1 or /space_agencies/1.json
  def update
    respond_to do |format|
      if @space_agency.update(space_agency_params)
        format.html { redirect_to space_agency_url(@space_agency), notice: "Space agency was successfully updated." }
        format.json { render :show, status: :ok, location: @space_agency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @space_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_agencies/1 or /space_agencies/1.json
  def destroy
    @space_agency.destroy

    respond_to do |format|
      format.html { redirect_to space_agencies_url, notice: "Space agency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space_agency
      @space_agency = SpaceAgency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def space_agency_params
      params.require(:space_agency).permit(:name, :headquarters, :exists)
    end
end
