class EmergencyNumbersController < ApplicationController
  # GET /emergency_numbers
  # GET /emergency_numbers.json
  def index
    @emergency_numbers = EmergencyNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergency_numbers }
    end
  end

  # GET /emergency_numbers/1
  # GET /emergency_numbers/1.json
  def show
    @emergency_number = EmergencyNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergency_number }
    end
  end

  # GET /emergency_numbers/new
  # GET /emergency_numbers/new.json
  def new
    @emergency_number = EmergencyNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergency_number }
    end
  end

  # GET /emergency_numbers/1/edit
  def edit
    @emergency_number = EmergencyNumber.find(params[:id])
  end

  # POST /emergency_numbers
  # POST /emergency_numbers.json
  def create
    @emergency_number = EmergencyNumber.new(params[:emergency_number])

    respond_to do |format|
      if @emergency_number.save
        format.html { redirect_to @emergency_number, notice: 'Emergency number was successfully created.' }
        format.json { render json: @emergency_number, status: :created, location: @emergency_number }
      else
        format.html { render action: "new" }
        format.json { render json: @emergency_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergency_numbers/1
  # PUT /emergency_numbers/1.json
  def update
    @emergency_number = EmergencyNumber.find(params[:id])

    respond_to do |format|
      if @emergency_number.update_attributes(params[:emergency_number])
        format.html { redirect_to @emergency_number, notice: 'Emergency number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergency_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_numbers/1
  # DELETE /emergency_numbers/1.json
  def destroy
    @emergency_number = EmergencyNumber.find(params[:id])
    @emergency_number.destroy

    respond_to do |format|
      format.html { redirect_to emergency_numbers_url }
      format.json { head :no_content }
    end
  end
end
