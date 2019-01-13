class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.costs.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
    authorize! :create, @project
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @project
  end
#   ben = User.find_by_email("bernardlomo2@gmail.com")
#   ray = User.find_by_email("rkesseku@st.ug.edu.gh")
#   ray.delete
#   ben.add_role :admin
#   ray.add_role :admin 
#   ben.update_attributes(paid: true)

#   user = User.find_by_email("fatetteh003@st.ug.edu.gh")

#   ob = User.find_by_email("obkwadwoantwi@gmail.com")
#   ob.update_attributes(paid: true)

#   pascal = User.find_by_email("pascalnewton99@gmail.com")
#   user.delete
#   pascal.update_attributes(paid: true)
#   user.update_attributes(authentication_token: nil)
#   user.authentication_token = nil
#   user.save
# sudo chown $benardmaticlomo ~/Library/Caches/com.microsoft.VSCode.ShipIt/* xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
#   curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE https://www.legendmatic.herokuapp.com/api/v1/sessions/\?auth_token\=aa_ZHjTkRXPkfzbnn7SD

# curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE https://legendmatic.herokuapp.com/api/v1/sessions -d "{\"auth_token\":\"cdrAuaoosZy71aNR1SEm\"}"


  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @project
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :active, :deploy, :cost_id, :timeline_id, :details,
                :user_ids, :projecttype_ids, :costs_attributes => [:amount, :paid])
    end
end
