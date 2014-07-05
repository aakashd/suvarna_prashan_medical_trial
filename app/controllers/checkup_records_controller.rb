class CheckupRecordsController < ApplicationController
  load_and_authorize_resource
  before_action :set_checkup_record, only: [:show, :edit, :update, :destroy]

  # GET /checkup_records
  # GET /checkup_records.json
  def index
    @checkup_records = CheckupRecord.all
  end

  # GET /checkup_records/1
  # GET /checkup_records/1.json
  def show
  end

  # GET /checkup_records/new
  def new
    @checkup_record = CheckupRecord.new
  end

  # GET /checkup_records/1/edit
  def edit
  end

  # POST /checkup_records
  # POST /checkup_records.json
  def create
    @checkup_record = CheckupRecord.new(checkup_record_params)

    respond_to do |format|
      if @checkup_record.save
        format.html { redirect_to @checkup_record, notice: 'Checkup record was successfully created.' }
        format.json { render :show, status: :created, location: @checkup_record }
      else
        format.html { render :new }
        format.json { render json: @checkup_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkup_records/1
  # PATCH/PUT /checkup_records/1.json
  def update
    respond_to do |format|
      if @checkup_record.update(checkup_record_params)
        format.html { redirect_to @checkup_record, notice: 'Checkup record was successfully updated.' }
        format.json { render :show, status: :ok, location: @checkup_record }
      else
        format.html { render :edit }
        format.json { render json: @checkup_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkup_records/1
  # DELETE /checkup_records/1.json
  def destroy
    @checkup_record.destroy
    respond_to do |format|
      format.html { redirect_to checkup_records_url, notice: 'Checkup record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkup_record
      @checkup_record = CheckupRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkup_record_params
      params.require(:checkup_record).permit(:patient_id, :user_id, :height, :weight, :mental_assessment, :physical_assessment, :notes)
    end
end
