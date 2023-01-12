require 'sorbet-runtime'
require 'dotenv/load'

class HttpEnums < T::Enum
  enums do
    ALCHEMY_URL = new(ENV['ALCHEMY_PROD_URI'])
    APPLICATION_JSON = new("application/json")
    ALCHEMY_GET_TRANSACTION = new("eth_getTransactionByHash")
  end
end
