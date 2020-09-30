class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

    # GET /donations/new
  def new
    @donation = Donation.new
    @project = Project.find(params[:project_id])
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @project = Project.find(params[:project_id])
    respond_to do |format|
      if @donation.save
        format.html { redirect_to @project, notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donation_params
      params.require(:donation).permit(:project_id, :user_id, :value)
    end
end
