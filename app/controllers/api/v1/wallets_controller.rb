class Api::V1::WalletsController < Api::V1::BaseController
  before_action :set_wallet, only: [ :show ]

  def index
    @wallets = policy_scope(Wallet)
  end


  def show
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:id])
    authorize @wallet  # For Pundit
  end
end
