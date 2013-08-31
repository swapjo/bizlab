class BusinessItemCategoriesController < ApplicationController
  # GET /business_item_categories
  # GET /business_item_categories.json
  def index
    #@business_item_categories = BusinessItemCategory.all
    @business_item_categories = BusinessItemCategory.where("name LIKE ?", "#{params[:char]}%")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_item_categories }
    end
  end

  # GET /business_item_categories/1
  # GET /business_item_categories/1.json
  def show
    @business_item_category = BusinessItemCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_item_category }
    end
  end

  # GET /business_item_categories/new
  # GET /business_item_categories/new.json
  def new
    @business_item_category = BusinessItemCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_item_category }
    end
  end

  # GET /business_item_categories/1/edit
  def edit
    @business_item_category = BusinessItemCategory.find(params[:id])
  end

  # POST /business_item_categories
  # POST /business_item_categories.json
  def create
    @business_item_category = BusinessItemCategory.new(params[:business_item_category])

    respond_to do |format|
      if @business_item_category.save
        format.html { redirect_to @business_item_category, notice: 'Business item category was successfully created.' }
        format.json { render json: @business_item_category, status: :created, location: @business_item_category }
      else
        format.html { render action: "new" }
        format.json { render json: @business_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_item_categories/1
  # PUT /business_item_categories/1.json
  def update
    @business_item_category = BusinessItemCategory.find(params[:id])

    respond_to do |format|
      if @business_item_category.update_attributes(params[:business_item_category])
        format.html { redirect_to @business_item_category, notice: 'Business item category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_item_categories/1
  # DELETE /business_item_categories/1.json
  def destroy
    @business_item_category = BusinessItemCategory.find(params[:id])
    @business_item_category.destroy

    respond_to do |format|
      format.html { redirect_to business_item_categories_url }
      format.json { head :no_content }
    end
  end
end
