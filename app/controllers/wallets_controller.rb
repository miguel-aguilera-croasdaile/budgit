class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
    authorize @wallets
  end

  def show
    @wallet = current_user.wallet
    @asset = Asset.new()
    @expense = Expense.new()
    @sorted_assets = @wallet.assets.group_by(&:destination)
  end

end
