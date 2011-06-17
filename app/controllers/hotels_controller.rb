class HotelsController < ApplicationController
  before_filter :authenticate, :except => :show
  
  # GET /hotels
  # GET /hotels.xml
  def index
    @hotels = Hotel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hotels }
    end
  end

  # GET /hotels/1
  # GET /hotels/1.xml
  def show
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hotel }
    end
  end

  # GET /hotels/new
  # GET /hotels/new.xml
  def new
    @hotel = Hotel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hotel }
    end
  end

  # GET /hotels/1/edit
  def edit
    @hotel = Hotel.find(params[:id])
  end

  # POST /hotels
  # POST /hotels.xml
  def create
    @hotel = Hotel.new(params[:hotel])

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to(@hotel, :notice => 'Hotel was successfully created.') }
        format.xml  { render :xml => @hotel, :status => :created, :location => @hotel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hotel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.xml
  def update
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      if @hotel.update_attributes(params[:hotel])
        format.html { redirect_to(@hotel, :notice => 'Hotel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hotel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.xml
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to(hotels_url) }
      format.xml  { head :ok }
    end
  end
end
