require 'sorbet-runtime'

class AlchemyEnums < T::Enum
  enums do
    GET_TRANSACTION = new("eth_getTransactionByHash")
    GET_TRANSACTION_RECIEPT = new("eth_getTransactionReceipt")
  end
end
