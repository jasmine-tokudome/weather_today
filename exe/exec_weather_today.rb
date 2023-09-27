#!/usr/bin/env ruby
# frozen_string_literal: true

require 'weather_today'

if ARGV.empty?
  puts 'Usage: weather_wizard <prefecture>'
  exit 1
end

prefecture = ARGV[0]
client = WeatherToday::WeatherClient.new(prefecture)
pp client.fetch_weather_data
