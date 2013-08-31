class AdCategoriesController < ApplicationController
  # GET /ad_categories
  # GET /ad_categories.json
  def index
    #@ad_categories = AdCategory.all
    #@ad_categories = AdCategory.alphabetical_group(params[:letter])
    @ad_categories = AdCategory.where("name LIKE ?", "#{params[:char]}%")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_categories }
    end
  end

  # GET /ad_categories/1
  # GET /ad_categories/1.json
  def show
    @ad_category = AdCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_category }
    end
  end

  # GET /ad_categories/new
  # GET /ad_categories/new.json
  def new
    @ad_category = AdCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_category }
    end
  end

  # GET /ad_categories/1/edit
  def edit
    @ad_category = AdCategory.find(params[:id])
  end

  # POST /ad_categories
  # POST /ad_categories.json
  def create
    @ad_category = AdCategory.new(params[:ad_category])

    respond_to do |format|
      if @ad_category.save
        format.html { redirect_to @ad_category, notice: 'Ad category was successfully created.' }
        format.json { render json: @ad_category, status: :created, location: @ad_category }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_categories/1
  # PUT /ad_categories/1.json
  def update
    @ad_category = AdCategory.find(params[:id])

    respond_to do |format|
      if @ad_category.update_attributes(params[:ad_category])
        format.html { redirect_to @ad_category, notice: 'Ad category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_categories/1
  # DELETE /ad_categories/1.json
  def destroy
    @ad_category = AdCategory.find(params[:id])
    @ad_category.destroy

    respond_to do |format|
      format.html { redirect_to ad_categories_url }
      format.json { head :no_content }
    end
  end
end
