class ProjectsController < ApplicationController
  before_action :set_breadcrumbs, only: %i[ show edit ]
  before_action :set_project, only: %i[ show edit update destroy ]


  # GET /projects or /projects.json
  def index
    authorize Project
    @projects = policy_scope(Project)
  end

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    authorize Project
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    authorize Project
    @project = Project.new(project_params.merge(user: current_user))

    respond_to do |format|
      if @project.save
        format.html { redirect_to project_url(@project), notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to project_url(@project), notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_breadcrumbs
      add_breadcrumb "Projects", projects_path
    end

    def set_project
      @project = Project.cached_find(params[:id])
      authorize @project
      add_breadcrumb @project.title, project_path(@project)
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :description)
    end
end
