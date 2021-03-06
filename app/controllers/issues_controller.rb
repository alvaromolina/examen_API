class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy, :status, :resolve]

  # GET /issues
  # GET /issues.json
  def index
    @admi = false
    if params[:thermostat_id]
      @issues = Issue.where(thermostat_id:  params[:thermostat_id])
    else
      @admi = true
      @issues = Issue.where('status != "CANCELADO"')
    end
  end

  # GET /issues/1
  # GET /issues/1.json
  def showz
  end

  # GET /issues/new
  def new
    @thermostat = Thermostat.find(params[:thermostat_id])
    @issue = Issue.new
    @issue.thermostat_id = @thermostat.id
  end


  # GET /issues/new
  def resolve

  end


  def status
    @issue.status = params[:status]
    if @issue.save
      redirect_to request.referer, :notice => 'Exito al actualizar estado'
    else
      redirect_to request.referer, :notice => 'Error al actualizar estado'
    end
  end

  # GET /issues/1/edit
  def edit
  end

  # POST /issues
  # POST /issues.json
  def create
    @issue = Issue.new(issue_params)
    respond_to do |format|
      if @issue.save
        format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @issue }
      else
        format.html { render action: 'new' }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: 'Issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:thermostat_id, :description, :status, :resolution)
    end
end
