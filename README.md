## WeatherToday

This gem provides you with weather information for a specified date. Currently, it is only available for locations within Japan.

## Installation

To install this gem on your local machine, add the following line to your application's Gemfile:

```ruby
gem 'weather_today'
```

Then, execute the following command:

```shell
bundle install
```

Alternatively, you can also install the gem using the following command:

```shell
gem install weather_today-0.1.1.gem
```

## Usage

The WeatherToday module supplies weather information for your application. You can display the output information using the following script:

```shell
ruby -Ilib ./exe/exec_weather_today.rb <prefecture>
```

Reference

Example usage:

```shell
ruby -Ilib ./exe/exec_weather_today.rb tokyo
{
  "Date": ["2023-09-27"],
  "Weather": ["Cloudy"],
  "Max Temperature": [28.3],
  "Min Temperature": [21.5],
  "Sunrise": ["2023-09-27T05:32"],
  "Sunset": ["2023-09-27T17:31"],
  "UV Index": [5.9]
}
```

```shell
ruby -Ilib ./exe/exec_weather_today.rb okinawa
{
  "Date": ["2023-09-27"],
  "Weather": ["Light Drizzle"],
  "Max Temperature": [31.6],
  "Min Temperature": [27.0],
  "Sunrise": ["2023-09-27T06:19"],
  "Sunset": ["2023-09-27T18:21"],
  "UV Index": [7.6]
}
```

```shell
ruby -Ilib ./exe/exec_weather_today.rb hokkaido
{
  "Date": ["2023-09-27"],
  "Weather": ["Cloudy"],
  "Max Temperature": [23.9],
  "Min Temperature": [14.3],
  "Sunrise": ["2023-09-27T05:26"],
  "Sunset": ["2023-09-27T17:24"],
  "UV Index": [5.05]
}
```

## License

This gem utilizes the "Free Weather API." For further details, please refer to [Open_Meteo](https://open-meteo.com/).

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).