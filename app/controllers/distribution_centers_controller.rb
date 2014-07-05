class DistributionCentersController < ApplicationController
  load_and_authorize_resource
  before_action :set_distribution_center, only: [:show, :edit, :update, :destroy]

  # GET /distribution_centers
  # GET /distribution_centers.json
  def index
    @distribution_centers = DistributionCenter.all
  end

  # GET /distribution_centers/1
  # GET /distribution_centers/1.json
  def show
  end

  # GET /distribution_centers/new
  def new
    @distribution_center = DistributionCenter.new
  end

  # GET /distribution_centers/1/edit
  def edit
  end

  # POST /distribution_centers
  # POST /distribution_centers.json
  def create
    @distribution_center = DistributionCenter.new(distribution_center_params)

    respond_to do |format|
      if @distribution_center.save
        format.html { redirect_to @distribution_center, notice: 'Distribution center was successfully created.' }
        format.json { render :show, status: :created, location: @distribution_center }
      else
        format.html { render :new }
        format.json { render json: @distribution_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribution_centers/1
  # PATCH/PUT /distribution_centers/1.json
  def update
    respond_to do |format|
      if @distribution_center.update(distribution_center_params)
        format.html { redirect_to @distribution_center, notice: 'Distribution center was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribution_center }
      else
        format.html { render :edit }
        format.json { render json: @distribution_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribution_centers/1
  # DELETE /distribution_centers/1.json
  def destroy
    @distribution_center.destroy
    respond_to do |format|
      format.html { redirect_to distribution_centers_url, notice: 'Distribution center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution_center
      @distribution_center = DistributionCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribution_center_params
      params.require(:distribution_center).permit(:name, :address)
    end
end
