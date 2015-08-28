json.array!(@bids) do |bid|
  json.extract! bid, :id, :user_id, :player_id, :amount
  json.url bid_url(bid, format: :json)
end
