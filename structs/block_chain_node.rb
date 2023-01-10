require 'sorbet-runtime'

class NodeResult < T::Struct
    const :blockHash, T.nilable(String)
    const :blockNumber, T.nilable(String)
    const :transaction_hash, T.nilable(String)
    const :from, T.nilable(String)
    const :gas, T.nilable(String)
    const :gasPrice, T.nilable(String)
    const :input, T.nilable(String)
    const :nonce, T.nilable(String)
    const :r, T.nilable(String)
    const :s, T.nilable(String)
    const :to, T.nilable(String)
    const :transactionIndex, T.nilable(String)
    const :type, T.nilable(String)
    const :v, T.nilable(String)
    const :value, T.nilable(String)
end
