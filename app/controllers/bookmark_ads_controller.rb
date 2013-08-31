class BookmarkAdsController < ApplicationController
  # GET /bookmark_ads
  # GET /bookmark_ads.json
  def index
    @bookmark_ads = BookmarkAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmark_ads }
    end
  end

  # GET /bookmark_ads/1
  # GET /bookmark_ads/1.json
  def show
    @bookmark_ad = BookmarkAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookmark_ad }
    end
  end

  # GET /bookmark_ads/new
  # GET /bookmark_ads/new.json
  def new
    @bookmark_ad = BookmarkAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookmark_ad }
    end
  end

  # GET /bookmark_ads/1/edit
  def edit
    @bookmark_ad = BookmarkAd.find(params[:id])
  end

  # POST /bookmark_ads
  # POST /bookmark_ads.json
  def create
    @bookmark_ad = BookmarkAd.new(params[:bookmark_ad])

    respond_to do |format|
      if @bookmark_ad.save
        format.html { redirect_to @bookmark_ad, notice: 'Bookmark ad was successfully created.' }
        format.json { render json: @bookmark_ad, status: :created, location: @bookmark_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @bookmark_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookmark_ads/1
  # PUT /bookmark_ads/1.json
  def update
    @bookmark_ad = BookmarkAd.find(params[:id])

    respond_to do |format|
      if @bookmark_ad.update_attributes(params[:bookmark_ad])
        format.html { redirect_to @bookmark_ad, notice: 'Bookmark ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookmark_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_ads/1
  # DELETE /bookmark_ads/1.json
  def destroy
    @bookmark_ad = BookmarkAd.find(params[:id])
    @bookmark_ad.destroy

    respond_to do |format|
      format.html { redirect_to bookmark_ads_url }
      format.json { head :no_content }
    end
  end
end
