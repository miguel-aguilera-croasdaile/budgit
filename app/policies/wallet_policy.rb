class WalletPolicy
  attr_reader :user, :wallet

  def initialize(user, wallet)
    @user = user
    @wallet = wallet
  end

  def show?
  end
end
