class BookmarkBusinessItemsController < ApplicationController
  # GET /bookmark_business_items
  # GET /bookmark_business_items.json
  def index
    @bookmark_business_items = BookmarkBusinessItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmark_business_items }
    end
  end

  # GET /bookmark_business_items/1
  # GET /bookmark_business_items/1.json
  def show
    @bookmark_business_item = BookmarkBusinessItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookmark_business_item }
    end
  end

  # GET /bookmark_business_items/new
  # GET /bookmark_business_items/new.json
  def new
    @bookmark_business_item = BookmarkBusinessItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookmark_business_item }
    end
  end

  # GET /bookmark_business_items/1/edit
  def edit
    @bookmark_business_item = BookmarkBusinessItem.find(params[:id])
  end

  # POST /bookmark_business_items
  # POST /bookmark_business_items.json
  def create
    @bookmark_business_item = BookmarkBusinessItem.new(params[:bookmark_business_item])

    respond_to do |format|
      if @bookmark_business_item.save
        format.html { redirect_to @bookmark_business_item, notice: 'Bookmark business item was successfully created.' }
        format.json { render json: @bookmark_business_item, status: :created, location: @bookmark_business_item }
      else
        format.html { render action: "new" }
        format.json { render json: @bookmark_business_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookmark_business_items/1
  # PUT /bookmark_business_items/1.json
  def update
    @bookmark_business_item = BookmarkBusinessItem.find(params[:id])

    respond_to do |format|
      if @bookmark_business_item.update_attributes(params[:bookmark_business_item])
        format.html { redirect_to @bookmark_business_item, notice: 'Bookmark business item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookmark_business_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_business_items/1
  # DELETE /bookmark_business_items/1.json
  def destroy
    @bookmark_business_item = BookmarkBusinessItem.find(params[:id])
    @bookmark_business_item.destroy

    respond_to do |format|
      format.html { redirect_to bookmark_business_items_url }
      format.json { head :no_content }
    end
  end
end
