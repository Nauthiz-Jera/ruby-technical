require 'sorbet-runtime'

class NodeResult < T::Struct
    const :blockHash, String
    const :blockNumber, String
    const :transaction_hash, String
    const :from, String
    const :gas, String
    const :gasPrice, String
    const :input, String
    const :nonce, String
    const :r, String
    const :s, String
    const :to, String
    const :transactionIndex, String
    const :type, String
    const :v, String
    const :value, String
end
