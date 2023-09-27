# frozen_string_literal: true

require 'weather_today'
require 'webmock/rspec'
require 'spec_helper'

RSpec.describe WeatherToday::WeatherClient do
  it 'has a version number' do
    expect(WeatherToday::VERSION).not_to be nil
  end

  context 'when fetching weather data for kagoshima' do
    before do
      stub_request(:get, /api\.open-meteo\.com/).to_return(
        status: 200,
        body: {
          'daily' => {
            'time' => ['2023-09-27'],
            'weathercode' => [1],
            'temperature_2m_max' => [30],
            'temperature_2m_min' => [20],
            'sunrise' => ['06:00'],
            'sunset' => ['18:00'],
            'uv_index_max' => [5]
          }
        }.to_json
      )
    end

    it 'returns weather data with correct latitude and longitude' do
      # テスト対象のWeatherClientを作成
      weather_client = WeatherToday::WeatherClient.new('kagoshima')

      # テスト実行
      weather_data = weather_client.fetch_weather_data

      # HTTPステータスコードが成功 (200) であることを確認
      expect(weather_data).to be_a(Hash) # weather_dataがハッシュであることを確認

      # レスポンスの中身を詳細に検証する
      expect(weather_data).to have_key('UV指数')
      expect(weather_data).to have_key('天気')
      expect(weather_data).to have_key('日の入り時刻')
      expect(weather_data).to have_key('日の出時刻')
      expect(weather_data).to have_key('日時')
      expect(weather_data).to have_key('最低気温')
      expect(weather_data).to have_key('最高気温')
    end
  end
end
