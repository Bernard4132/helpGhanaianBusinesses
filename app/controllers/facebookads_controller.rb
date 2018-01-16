class FacebookadsController < ApplicationController
  before_action :set_facebookad, only: [:show, :edit, :update, :destroy]

  # GET /facebookads
  # GET /facebookads.json
  def index
    @facebookads = Facebookad.all
  end

  # GET /facebookads/1
  # GET /facebookads/1.json
  def show
  end

  # GET /facebookads/new
  def new
    @facebookad = Facebookad.new
  end

  # GET /facebookads/1/edit
  def edit
  end

  # POST /facebookads
  # POST /facebookads.json
  def create
    @facebookad = Facebookad.new(facebookad_params)

    respond_to do |format|
      if @facebookad.save
        format.html { redirect_to @facebookad, notice: 'Facebookad was successfully created.' }
        format.json { render :show, status: :created, location: @facebookad }
      else
        format.html { render :new }
        format.json { render json: @facebookad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facebookads/1
  # PATCH/PUT /facebookads/1.json
  def update
    respond_to do |format|
      if @facebookad.update(facebookad_params)
        format.html { redirect_to @facebookad, notice: 'Facebookad was successfully updated.' }
        format.json { render :show, status: :ok, location: @facebookad }
      else
        format.html { render :edit }
        format.json { render json: @facebookad.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @facebookad
  end

  # DELETE /facebookads/1
  # DELETE /facebookads/1.json
  def destroy
    @facebookad.destroy
    respond_to do |format|
      format.html { redirect_to facebookads_url, notice: 'Facebookad was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @facebookad
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facebookad
      @facebookad = Facebookad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facebookad_params
      params[:facebookad][:resultsywant] = params[:facebookad][:resultsywant].join(',')
      params.require(:facebookad).permit(:resultsywant, :budget, :name, :email, :phonenumber)
    end
end
