class AssetsController < ApplicationController

  def create
    @asset = Asset.create(asset_params)
    @asset.wallet = Wallet.find(params[:wallet_id])
    @asset.save!
    @asset.wallet.touch

    redirect_to "/wallet"
  end

  private

  def asset_params
    params.require(:asset).permit(:amount, :asset_type, :user, :currency)
  end
end
