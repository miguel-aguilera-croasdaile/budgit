json.extract! @wallet, :id
json.assets @wallet.assets do |asset|
  json.extract! asset, :id, :currency
end
