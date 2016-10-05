class CatRentalRequestsController < ApplicationController

  def index

  end

  def new
    @cats = Cat.all
    render :new
  end

  def create
    CatRentalRequest.create!(cat_rental_params)
    redirect_to cats_url
  end

  def cat_rental_params
    params.
      require(:cat_rental_request).
      permit(:cat_id, :start_date, :end_date)
  end

end
