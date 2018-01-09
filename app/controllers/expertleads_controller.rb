class ExpertleadsController < ApplicationController
  before_action :set_expertlead, only: [:show, :edit, :update, :destroy]

  # GET /expertleads
  # GET /expertleads.json
  def index
    @expertleads = Expertlead.all
  end

  # GET /expertleads/1
  # GET /expertleads/1.json
  def show
  end

  # GET /expertleads/new
  def new
    @expertlead = Expertlead.new
  end

  # GET /expertleads/1/edit
  def edit
  end

  # POST /expertleads
  # POST /expertleads.json
  def create
    @expertlead = Expertlead.new(expertlead_params)

    respond_to do |format|
      if @expertlead.save
        format.html { redirect_to @expertlead, notice: 'Expertlead was successfully created.' }
        format.json { render :show, status: :created, location: @expertlead }
      else
        format.html { render :new }
        format.json { render json: @expertlead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expertleads/1
  # PATCH/PUT /expertleads/1.json
  def update
    respond_to do |format|
      if @expertlead.update(expertlead_params)
        format.html { redirect_to @expertlead, notice: 'Expertlead was successfully updated.' }
        format.json { render :show, status: :ok, location: @expertlead }
      else
        format.html { render :edit }
        format.json { render json: @expertlead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expertleads/1
  # DELETE /expertleads/1.json
  def destroy
    @expertlead.destroy
    respond_to do |format|
      format.html { redirect_to expertleads_url, notice: 'Expertlead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expertlead
      @expertlead = Expertlead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expertlead_params
      params.require(:expertlead).permit(:name, :email, :phone)
    end
end
