class JobCategoriesController < ApplicationController
  # GET /job_categories
  # GET /job_categories.json
  def index
    @job_categories = JobCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_categories }
    end
  end

  # GET /job_categories/1
  # GET /job_categories/1.json
  def show
    @job_category = JobCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_category }
    end
  end

  # GET /job_categories/new
  # GET /job_categories/new.json
  def new
    @job_category = JobCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_category }
    end
  end

  # GET /job_categories/1/edit
  def edit
    @job_category = JobCategory.find(params[:id])
  end

  # POST /job_categories
  # POST /job_categories.json
  def create
    @job_category = JobCategory.new(params[:job_category])

    respond_to do |format|
      if @job_category.save
        format.html { redirect_to @job_category, notice: 'Job category was successfully created.' }
        format.json { render json: @job_category, status: :created, location: @job_category }
      else
        format.html { render action: "new" }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_categories/1
  # PUT /job_categories/1.json
  def update
    @job_category = JobCategory.find(params[:id])

    respond_to do |format|
      if @job_category.update_attributes(params[:job_category])
        format.html { redirect_to @job_category, notice: 'Job category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_categories/1
  # DELETE /job_categories/1.json
  def destroy
    @job_category = JobCategory.find(params[:id])
    @job_category.destroy

    respond_to do |format|
      format.html { redirect_to job_categories_url }
      format.json { head :no_content }
    end
  end
end
