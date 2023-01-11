# frozen_string_literal: true
# typed: true

require 'dotenv/load'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'sorbet-runtime'

require_relative "../structs/transaction"

class Alchemy
    extend T::Sig

    # sig { params(url: T.nilable(URI::Generic)).void }
    def initialize(url = URI(ENV['ALCHEMY_PROD_URI']), http = Net::HTTP)
        @http = http.new(url.host, url.port)
        @http.use_ssl = true

        @request = Net::HTTP::Post.new(url)
        @request["accept"] = 'application/json'
        @request["content-type"] = 'application/json'
    end

    sig { params(transaction_hash: String).returns(Transaction) }
    def fetch_transaction(transaction_hash)
        request = T.let(Marshal.load(Marshal.dump(@request)), Net::HTTP::Post)
        request.body = { jsonrpc: "2.0", params: [transaction_hash], method: "eth_getTransactionByHash" }.to_json
        response = @http.request(request)
        parsed_response = JSON.parse(response.read_body)
        result = parsed_response["result"]
        result["transaction_hash"] = result["hash"]
        result.delete("hash")
        return Transaction.from_hash(result)
    end
end