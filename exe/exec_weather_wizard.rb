#!/usr/bin/env ruby
# frozen_string_literal: true

require "weather_wizard"

if ARGV.empty?
  puts "Usage: weather_wizard <prefecture>"
  exit 1
end

prefecture = ARGV[0]
client = WeatherWizard::WeatherClient.new(prefecture)
client.fetch_weather_data
