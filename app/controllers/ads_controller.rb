class AdsController < ApplicationController

  require 'will_paginate/array'

  #helper_method :sort_column, :sort_direction

  # GET /ads
  # GET /ads.json
  def index
    #@ads = Ad.order("title").paginate(:per_page => 6, :page => params[:page])
    @ads = Ad.search(params[:search])
    if params.has_key?(:ad_category_id) && params[:ad_category_id] != ''
      @ads = @ads.where(' ad_category_id = ?', "#{params[:ad_category_id]}")
    end
    if params.has_key?(:company_id) && params[:company_id] != ''
      @ads = @ads.where(' company_id = ?', "#{params[:company_id]}")
    end
    if params.has_key?(:shopping_mall_id) && params[:shopping_mall_id] != ''
      @ads = @ads.where(' shopping_mall_id = ?', "#{params[:shopping_mall_id]}")
    end
    if params.has_key?(:price_from) && params[:price_from] != ''
      @ads = @ads.where(' price >= ?', "#{params[:price_from]}")
    end
    if params.has_key?(:price_to) && params[:price_to] != ''
      @ads = @ads.where(' price <= ?', "#{params[:price_to]}")
    end
    @ads = @ads.shuffle().paginate(:per_page => 12, :page => params[:page])
#    @ads = Ad.search(params[:search],params[:price_from],params[:price_to]).shuffle().paginate(:per_page => 6, :page => params[:page])
    #.order("name").page(params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ads }
    end
  end

  # GET /ads/1
  # GET /ads/1.json
  def show
    @ad = Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad }
    end
  end

  # GET /ads/new
  # GET /ads/new.json
  def new
    @ad = Ad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad }
    end
  end

  # GET /ads/1/edit
  def edit
    @ad = Ad.find(params[:id])
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.new(params[:ad])
    @ad.user_id=current_user.id

    respond_to do |format|
      if @ad.save
        format.html { redirect_to @ad, notice: 'Ad was successfully created.' }
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: "new" }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ads/1
  # PUT /ads/1.json
  def update
    @ad = Ad.find(params[:id])

    respond_to do |format|
      if @ad.update_attributes(params[:ad])
        format.html { redirect_to @ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy

    respond_to do |format|
      format.html { redirect_to ads_url }
      format.json { head :no_content }
    end
  end

=begin
 #sort not needed as ads will displayed randomly
  private

  def sort_column
    Ad.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
=end

end
