class BusinessItemsController < ApplicationController
  # GET /business_items
  # GET /business_items.json
  def index
    @business_items = BusinessItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_items }
    end
  end

  # GET /business_items/1
  # GET /business_items/1.json
  def show
    @business_item = BusinessItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_item }
    end
  end

  # GET /business_items/new
  # GET /business_items/new.json
  def new
    @business_item = BusinessItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_item }
    end
  end

  # GET /business_items/1/edit
  def edit
    @business_item = BusinessItem.find(params[:id])
  end

  # POST /business_items
  # POST /business_items.json
  def create
    @business_item = BusinessItem.new(params[:business_item])

    respond_to do |format|
      if @business_item.save
        format.html { redirect_to @business_item, notice: 'Business item was successfully created.' }
        format.json { render json: @business_item, status: :created, location: @business_item }
      else
        format.html { render action: "new" }
        format.json { render json: @business_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_items/1
  # PUT /business_items/1.json
  def update
    @business_item = BusinessItem.find(params[:id])

    respond_to do |format|
      if @business_item.update_attributes(params[:business_item])
        format.html { redirect_to @business_item, notice: 'Business item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_items/1
  # DELETE /business_items/1.json
  def destroy
    @business_item = BusinessItem.find(params[:id])
    @business_item.destroy

    respond_to do |format|
      format.html { redirect_to business_items_url }
      format.json { head :no_content }
    end
  end
end
