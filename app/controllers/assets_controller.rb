class AssetsController < ApplicationController

  def show
    @wallet = Wallet.find(params[:wallet_id])
    @asset = Asset.find(params[:id])
  end

  def create
    @asset = Asset.create(asset_params)
    @asset.wallet = Wallet.find(params[:wallet_id])

    if Asset.where(currency: asset_params[:currency], asset_type: asset_params[:asset_type]).exists?
      existing_asset = Asset.where(currency: asset_params[:currency], asset_type: asset_params[:asset_type])[0]
      existing_asset.update(amount: (existing_asset.amount + asset_params[:amount].to_f))
    else
      @asset.save!
    end
    @asset.wallet.touch

    redirect_to "/wallet"
  end

  private

  def asset_params
    params.require(:asset).permit(:amount, :asset_type, :user, :currency)
  end
end
