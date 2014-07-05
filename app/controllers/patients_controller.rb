class PatientsController < ApplicationController
  before_action :set_distribution_center
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = @distribution_center.patients.order('name asc')
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = @distribution_center.patients.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = @distribution_center.patients.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to distribution_center_patients_path(@distribution_center), notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html {
          flash.now[:alert] = @patient.errors.full_messages.join(", ")
          render :new
        }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to distribution_center_patient_path(@distribution_center, @patient), notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html {
          flash.now[:alert] = @patient.errors.full_messages.join(", ")
          render :edit
        }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to distribution_center_patients_url(@distribution_center), notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = @distribution_center.patients.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def patient_params
    params.require(:patient).permit(:name, :date_of_birth, :fathers_name, :mothers_name, :address, :mobile, :landline, :present_complaints, :registration_number, :gender, :blood_group, :distribution_center_id)
  end

  def set_distribution_center
    @distribution_center = DistributionCenter.find params[:distribution_center_id]
  end
end
