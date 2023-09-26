## Installation

    $ gem install pkg/weather_wizard-0.1.2.gem

## Usage

都道府県ごとの今日の気象情報をハッシュで取得できるgemです。

取得できる情報は以下のコマンドで確認できます。

    $ ruby -Ilib ./exe/exec_weather_wizard.rb <location>

(参考)

    ❯ ruby -Ilib ./exe/exec_weather_wizard.rb kagoshima
    日時 : 2023-09-26
    天気 : 晴れ時々曇り
    最高気温 : 28.9
    最低気温 : 25.2
    日の出時刻 : 2023-09-25T21:08
    日の入り時刻 : 2023-09-26T09:10
    UV指数 : 6.85

    ❯ ruby -Ilib ./exe/exec_weather_wizard.rb tokyo
    日時 : 2023-09-26
    天気 : 曇り
    最高気温 : 27.4
    最低気温 : 20.9
    日の出時刻 : 2023-09-25T20:31
    日の入り時刻 : 2023-09-26T08:33
    UV指数 : 6.15

    ❯ ruby -Ilib ./exe/exec_weather_wizard.rb okinawa
    日時 : 2023-09-26
    天気 : 霧雨: 中程度
    最高気温 : 31.0
    最低気温 : 27.1
    日の出時刻 : 2023-09-25T21:19
    日の入り時刻 : 2023-09-26T09:22
    UV指数 : 7.65

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

以下のAPIを利用させていただきました。
https://open-meteo.com/
