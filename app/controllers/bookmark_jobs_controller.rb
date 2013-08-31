class BookmarkJobsController < ApplicationController
  # GET /bookmark_jobs
  # GET /bookmark_jobs.json
  def index
    @bookmark_jobs = BookmarkJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmark_jobs }
    end
  end

  # GET /bookmark_jobs/1
  # GET /bookmark_jobs/1.json
  def show
    @bookmark_job = BookmarkJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookmark_job }
    end
  end

  # GET /bookmark_jobs/new
  # GET /bookmark_jobs/new.json
  def new
    @bookmark_job = BookmarkJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookmark_job }
    end
  end

  # GET /bookmark_jobs/1/edit
  def edit
    @bookmark_job = BookmarkJob.find(params[:id])
  end

  # POST /bookmark_jobs
  # POST /bookmark_jobs.json
  def create
    @bookmark_job = BookmarkJob.new(params[:bookmark_job])

    respond_to do |format|
      if @bookmark_job.save
        format.html { redirect_to @bookmark_job, notice: 'Bookmark job was successfully created.' }
        format.json { render json: @bookmark_job, status: :created, location: @bookmark_job }
      else
        format.html { render action: "new" }
        format.json { render json: @bookmark_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookmark_jobs/1
  # PUT /bookmark_jobs/1.json
  def update
    @bookmark_job = BookmarkJob.find(params[:id])

    respond_to do |format|
      if @bookmark_job.update_attributes(params[:bookmark_job])
        format.html { redirect_to @bookmark_job, notice: 'Bookmark job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookmark_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_jobs/1
  # DELETE /bookmark_jobs/1.json
  def destroy
    @bookmark_job = BookmarkJob.find(params[:id])
    @bookmark_job.destroy

    respond_to do |format|
      format.html { redirect_to bookmark_jobs_url }
      format.json { head :no_content }
    end
  end
end
