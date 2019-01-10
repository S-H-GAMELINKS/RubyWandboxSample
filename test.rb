require 'bundler/setup'
Bundler.require(:default)

require 'mastodon'
require "open3"

compiler = ARGV[0]

s = Open3.capture3("wandbox run test.cpp --std=c++11 --compiler=#{compiler}")

puts s