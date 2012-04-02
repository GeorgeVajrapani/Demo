class MunicipalitiesController < ApplicationController
  # GET /municipalities
  # GET /municipalities.xml
  def index
    @municipalities = Municipality.all

    respond_to do |format|
	  format.js { 
		municipalities = State.find(params[:state_id]).municipalities
		
		@municipalities = ''
		municipalities.each do |m|
		  @municipalities << "<option value =\"#{m.id}\">#{m.name}</option>"
		 end
		 
		render :js => @municipalities
	  }
      format.html # index.html.erb
      format.xml  { render :xml => @municipalities }
    end
  end

  # GET /municipalities/1
  # GET /municipalities/1.xml
  def show
    @municipality = Municipality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @municipality }
    end
  end

  # GET /municipalities/new
  # GET /municipalities/new.xml
  def new
    @municipality = Municipality.new
	@states = State.order('name').all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @municipality }
    end
  end

  # GET /municipalities/1/edit
  def edit
    @municipality = Municipality.find(params[:id])
	@states = State.order('name').all
  end

  # POST /municipalities
  # POST /municipalities.xml
  def create
    @municipality = Municipality.new(params[:municipality])

    respond_to do |format|
      if @municipality.save
        format.html { redirect_to(@municipality, :notice => 'Municipality was successfully created.') }
        format.xml  { render :xml => @municipality, :status => :created, :location => @municipality }
      else
	    @states = State.order('name').all
        format.html { render :action => "new" }
        format.xml  { render :xml => @municipality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /municipalities/1
  # PUT /municipalities/1.xml
  def update
    @municipality = Municipality.find(params[:id])

    respond_to do |format|
      if @municipality.update_attributes(params[:municipality])
        format.html { redirect_to(@municipality, :notice => 'Municipality was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @municipality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /municipalities/1
  # DELETE /municipalities/1.xml
  def destroy
    @municipality = Municipality.find(params[:id])
    @municipality.destroy

    respond_to do |format|
      format.html { redirect_to(municipalities_url) }
      format.xml  { head :ok }
    end
  end
end
