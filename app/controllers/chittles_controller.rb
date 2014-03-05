class ChittlesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_chittle, only: [:show, :edit, :update, :destroy]

  # GET /chittles
  # GET /chittles.json
  def index
    @chittles = Chittle.all
  end

  # GET /chittles/1
  # GET /chittles/1.json
  def show
    #get comments for tweets/chittles
    @chatters = @chittle.chatters
    @num_chatters = @chatters.count
  end

  # GET /chittles/new
  def new
    @chittle = Chittle.new
  end

  # GET /chittles/1/edit
  def edit
  end

  # POST /chittles
  # POST /chittles.json
  def create
    @chittle = Chittle.new(chittle_params)

    respond_to do |format|
      if @chittle.save
        format.html { redirect_to @chittle, notice: 'Chittle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chittle }
      else
        format.html { render action: 'new' }
        format.json { render json: @chittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chittles/1
  # PATCH/PUT /chittles/1.json
  def update
    respond_to do |format|
      if @chittle.update(chittle_params)
        format.html { redirect_to @chittle, notice: 'Chittle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chittles/1
  # DELETE /chittles/1.json
  def destroy
    @chittle.destroy
    respond_to do |format|
      format.html { redirect_to chittles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chittle
      @chittle = Chittle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chittle_params
      params.require(:chittle).permit(:chit_text)
    end
end
