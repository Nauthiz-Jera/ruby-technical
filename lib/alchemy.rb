# frozen_string_literal: true

require 'dotenv/load'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'ostruct'

require_relative "../structs/block_chain_node"

class Alchemy

    def initialize(url = URI(ENV['ALCHEMY_PROD_URI']))
        url = url
        @http = Net::HTTP.new(url.host, url.port)
        @http.use_ssl = true

        @request = Net::HTTP::Post.new(url)
        @request["accept"] = 'application/json'
        @request["content-type"] = 'application/json'
    end

    def fetch_transaction(id, transaction_hash)
        request = Marshal.load(Marshal.dump(@request.dup))
        request.body = { id: id, jsonrpc: "2.0", params: [transaction_hash], method: "eth_getTransactionByHash" }.to_json

        response = @http.request(request)
        parsed_response = JSON.parse(response.read_body)
        result = parsed_response["result"]
        result["transaction_hash"] = result["hash"]
        result.delete("hash")
        node_result = Block_Chain_Node.from_hash(result)
        puts "transaction hash: #{p(node_result.transaction_hash)}"
        puts "fromAddress: #{p(node_result.from)}"
        puts "toAddress: #{p(node_result.to)}"
    end
end