class CrewmembersController < ApplicationController
  before_action :set_crewmember, only: [:show, :edit, :update, :destroy]

  # GET /crewmembers
  # GET /crewmembers.json
  def index
    @crewmembers = Crewmember.all
  end

  # GET /crewmembers/1
  # GET /crewmembers/1.json
  def show
  end

  # GET /crewmembers/new
  def new
    @crewmember = Crewmember.new
  end

  # GET /crewmembers/1/edit
  def edit
  end

  # POST /crewmembers
  # POST /crewmembers.json
  def create
    @crewmember = Crewmember.new(crewmember_params)

    respond_to do |format|
      if @crewmember.save
        format.html { redirect_to @crewmember, notice: 'Crewmember was successfully created.' }
        format.json { render :show, status: :created, location: @crewmember }
      else
        format.html { render :new }
        format.json { render json: @crewmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crewmembers/1
  # PATCH/PUT /crewmembers/1.json
  def update
    respond_to do |format|
      if @crewmember.update(crewmember_params)
        format.html { redirect_to @crewmember, notice: 'Crewmember was successfully updated.' }
        format.json { render :show, status: :ok, location: @crewmember }
      else
        format.html { render :edit }
        format.json { render json: @crewmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crewmembers/1
  # DELETE /crewmembers/1.json
  def destroy
    @crewmember.destroy
    respond_to do |format|
      format.html { redirect_to crewmembers_url, notice: 'Crewmember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crewmember
      @crewmember = Crewmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crewmember_params
      params.require(:crewmember).permit(:name, :address, :phone, :email)
    end
end
