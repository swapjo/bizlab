class ShoppingMallsController < ApplicationController
  # GET /shopping_malls
  # GET /shopping_malls.json
  def index
    @shopping_malls = ShoppingMall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shopping_malls }
    end
  end

  # GET /shopping_malls/1
  # GET /shopping_malls/1.json
  def show
    @shopping_mall = ShoppingMall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shopping_mall }
    end
  end

  # GET /shopping_malls/new
  # GET /shopping_malls/new.json
  def new
    @shopping_mall = ShoppingMall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shopping_mall }
    end
  end

  # GET /shopping_malls/1/edit
  def edit
    @shopping_mall = ShoppingMall.find(params[:id])
  end

  # POST /shopping_malls
  # POST /shopping_malls.json
  def create
    @shopping_mall = ShoppingMall.new(params[:shopping_mall])

    respond_to do |format|
      if @shopping_mall.save
        format.html { redirect_to @shopping_mall, notice: 'Shopping mall was successfully created.' }
        format.json { render json: @shopping_mall, status: :created, location: @shopping_mall }
      else
        format.html { render action: "new" }
        format.json { render json: @shopping_mall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shopping_malls/1
  # PUT /shopping_malls/1.json
  def update
    @shopping_mall = ShoppingMall.find(params[:id])

    respond_to do |format|
      if @shopping_mall.update_attributes(params[:shopping_mall])
        format.html { redirect_to @shopping_mall, notice: 'Shopping mall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shopping_mall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_malls/1
  # DELETE /shopping_malls/1.json
  def destroy
    @shopping_mall = ShoppingMall.find(params[:id])
    @shopping_mall.destroy

    respond_to do |format|
      format.html { redirect_to shopping_malls_url }
      format.json { head :no_content }
    end
  end
end
