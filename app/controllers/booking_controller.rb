class BookingController < ApplicationController

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(post_params)
    if @booking.save
      flash[:notice] = "Successfully added #{@booking.title}"
      redirect_to booking_index_path
    else
      flash[:notice] = "Error: Please check your inputs."
      render :new
    end
  end

  def payment
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update_attributes(post_params_edit) 
      flash[:notice] = "Successfully edited #{@booking.title}"
      redirect_to booking_index_path   
    else
      flash[:notice] = "Error: Please check your inputs."
      render edit_booking_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    temp_name = @booking.title
    if @booking.destroy
      flash[:notice] = "Successfully deleted #{temp_name}"
      redirect_to booking_index_path 
    else
      flash[:notice] = "Error: Couln't delete."
      redirect_to booking_index_path
    end
  end
  
  def show
    @booking = Booking.find(params[:id])
  end

end
