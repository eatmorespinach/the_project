class ListingsController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @listings = Listing.all
    @id = params[:id]
  end

  def show
    @listing = Listing.find(params[:id])
    # @reviews = Review.find_by_listing_id(params[:id])

    if current_user
      @review = @listing.reviews.build
    end
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(params[:listing])

    if @listing.save
      redirect_to listings_url
    else
      render :new
    end
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update_attributes(params[:listing])
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
  end
end