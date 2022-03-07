class AddAuthorizedUsersToWallets < ActiveRecord::Migration[6.1]
  def change
    add_column :wallets, :authorized_users, :text
  end
end
