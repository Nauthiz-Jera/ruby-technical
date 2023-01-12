require 'sorbet-runtime'
require 'dotenv/load'

class HttpEnums < T::Enum
  enums do
    AlchemyGetTransaction = new("eth_getTransactionByHash")
    AlchemyUrl = new(ENV['ALCHEMY_PROD_URI'])
    ApplicationJson = new("application/json")
    TestUrl = new("https://astar-mainnet.g.alchemy.com/v2/docs-demo")
  end
end
