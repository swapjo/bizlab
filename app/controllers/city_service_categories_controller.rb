class CityServiceCategoriesController < ApplicationController
  # GET /city_service_categories
  # GET /city_service_categories.json
  def index
    @city_service_categories = CityServiceCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @city_service_categories }
    end
  end

  # GET /city_service_categories/1
  # GET /city_service_categories/1.json
  def show
    @city_service_category = CityServiceCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @city_service_category }
    end
  end

  # GET /city_service_categories/new
  # GET /city_service_categories/new.json
  def new
    @city_service_category = CityServiceCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @city_service_category }
    end
  end

  # GET /city_service_categories/1/edit
  def edit
    @city_service_category = CityServiceCategory.find(params[:id])
  end

  # POST /city_service_categories
  # POST /city_service_categories.json
  def create
    @city_service_category = CityServiceCategory.new(params[:city_service_category])

    respond_to do |format|
      if @city_service_category.save
        format.html { redirect_to @city_service_category, notice: 'City service category was successfully created.' }
        format.json { render json: @city_service_category, status: :created, location: @city_service_category }
      else
        format.html { render action: "new" }
        format.json { render json: @city_service_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /city_service_categories/1
  # PUT /city_service_categories/1.json
  def update
    @city_service_category = CityServiceCategory.find(params[:id])

    respond_to do |format|
      if @city_service_category.update_attributes(params[:city_service_category])
        format.html { redirect_to @city_service_category, notice: 'City service category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @city_service_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_service_categories/1
  # DELETE /city_service_categories/1.json
  def destroy
    @city_service_category = CityServiceCategory.find(params[:id])
    @city_service_category.destroy

    respond_to do |format|
      format.html { redirect_to city_service_categories_url }
      format.json { head :no_content }
    end
  end
end
