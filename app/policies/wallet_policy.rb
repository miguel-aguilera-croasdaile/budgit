class WalletPolicy
  attr_reader :user, :wallet

  def initialize(user, wallet)
    @user = user
    @wallet = wallet
  end

  def show?
    user.authorized?
  end

  def update?
    user.admin? || !wallet.published?
  end
end
