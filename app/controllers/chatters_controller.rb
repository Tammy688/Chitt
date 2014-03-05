class ChattersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_chatter, only: [:show, :edit, :update, :destroy]

  # GET /chatters
  # GET /chatters.json
  def index
    @chatters = Chatter.all
  end

  # GET /chatters/1
  # GET /chatters/1.json
  def show
  end

  # GET /chatters/new
  def new
    @chatter = Chatter.new

    @chittle_id = params["chittle_id"]
  
  end

  # GET /chatters/1/edit
  def edit
  end

  # POST /chatters
  # POST /chatters.json
  def create
    @chatter = Chatter.new(chatter_params)

    @chatter.chittle_id = params["chittle_id"]
    @chatter.user_id = current_user.id 

    respond_to do |format|
      if @chatter.save
        format.html { redirect_to @chatter, notice: 'Chatter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chatter }
      else
        format.html { render action: 'new' }
        format.json { render json: @chatter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatters/1
  # PATCH/PUT /chatters/1.json
  def update
    respond_to do |format|
      if @chatter.update(chatter_params)
        format.html { redirect_to @chatter, notice: 'Chatter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chatter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatters/1
  # DELETE /chatters/1.json
  def destroy
    @chatter.destroy
    respond_to do |format|
      format.html { redirect_to chatters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatter
      @chatter = Chatter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatter_params
      params.require(:chatter).permit(:chit_response)
    end
end
