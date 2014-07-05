class NakshatraDatesController < ApplicationController
  before_action :set_nakshatra_date, only: [:show, :edit, :update, :destroy]

  # GET /nakshatra_dates
  # GET /nakshatra_dates.json
  def index
    @nakshatra_dates = NakshatraDate.all
  end

  # GET /nakshatra_dates/1
  # GET /nakshatra_dates/1.json
  def show
  end

  # GET /nakshatra_dates/new
  def new
    @nakshatra_date = NakshatraDate.new
  end

  # GET /nakshatra_dates/1/edit
  def edit
  end

  # POST /nakshatra_dates
  # POST /nakshatra_dates.json
  def create
    @nakshatra_date = NakshatraDate.new(nakshatra_date_params)

    respond_to do |format|
      if @nakshatra_date.save
        format.html { redirect_to @nakshatra_date, notice: 'Nakshatra date was successfully created.' }
        format.json { render :show, status: :created, location: @nakshatra_date }
      else
        format.html { render :new }
        format.json { render json: @nakshatra_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nakshatra_dates/1
  # PATCH/PUT /nakshatra_dates/1.json
  def update
    respond_to do |format|
      if @nakshatra_date.update(nakshatra_date_params)
        format.html { redirect_to @nakshatra_date, notice: 'Nakshatra date was successfully updated.' }
        format.json { render :show, status: :ok, location: @nakshatra_date }
      else
        format.html { render :edit }
        format.json { render json: @nakshatra_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nakshatra_dates/1
  # DELETE /nakshatra_dates/1.json
  def destroy
    @nakshatra_date.destroy
    respond_to do |format|
      format.html { redirect_to nakshatra_dates_url, notice: 'Nakshatra date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nakshatra_date
      @nakshatra_date = NakshatraDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nakshatra_date_params
      params.require(:nakshatra_date).permit(:nakshatra_date)
    end
end
