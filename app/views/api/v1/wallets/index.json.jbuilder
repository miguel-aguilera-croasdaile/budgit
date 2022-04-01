json.array! @wallets do |wallet|
  json.extract! wallet, :id, :user
end
