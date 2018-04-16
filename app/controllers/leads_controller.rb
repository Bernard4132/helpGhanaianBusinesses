class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  # GET /leads
  # GET /leads.json
  def index
    @leads = Lead.all
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
  end

  # GET /leads/new
  def new
    @lead = Lead.new
  end

  # GET /leads/1/edit
  def edit
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(lead_params)
    respond_to do |format|
      if @lead.save
         # LeadMailer.delay(run_at: 3.minutes.from_now).lead_message(@lead)
         # LeadMailer.delay(run_at: 1.day.from_now).lead_message2(@lead)
         # LeadMailer.delay(run_at: 3.days.from_now).lead_message3(@lead)
         # LeadMailer.delay(run_at: 5.days.from_now).lead_message4(@lead)
         # LeadMailer.delay(run_at: 9.days.from_now).lead_message5(@lead)
         # LeadMailer.delay(run_at: 12.days.from_now).lead_message6(@lead)
         # LeadMailer.delay(run_at: 15.days.from_now).lead_message7(@lead)
         # LeadMailer.delay(run_at: 21.days.from_now).lead_message8(@lead)
         # LeadMailer.delay(run_at: 29.days.from_now).lead_message9(@lead)
        format.html { redirect_to :back, notice: 'Lead was successfully created.' }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads/1
  # PATCH/PUT /leads/1.json
  def update
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @lead }
      else
        format.html { render :edit }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @lead
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @lead
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_params
      params.require(:lead).permit(:name, :organization, :email, :phone)
    end
end
