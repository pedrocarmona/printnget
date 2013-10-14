class Owners::ClientsController < Owners::ApplicationOwnersController
  before_action :set_client, only: [:show]
  before_filter :authenticate_owner!
  load_and_authorize_resource 
  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end
end
