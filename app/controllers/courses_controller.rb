class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        CourseMailer.delay(run_at: 30.minutes.from_now).lesson_one(@course)
        CourseMailer.delay(run_at: 1.day.from_now).lesson_two(@course)
        CourseMailer.delay(run_at: 2.days.from_now).lesson_three(@course)
        CourseMailer.delay(run_at: 3.days.from_now).lesson_four(@course)
        CourseMailer.delay(run_at: 4.days.from_now).lesson_five(@course)
        CourseMailer.delay(run_at: 5.days.from_now).lesson_six(@course)
        CourseMailer.delay(run_at: 7.days.from_now).lesson_seven(@course)
        CourseMailer.delay(run_at: 9.days.from_now).lesson_eight(@course)
        CourseMailer.delay(run_at: 11.days.from_now).lesson_nine(@course)
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :email)
    end
end
