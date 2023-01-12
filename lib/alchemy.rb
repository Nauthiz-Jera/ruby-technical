# frozen_string_literal: true
# typed: true
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'sorbet-runtime'

require_relative "../structs/transaction"
require_relative "../enums/http"
require_relative "../enums/alchemy"

class Alchemy
    extend T::Sig
    URL = URI(HttpEnums::ALCHEMY_URL.serialize);

    sig { params(http: T.nilable(Net::HTTP)).void }
    def initialize(http = Net::HTTP)
        @http = http.new(URL.host, URL.port)
        @http.use_ssl = true

        @request = Net::HTTP::Post.new(URL)
        @request["accept"] = HttpEnums::APPLICATION_JSON.serialize
        @request["content-type"] = HttpEnums::APPLICATION_JSON.serialize
    end

    sig { params(params: BasicObject, method: T.any(AlchemyEnums::GET_TRANSACTION, AlchemyEnums::GET_TRANSACTION_RECIEPT)).returns(BasicObject) }
    def get_response_body(params, method)
        request = T.let(Marshal.load(Marshal.dump(@request)), Net::HTTP::Post)
        request.body = { jsonrpc: "2.0", params: params, method: method }.to_json
        response = @http.request(request)
        parsed_response = JSON.parse(response.read_body)
        return parsed_response
    end

    sig { params(transaction_hash: String).returns(Transaction) }
    def fetch_transaction(transaction_hash)
        response = get_response_body([transaction_hash], AlchemyEnums::GET_TRANSACTION)
        result = response["result"]
        result["transaction_hash"] = result["hash"]
        result.delete("hash")
        return Transaction.from_hash(result)
    end
end