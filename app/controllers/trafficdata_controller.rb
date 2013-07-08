class TrafficdataController < ApplicationController
  before_action :set_trafficdatum, only: [:show, :edit, :update, :destroy]

  # GET /trafficdata
  # GET /trafficdata.json
  def index
    @trafficdata = Trafficdatum.all
  end

  # GET /trafficdata/1
  # GET /trafficdata/1.json
  def show
  end

  # GET /trafficdata/new
  def new
    @trafficdatum = Trafficdatum.new
  end

  # GET /trafficdata/1/edit
  def edit
  end

  # POST /trafficdata
  # POST /trafficdata.json
  def create
    @trafficdatum = Trafficdatum.new(trafficdatum_params)

    respond_to do |format|
      if @trafficdatum.save
        format.html { redirect_to @trafficdatum, notice: 'Trafficdatum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trafficdatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @trafficdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trafficdata/1
  # PATCH/PUT /trafficdata/1.json
  def update
    respond_to do |format|
      if @trafficdatum.update(trafficdatum_params)
        format.html { redirect_to @trafficdatum, notice: 'Trafficdatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trafficdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trafficdata/1
  # DELETE /trafficdata/1.json
  def destroy
    @trafficdatum.destroy
    respond_to do |format|
      format.html { redirect_to trafficdata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trafficdatum
      @trafficdatum = Trafficdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trafficdatum_params
      params.require(:trafficdatum).permit(:switchID, :ifIndex, :ifDescr, :ifInOctets, :ifOutOctets, :diffInOctets, :diffOutOctets)
    end
end
