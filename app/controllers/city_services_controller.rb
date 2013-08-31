class CityServicesController < ApplicationController
  # GET /city_services
  # GET /city_services.json
  def index
    @city_services = CityService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @city_services }
    end
  end

  # GET /city_services/1
  # GET /city_services/1.json
  def show
    @city_service = CityService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @city_service }
    end
  end

  # GET /city_services/new
  # GET /city_services/new.json
  def new
    @city_service = CityService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @city_service }
    end
  end

  # GET /city_services/1/edit
  def edit
    @city_service = CityService.find(params[:id])
  end

  # POST /city_services
  # POST /city_services.json
  def create
    @city_service = CityService.new(params[:city_service])

    respond_to do |format|
      if @city_service.save
        format.html { redirect_to @city_service, notice: 'City service was successfully created.' }
        format.json { render json: @city_service, status: :created, location: @city_service }
      else
        format.html { render action: "new" }
        format.json { render json: @city_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /city_services/1
  # PUT /city_services/1.json
  def update
    @city_service = CityService.find(params[:id])

    respond_to do |format|
      if @city_service.update_attributes(params[:city_service])
        format.html { redirect_to @city_service, notice: 'City service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @city_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_services/1
  # DELETE /city_services/1.json
  def destroy
    @city_service = CityService.find(params[:id])
    @city_service.destroy

    respond_to do |format|
      format.html { redirect_to city_services_url }
      format.json { head :no_content }
    end
  end
end
