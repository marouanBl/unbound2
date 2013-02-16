class UserHasCredibilitiesController < ApplicationController
  # GET /user_has_credibilities
  # GET /user_has_credibilities.json
  def index
    @user_has_credibilities = UserHasCredibility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_has_credibilities }
    end
  end

  # GET /user_has_credibilities/1
  # GET /user_has_credibilities/1.json
  def show
    @user_has_credibility = UserHasCredibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_has_credibility }
    end
  end

  # GET /user_has_credibilities/new
  # GET /user_has_credibilities/new.json
  def new
    @user_has_credibility = UserHasCredibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_has_credibility }
    end
  end

  # GET /user_has_credibilities/1/edit
  def edit
    @user_has_credibility = UserHasCredibility.find(params[:id])
  end

  # POST /user_has_credibilities
  # POST /user_has_credibilities.json
  def create
    @user_has_credibility = UserHasCredibility.new(params[:user_has_credibility])

    respond_to do |format|
      if @user_has_credibility.save
        format.html { redirect_to @user_has_credibility, notice: 'User has credibility was successfully created.' }
        format.json { render json: @user_has_credibility, status: :created, location: @user_has_credibility }
      else
        format.html { render action: "new" }
        format.json { render json: @user_has_credibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_has_credibilities/1
  # PUT /user_has_credibilities/1.json
  def update
    @user_has_credibility = UserHasCredibility.find(params[:id])

    respond_to do |format|
      if @user_has_credibility.update_attributes(params[:user_has_credibility])
        format.html { redirect_to @user_has_credibility, notice: 'User has credibility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_has_credibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_has_credibilities/1
  # DELETE /user_has_credibilities/1.json
  def destroy
    @user_has_credibility = UserHasCredibility.find(params[:id])
    @user_has_credibility.destroy

    respond_to do |format|
      format.html { redirect_to user_has_credibilities_url }
      format.json { head :no_content }
    end
  end
end
