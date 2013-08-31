class MallTypesController < ApplicationController
  # GET /mall_types
  # GET /mall_types.json
  def index
    @mall_types = MallType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mall_types }
    end
  end

  # GET /mall_types/1
  # GET /mall_types/1.json
  def show
    @mall_type = MallType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mall_type }
    end
  end

  # GET /mall_types/new
  # GET /mall_types/new.json
  def new
    @mall_type = MallType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mall_type }
    end
  end

  # GET /mall_types/1/edit
  def edit
    @mall_type = MallType.find(params[:id])
  end

  # POST /mall_types
  # POST /mall_types.json
  def create
    @mall_type = MallType.new(params[:mall_type])

    respond_to do |format|
      if @mall_type.save
        format.html { redirect_to @mall_type, notice: 'Mall type was successfully created.' }
        format.json { render json: @mall_type, status: :created, location: @mall_type }
      else
        format.html { render action: "new" }
        format.json { render json: @mall_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mall_types/1
  # PUT /mall_types/1.json
  def update
    @mall_type = MallType.find(params[:id])

    respond_to do |format|
      if @mall_type.update_attributes(params[:mall_type])
        format.html { redirect_to @mall_type, notice: 'Mall type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mall_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mall_types/1
  # DELETE /mall_types/1.json
  def destroy
    @mall_type = MallType.find(params[:id])
    @mall_type.destroy

    respond_to do |format|
      format.html { redirect_to mall_types_url }
      format.json { head :no_content }
    end
  end
end
