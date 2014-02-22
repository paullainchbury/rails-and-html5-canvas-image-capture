class CherupsController < ApplicationController
  # GET /cherups
  # GET /cherups.json
  def index
    @cherups = Cherup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cherups }
    end
  end

  # GET /cherups/1
  # GET /cherups/1.json
  def show
    @cherup = Cherup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cherup }
    end
  end

  # GET /cherups/new
  # GET /cherups/new.json
  def new
    @cherup = Cherup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cherup }
    end
  end

  # GET /cherups/1/edit
  def edit
    @cherup = Cherup.find(params[:id])
  end

  # POST /cherups
  # POST /cherups.json
  def create
    @cherup = Cherup.new(params[:cherup])

    respond_to do |format|
      if @cherup.save
        format.html { redirect_to @cherup, notice: 'Cherup was successfully created.' }
        format.json { render json: @cherup, status: :created, location: @cherup }
      else
        format.html { render action: "new" }
        format.json { render json: @cherup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cherups/1
  # PUT /cherups/1.json
  def update
    @cherup = Cherup.find(params[:id])

    respond_to do |format|
      if @cherup.update_attributes(params[:cherup])
        format.html { redirect_to @cherup, notice: 'Cherup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cherup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cherups/1
  # DELETE /cherups/1.json
  def destroy
    @cherup = Cherup.find(params[:id])
    @cherup.destroy

    respond_to do |format|
      format.html { redirect_to cherups_url }
      format.json { head :no_content }
    end
  end
end
