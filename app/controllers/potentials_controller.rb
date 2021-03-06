class PotentialsController < ApplicationController
  before_action :set_potential, only: [:show, :edit, :update, :destroy]

  # GET /potentials
  # GET /potentials.json
  def index
    @potentials = Potential.all
  end

  # GET /potentials/1
  # GET /potentials/1.json
  def show
     render layout: "lead"
  end

  # GET /potentials/new
  def new
    @potential = Potential.new
  end

  # GET /potentials/1/edit
  def edit
  end

  # POST /potentials
  # POST /potentials.json
  def create
    @potential = Potential.new(potential_params)

    respond_to do |format|
      if @potential.save
        format.html { redirect_to :back, notice: 'Contact was successfully made to Help Businesses Online. We will get back to you in the course of the day. Thank you.' }
        format.json { render :show, status: :created, location: @potential }
      else
        format.html { render :new }
        format.json { render json: @potential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potentials/1
  # PATCH/PUT /potentials/1.json
  def update
    respond_to do |format|
      if @potential.update(potential_params)
        format.html { redirect_to @potential, notice: 'Potential was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential }
      else
        format.html { render :edit }
        format.json { render json: @potential.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @potential
  end

  # DELETE /potentials/1
  # DELETE /potentials/1.json
  def destroy
    @potential.destroy
    respond_to do |format|
      format.html { redirect_to potentials_url, notice: 'Potential was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @potential
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential
      @potential = Potential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_params
      params.require(:potential).permit(:name, :phone, :email, :digim, :searcheo, :socem, :orgname, :goal, :webs)
    end
end
