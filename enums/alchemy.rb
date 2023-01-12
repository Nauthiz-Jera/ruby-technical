require 'sorbet-runtime'

class AlchemyEnums < T::Enum
  enums do
    GetTransaction = new("eth_getTransactionByHash")
    GetTransactionReciept = new("eth_getTransactionReceipt")
  end
end
