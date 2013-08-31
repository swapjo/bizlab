class BusinessItemsController < ApplicationController
  require 'will_paginate/array'

  # GET /business_items
  # GET /business_items.json
  def index
    #@business_items = BusinessItem.all
    @business_items = BusinessItem.search(params[:search])
    if params.has_key?(:business_item_category_id) && params[:business_item_category_id] != ''
      @business_items = @business_items.where(' business_item_category_id = ?', "#{params[:business_item_category_id]}")
    end
    if params.has_key?(:company_id) && params[:company_id] != ''
      @business_items = @business_items.where(' company_id = ?', "#{params[:company_id]}")
    end
    if params.has_key?(:company_name) && params[:company_name] != ''
      companies = Company.search(params[:company_name]).all(:select => :id).collect(&:id)
      @business_items = @business_items.where("company_id IN (#{companies.join(',')} )")
    end
    if params.has_key?(:business_item_category_name) && params[:business_item_category_name] != ''
      business_item_categories = BusinessItemCategory.search(params[:business_item_category_name]).all(:select => :id).collect(&:id)
      @business_items = @business_items.where("business_item_category_id IN (#{business_item_categories.join(',')} )")
    end
    if params.has_key?(:shopping_mall_id) && params[:shopping_mall_id] != ''
      @ads = @ads.where(' shopping_mall_id = ?', "#{params[:shopping_mall_id]}")
    end
    @business_items = @business_items.shuffle().paginate(:per_page => 6, :page => params[:page])
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
    if user_signed_in? && current_user.role.name == "Business Provider"
      puts "Company.find_all_by_user_id(current_user.id) => #{Company.find_all_by_user_id(current_user.id)}"
      puts "Company.find_all_by_user_id(current_user.id).count => #{Company.find_all_by_user_id(current_user.id).count}"
      if Company.find_all_by_user_id(current_user.id).count > 0
        @business_item = BusinessItem.new

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @business_item }
        end
      else
        redirect_to info_no_company_exists_path
      end
    else
      redirect_to new_user_session_path
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
    @business_item.user_id = current_user.id

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
