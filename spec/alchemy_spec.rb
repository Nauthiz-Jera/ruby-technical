# frozen_string_literal: true
require_relative "../lib/alchemy"

RSpec.describe Alchemy do
    it "can call fetchTransacions and return hash, from, and to" do
        instance = Alchemy.new
        allow(instance).to receive(:fetch_transacion).with(1, "0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b").and_return("transaction hash: 0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b\nfromAddress: 0xa7d9ddbe1f17865597fbd27ec712455208b6b76d\ntoAddress: 0xf02c1c8e6114b1dbe8937a39260b5b0a374432bb")

        expect(instance.fetch_transacion(1, "0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b")).to eq("transaction hash: 0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b\nfromAddress: 0xa7d9ddbe1f17865597fbd27ec712455208b6b76d\ntoAddress: 0xf02c1c8e6114b1dbe8937a39260b5b0a374432bb");
    end
end