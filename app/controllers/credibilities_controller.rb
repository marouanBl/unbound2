class CredibilitiesController < ApplicationController
  # GET /credibilities
  # GET /credibilities.json
  def index
    @credibilities = Credibility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @credibilities }
    end
  end

  # GET /credibilities/1
  # GET /credibilities/1.json
  def show
    @credibility = Credibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @credibility }
    end
  end

  # GET /credibilities/new
  # GET /credibilities/new.json
  def new
    @credibility = Credibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @credibility }
    end
  end

  # GET /credibilities/1/edit
  def edit
    @credibility = Credibility.find(params[:id])
  end

  # POST /credibilities
  # POST /credibilities.json
  def create
    @credibility = Credibility.new(params[:credibility])

    respond_to do |format|
      if @credibility.save
        format.html { redirect_to @credibility, notice: 'Credibility was successfully created.' }
        format.json { render json: @credibility, status: :created, location: @credibility }
      else
        format.html { render action: "new" }
        format.json { render json: @credibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /credibilities/1
  # PUT /credibilities/1.json
  def update
    @credibility = Credibility.find(params[:id])

    respond_to do |format|
      if @credibility.update_attributes(params[:credibility])
        format.html { redirect_to @credibility, notice: 'Credibility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @credibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credibilities/1
  # DELETE /credibilities/1.json
  def destroy
    @credibility = Credibility.find(params[:id])
    @credibility.destroy

    respond_to do |format|
      format.html { redirect_to credibilities_url }
      format.json { head :no_content }
    end
  end
end
