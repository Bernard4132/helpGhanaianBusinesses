class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]

  # GET /dreams
  # GET /dreams.json
  def index
    @dreams = Dream.all
  end

  # GET /dreams/1
  # GET /dreams/1.json
  def show
  end

  # GET /dreams/new
  def new
    @dream = Dream.new
  end

  # GET /dreams/1/edit
  def edit
  end

  # POST /dreams
  # POST /dreams.json
  def create
    @dream = Dream.new(dream_params)

    respond_to do |format|
      if @dream.save
        # DreamMailer.delay(run_at: 3.minutes.from_now).dream_message(@dream)
        # DreamMailer.delay(run_at: 1.day.from_now).dream_message1(@dream)
        # DreamMailer.delay(run_at: 3.days.from_now).dream_message2(@dream)
        # DreamMailer.delay(run_at: 6.days.from_now).dream_message3(@dream)
        # DreamMailer.delay(run_at: 10.days.from_now).dream_message4(@dream)
        # DreamMailer.delay(run_at: 12.days.from_now).dream_message5(@dream)
        # DreamMailer.delay(run_at: 15.days.from_now).dream_message6(@dream)
        format.html { redirect_to "/thankyoulead", notice: 'Thank you! An email will be sent to you shortly.' }
        format.json { render :show, status: :created, location: @dream }
      else
        format.html { render :new }
        format.json { render json: @dream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dreams/1
  # PATCH/PUT /dreams/1.json
  def update
    respond_to do |format|
      if @dream.update(dream_params)
        format.html { redirect_to @dream, notice: 'Dream was successfully updated.' }
        format.json { render :show, status: :ok, location: @dream }
      else
        format.html { render :edit }
        format.json { render json: @dream.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @dream
  end

  # DELETE /dreams/1
  # DELETE /dreams/1.json
  def destroy
    @dream.destroy
    respond_to do |format|
      format.html { redirect_to dreams_url, notice: 'Dream was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @dream
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dream
      @dream = Dream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dream_params
      params.require(:dream).permit(:dreamtype, :dreambudget, :dreamaddinfo, :dreamername, :dreameremail, :dreamerphone)
    end
end
