class WalletsController < ApplicationController

  def show
    @wallet = current_user.wallet
    @asset = Asset.new()

    @sorted_assets = @wallet.assets.group_by(&:asset_type)

  end

end
