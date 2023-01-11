require 'dotenv/load'
require_relative "alchemy"


alchemy_instance = Alchemy.new();

puts alchemy_instance.fetch_transaction("0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b");