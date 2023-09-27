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
$ ruby -Ilib ./exe/exec_weather_today.rb tokyo
    {"日時"=>["2023-09-27"],
    "天気"=>["曇り"],
    "最高気温"=>[28.3],
    "最低気温"=>[21.5],
    "日の出時刻"=>["2023-09-27T05:32"],
    "日の入り時刻"=>["2023-09-27T17:31"],
    "UV指数"=>[5.9]}
```

```shell
ruby -Ilib ./exe/exec_weather_today.rb okinawa
{"日時"=>["2023-09-27"],
    "天気"=>["霧雨: 軽い"],
    "最高気温"=>[31.6],
    "最低気温"=>[27.0],
    "日の出時刻"=>["2023-09-27T06:19"],
    "日の入り時刻"=>["2023-09-27T18:21"],
    "UV指数"=>[7.6]}
```

```shell
ruby -Ilib ./exe/exec_weather_today.rb hokkaido
{"日時"=>["2023-09-27"],
    "天気"=>["曇り"],
    "最高気温"=>[23.9],
    "最低気温"=>[14.3],
    "日の出時刻"=>["2023-09-27T05:26"],
    "日の入り時刻"=>["2023-09-27T17:24"],
    "UV指数"=>[5.05]}
```

## License

This gem utilizes the "Free Weather API." For further details, please refer to [Open_Meteo](https://open-meteo.com/).

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).