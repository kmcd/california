class OccupanciesController < ApplicationController
  # GET /occupancies
  # GET /occupancies.xml
  def index
    @occupancies = Occupancy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @occupancies }
    end
  end

  # GET /occupancies/1
  # GET /occupancies/1.xml
  def show
    @occupancy = Occupancy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @occupancy }
    end
  end

  # GET /occupancies/new
  # GET /occupancies/new.xml
  def new
    @occupancy = Occupancy.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @occupancy }
    end
  end
  
  def add_guest
  end

  # GET /occupancies/1/edit
  def edit
    @occupancy = Occupancy.find(params[:id])
  end

  # POST /occupancies
  # POST /occupancies.xml
  def create
    @occupancy = Occupancy.new(params[:occupancy])

    respond_to do |format|
      if @occupancy.save
        format.html { redirect_to(@occupancy, :notice => 'Occupancy was successfully created.') }
        format.xml  { render :xml => @occupancy, :status => :created, :location => @occupancy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @occupancy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /occupancies/1
  # PUT /occupancies/1.xml
  def update
    @occupancy = Occupancy.find(params[:id])

    respond_to do |format|
      if @occupancy.update_attributes(params[:occupancy])
        format.html { redirect_to(@occupancy, :notice => 'Occupancy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @occupancy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /occupancies/1
  # DELETE /occupancies/1.xml
  def destroy
    @occupancy = Occupancy.find(params[:id])
    @occupancy.destroy

    respond_to do |format|
      format.html { redirect_to(occupancies_url) }
      format.xml  { head :ok }
    end
  end
end
