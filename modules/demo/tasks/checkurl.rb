#!/usr/bin/env ruby
require 'open-uri'

def internet_connection?
  begin
    true if open ENV['PT_url']
  rescue
    false
  end
end

if internet_connection?
  puts "#{ENV['PT_url']} is available"
end
