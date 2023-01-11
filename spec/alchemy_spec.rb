# frozen_string_literal: true
require 'dotenv/load'
require 'json'

require_relative "../lib/alchemy"
require_relative "../structs/transaction"



RSpec.describe Alchemy do
    let (:transaction) do
         Transaction.new({ 
            blockHash: "0x1d59ff54b1eb26b013ce3cb5fc9dab3705b415a67127a003c3e61eb445bb8df2",
            blockNumber: "0x5daf3b",
            from: "0xa7d9ddbe1f17865597fbd27ec712455208b6b76d",
            gas: "0xc350",
            gasPrice: "0x4a817c800",
            input: "0x68656c6c6f21",
            nonce: "0x15",
            r: "0x1b5e176d927f8e9ab405058b2d2457392da3e20f328b16ddabcebc33eaac5fea",
            s: "0x4ba69724e8f69de52f0125ad8b3c5c2cef33019bac3249e2c0a2192766d1721c",
            to: "0xf02c1c8e6114b1dbe8937a39260b5b0a374432bb",
            transactionIndex: "0x41",
            transaction_hash: "0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b",
            type: "0x0",
            v: "0x25",
            value: "0xf3dbb76162000"
        })
    end

    let (:httpMockInstance) do
         HttpMockInstance = Struct.new(:use_ssl) do
            attr_reader :request_response
            attr_writer :request_response

            def request(payload)
                request_response
            end
        end 
        httpMockInstance = HttpMockInstance.new(false)
    end

    it "can call fetchTransacions and return hash, from, and to" do
        http = double("http")
        
        httpMockInstance.request_response = Struct.new(:read_body).new(
            "{\"jsonrpc\":\"2.0\",\"id\":null,\"result\":{\"blockHash\":\"0x1d59ff54b1eb26b013ce3cb5fc9dab3705b415a67127a003c3e61eb445bb8df2\",\"blockNumber\":\"0x5daf3b\",\"hash\":\"0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b\",\"from\":\"0xa7d9ddbe1f17865597fbd27ec712455208b6b76d\",\"gas\":\"0xc350\",\"gasPrice\":\"0x4a817c800\",\"input\":\"0x68656c6c6f21\",\"nonce\":\"0x15\",\"r\":\"0x1b5e176d927f8e9ab405058b2d2457392da3e20f328b16ddabcebc33eaac5fea\",\"s\":\"0x4ba69724e8f69de52f0125ad8b3c5c2cef33019bac3249e2c0a2192766d1721c\",\"to\":\"0xf02c1c8e6114b1dbe8937a39260b5b0a374432bb\",\"transactionIndex\":\"0x41\",\"type\":\"0x0\",\"v\":\"0x25\",\"value\":\"0xf3dbb76162000\"}}" 
        )
        expect(http).to receive(:new).with("eth-mainnet.g.alchemy.com", 443).and_return(httpMockInstance)
        
        alchemy_instance = Alchemy.new(URI(ENV['ALCHEMY_PROD_URI']), http)
        expect(alchemy_instance.fetch_transaction("hash_string")).to have_attributes(:transaction_hash => p(transaction.transaction_hash));
    end
end