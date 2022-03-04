class ExpensesController < ApplicationController

  def create
    @expense = Expense.create(expense_params)
    @wallet = Wallet.find(params[:wallet_id])
    @asset = Asset.find(params[:expense][:asset_id])
    @expense.wallet = @wallet
    @expense.asset = @asset
    @expense.currency = @asset.currency
    @expense.method = @asset.asset_type
    @expense.save!
    @asset.update(amount: (@asset.amount) - (@expense.amount))
    @expense.wallet.touch
    redirect_to "/wallet"
  end

  private

  def expense_params
    params.require(:expense).permit(:date, :amount, :currency, :category, :description, :method, :user, :asset_id)
  end
end
