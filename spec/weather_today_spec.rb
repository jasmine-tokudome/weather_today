# frozen_string_literal: true

require 'weather_today'
require 'webmock/rspec'
require 'spec_helper'

RSpec.describe WeatherToday::WeatherClient do
  subject(:weather_data) do
    WeatherToday::WeatherClient.new('kagoshima').fetch_weather_data
  end

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

  it { is_expected.to be_a(Hash) }

  it 'includes required keys in the response' do
    is_expected.to include(
      'UV指数', '天気', '日の入り時刻', '日の出時刻', '日時', '最低気温', '最高気温'
    )
  end
end
