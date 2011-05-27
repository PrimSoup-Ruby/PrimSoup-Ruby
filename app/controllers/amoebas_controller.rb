class AmoebasController < ApplicationController
  # GET /amoebas
  # GET /amoebas.xml
  def index
    @amoebas = Amoeba.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @amoebas }
    end
  end

  # GET /amoebas/1
  # GET /amoebas/1.xml
  def show
    @amoeba = Amoeba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @amoeba }
    end
  end

  # GET /amoebas/new
  # GET /amoebas/new.xml
  def new
    @amoeba = Amoeba.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @amoeba }
    end
  end

  # GET /amoebas/1/edit
  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  # POST /amoebas
  # POST /amoebas.xml
  def create
    @amoeba = Amoeba.new(params[:amoeba])

    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to(@amoeba, :notice => 'Amoeba was successfully created.') }
        format.xml  { render :xml => @amoeba, :status => :created, :location => @amoeba }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @amoeba.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /amoebas/1
  # PUT /amoebas/1.xml
  def update
    @amoeba = Amoeba.find(params[:id])

    respond_to do |format|
      if @amoeba.update_attributes(params[:amoeba])
        format.html { redirect_to(@amoeba, :notice => 'Amoeba was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @amoeba.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /amoebas/1
  # DELETE /amoebas/1.xml
  def destroy
    @amoeba = Amoeba.find(params[:id])
    @amoeba.destroy

    respond_to do |format|
      format.html { redirect_to(amoebas_url) }
      format.xml  { head :ok }
    end
  end
end
