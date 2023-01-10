Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://eth-mainnet.g.alchemy.com/v2/docs-demo'
    resource '*', headers: :any, methods: [:get, :post]
  end
end