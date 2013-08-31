class JobsController < ApplicationController

  require 'will_paginate/array'

  # GET /jobs
  # GET /jobs.json
  def index
    #@jobs = Job.all
    @jobs = Job.search(params[:search])
    if params.has_key?(:job_category_id) && params[:job_category_id] != ''
      @jobs = @jobs.where(' job_category_id = ?', "#{params[:job_category_id]}")
    end
    if params.has_key?(:company_id) && params[:company_id] != ''
      @jobs = @jobs.where(' company_id = ?', "#{params[:company_id]}")
    end
    if params.has_key?(:company_name) && params[:company_name] != ''
      companies = Company.search(params[:company_name]).all(:select => :id).collect(&:id)
      @jobs = @jobs.where("company_id IN (#{companies.join(',')} )")
    end
    @jobs = @jobs.shuffle().paginate(:per_page => 6, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(params[:job])
    @job.user_id = current_user.id

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end
end
