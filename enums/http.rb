require 'sorbet-runtime'
require 'dotenv/load'

class HttpEnums < T::Enum
  enums do
    AlchemyUrl = new(ENV['ALCHEMY_PROD_URI'])
    ApplicationJson = new("application/json")
    AlchemyGetTransaction = new("eth_getTransactionByHash")
  end
end
