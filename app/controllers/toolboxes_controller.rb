class ToolboxesController < ApplicationController
  before_action :set_toolbox, only: [:show, :edit, :update, :destroy]

  # GET /toolboxes
  # GET /toolboxes.json
  def index
    @toolboxes = Toolbox.all
  end

  # GET /toolboxes/1
  # GET /toolboxes/1.json
  def show
  end

  # GET /toolboxes/new
  def new
    @toolbox = Toolbox.new
  end

  # GET /toolboxes/1/edit
  def edit
  end

  # POST /toolboxes
  # POST /toolboxes.json
  def create
    @toolbox = Toolbox.new(toolbox_params)

    respond_to do |format|
      if @toolbox.save
        format.html { redirect_to @toolbox, notice: 'Toolbox was successfully created.' }
        format.json { render action: 'show', status: :created, location: @toolbox }
      else
        format.html { render action: 'new' }
        format.json { render json: @toolbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toolboxes/1
  # PATCH/PUT /toolboxes/1.json
  def update
    respond_to do |format|
      if @toolbox.update(toolbox_params)
        format.html { redirect_to @toolbox, notice: 'Toolbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @toolbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toolboxes/1
  # DELETE /toolboxes/1.json
  def destroy
    @toolbox.destroy
    respond_to do |format|
      format.html { redirect_to toolboxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toolbox
      @toolbox = Toolbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toolbox_params
      params.require(:toolbox).permit(:tool_id, :mechanic_id)
    end
end
