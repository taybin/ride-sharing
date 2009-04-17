class RidesController < ApplicationController
  # GET /rides
  def index
    @offering_rides = Ride.find(:all, :conditions => { :offering => true } )
    @requesting_rides = Ride.find(:all, :conditions => { :offering => false } )

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /rides/1
  def show
    @ride = Ride.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /rides/new
  def new
    @ride = Ride.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /rides/1/edit
  def edit
    @ride = Ride.find(params[:id])
  end

  # POST /rides
  def create
    @ride = Ride.new(params[:ride])

    respond_to do |format|
      if @ride.save
        flash[:notice] = 'Ride was successfully created.'
        format.html { redirect_to(@ride) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /rides/1
  def update
    @ride = Ride.find(params[:id])

    respond_to do |format|
      if @ride.update_attributes(params[:ride])
        flash[:notice] = 'Ride was successfully updated.'
        format.html { redirect_to(@ride) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /rides/1
  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy

    respond_to do |format|
      format.html { redirect_to(rides_url) }
    end
  end

end
