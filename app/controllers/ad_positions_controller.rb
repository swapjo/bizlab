class AdPositionsController < ApplicationController
  # GET /ad_positions
  # GET /ad_positions.json
  def index
    @ad_positions = AdPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_positions }
    end
  end

  # GET /ad_positions/1
  # GET /ad_positions/1.json
  def show
    @ad_position = AdPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_position }
    end
  end

  # GET /ad_positions/new
  # GET /ad_positions/new.json
  def new
    @ad_position = AdPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_position }
    end
  end

  # GET /ad_positions/1/edit
  def edit
    @ad_position = AdPosition.find(params[:id])
  end

  # POST /ad_positions
  # POST /ad_positions.json
  def create
    @ad_position = AdPosition.new(params[:ad_position])

    respond_to do |format|
      if @ad_position.save
        format.html { redirect_to @ad_position, notice: 'Ad position was successfully created.' }
        format.json { render json: @ad_position, status: :created, location: @ad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_positions/1
  # PUT /ad_positions/1.json
  def update
    @ad_position = AdPosition.find(params[:id])

    respond_to do |format|
      if @ad_position.update_attributes(params[:ad_position])
        format.html { redirect_to @ad_position, notice: 'Ad position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_positions/1
  # DELETE /ad_positions/1.json
  def destroy
    @ad_position = AdPosition.find(params[:id])
    @ad_position.destroy

    respond_to do |format|
      format.html { redirect_to ad_positions_url }
      format.json { head :no_content }
    end
  end
end
