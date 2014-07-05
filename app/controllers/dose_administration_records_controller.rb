class DoseAdministrationRecordsController < ApplicationController
  before_action :set_dose_administration_record, only: [:show, :edit, :update, :destroy]

  # GET /dose_administration_records
  # GET /dose_administration_records.json
  def index
    @dose_administration_records = DoseAdministrationRecord.all
  end

  # GET /dose_administration_records/1
  # GET /dose_administration_records/1.json
  def show
  end

  # GET /dose_administration_records/new
  def new
    @dose_administration_record = DoseAdministrationRecord.new
  end

  # GET /dose_administration_records/1/edit
  def edit
  end

  # POST /dose_administration_records
  # POST /dose_administration_records.json
  def create
    @dose_administration_record = DoseAdministrationRecord.new(dose_administration_record_params)

    respond_to do |format|
      if @dose_administration_record.save
        format.html { redirect_to @dose_administration_record, notice: 'Dose administration record was successfully created.' }
        format.json { render :show, status: :created, location: @dose_administration_record }
      else
        format.html { render :new }
        format.json { render json: @dose_administration_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dose_administration_records/1
  # PATCH/PUT /dose_administration_records/1.json
  def update
    respond_to do |format|
      if @dose_administration_record.update(dose_administration_record_params)
        format.html { redirect_to @dose_administration_record, notice: 'Dose administration record was successfully updated.' }
        format.json { render :show, status: :ok, location: @dose_administration_record }
      else
        format.html { render :edit }
        format.json { render json: @dose_administration_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dose_administration_records/1
  # DELETE /dose_administration_records/1.json
  def destroy
    @dose_administration_record.destroy
    respond_to do |format|
      format.html { redirect_to dose_administration_records_url, notice: 'Dose administration record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose_administration_record
      @dose_administration_record = DoseAdministrationRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_administration_record_params
      params.require(:dose_administration_record).permit(:patient_id, :user_id, :nakshatra_date_id)
    end
end
