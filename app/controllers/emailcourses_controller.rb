class EmailcoursesController < ApplicationController
  before_action :set_emailcourse, only: [:show, :edit, :update, :destroy]

  # GET /emailcourses
  # GET /emailcourses.json
  def index
    @emailcourses = Emailcourse.all
  end

  # GET /emailcourses/1
  # GET /emailcourses/1.json
  def show
  end

  # GET /emailcourses/new
  def new
    @emailcourse = Emailcourse.new
  end

  # GET /emailcourses/1/edit
  def edit
  end

  # POST /emailcourses
  # POST /emailcourses.json
  def create
    @emailcourse = Emailcourse.new(emailcourse_params)

    respond_to do |format|
      if @emailcourse.save
        format.html { redirect_to @emailcourse, notice: 'Emailcourse was successfully created.' }
        format.json { render :show, status: :created, location: @emailcourse }
      else
        format.html { render :new }
        format.json { render json: @emailcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emailcourses/1
  # PATCH/PUT /emailcourses/1.json
  def update
    respond_to do |format|
      if @emailcourse.update(emailcourse_params)
        format.html { redirect_to @emailcourse, notice: 'Emailcourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @emailcourse }
      else
        format.html { render :edit }
        format.json { render json: @emailcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emailcourses/1
  # DELETE /emailcourses/1.json
  def destroy
    @emailcourse.destroy
    respond_to do |format|
      format.html { redirect_to emailcourses_url, notice: 'Emailcourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emailcourse
      @emailcourse = Emailcourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emailcourse_params
      params.require(:emailcourse).permit(:name, :businessname, :email, :phonenumber, :staff, :resultsiwant)
    end
end
