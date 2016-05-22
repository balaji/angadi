module Admin
  # Admin interface for managing campaigns
  class CampaignController < ApplicationController
    layout 'admin'

    def index
      @campaigns = Campaign.paginate(page: params[:page], per_page: 10)
                           .order('name')
    end

    def show
      @campaign = Campaign.find(params[:id])
    end

    def update
      @campaign = Campaign.find params[:id]

      respond_to do |format|
        @campaign.update_attributes(permitted_params)
        format.json { respond_with_bip(@campaign) }
      end
    end

    private

    def permitted_params
      params.require(:campaign).permit(:name, :deleted)
    end
  end
end
