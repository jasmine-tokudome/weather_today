# frozen_string_literal: true

require_relative "weather_today/version"
require_relative "weather_today/location_codes"
require_relative "weather_today/weather_codes"
require "net/http"
require "json"

module WeatherToday
  KEY_MAPPINGS = {
    "time" => "日時",
    "weathercode" => "天気",
    "temperature_2m_max" => "最高気温",
    "temperature_2m_min" => "最低気温",
    "sunrise" => "日の出時刻",
    "sunset" => "日の入り時刻",
    "uv_index_max" => "UV指数"
  }.freeze

  class Error < StandardError; end

  # WeatherClientは指定した都道府県に関する天気データを提供するクラスです。
  # このクラスは、都道府県の緯度と経度を使用して、外部APIから天気情報を取得します。
  class WeatherClient
    def initialize(prefecture)
      @prefecture = prefecture.to_sym
    end

    def fetch_weather_data
      location_data_entry = LocationData::DATA[@prefecture]
      lat = location_data_entry[:lat]
      lon = location_data_entry[:lon]
      url = "https://api.open-meteo.com/v1/forecast?latitude=#{lat}&longitude=#{lon}&daily=weathercode,temperature_2m_max,temperature_2m_min,sunrise,sunset,uv_index_max&forecast_days=1"
      uri = URI(url)
      response = Net::HTTP.get_response(uri)

      raise Error, "Failed to fetch weather data" unless response.is_a?(Net::HTTPSuccess)

      weather_data = JSON.parse(response.body)
      transform_and_print(weather_data["daily"])
    end

    private

    def transform_and_print(daily_data)
      transformed_data = {}
      daily_data.each do |key, value|
        transformed_key = KEY_MAPPINGS[key] || key
        transformed_data[transformed_key] = value
      end

      transformed_data["天気"] = transformed_data["天気"].map { |code| WeatherCodes::DATA[code] }

      transformed_data.each do |key, values|
        value = values.first
        puts "#{key} : #{value}"
      end
    end
  end
end
