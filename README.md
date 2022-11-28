# Amakanize

[![test](https://github.com/amakan/amakanize/actions/workflows/test.yml/badge.svg)](https://github.com/amakan/amakanize/actions/workflows/test.yml)

Utilities to canonicalize names for [amakan.net](https://amakan.net/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "amakanize"
```

And then execute:

```bash
bundle
```

Or manually install:

```bash
gem install amakanize
```

## Usage

Require `"amakanize"` before using classes below.

```ruby
require "amakanize"
```

### Amakanize::AuthorName

```ruby
Amakanize::AuthorName.new("ぽんかん(8)").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん８").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん⑧").to_s #=> "ぽんかん8"
```

### Amakanize::AuthorNames

```ruby
Amakanize::AuthorNames.new("ぽんかん⑧,渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]
Amakanize::AuthorNames.new("ぽんかん⑧，渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]
Amakanize::AuthorNames.new("ぽんかん⑧、渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]
```

### Amakanize::BookPosition

```ruby
Amakanize::BookPosition.new("Fate/Grand Order 電撃コミックアンソロジー (2) (電撃コミックスNEXT)").to_s #=> "2"
Amakanize::BookPosition.new("お迎えです。 6 (花とゆめCOMICS)").to_s #=>  "6"
Amakanize::BookPosition.new("こいつら100%伝説 上 (集英社文庫 お 34-5)").to_s #=> "上"
Amakanize::BookPosition.new("THE BEST STAGE ガールフレンド(♪) ~Side MOMOKO~ (電撃コミックスEX)").to_s #=> ""
```

### Amakanize::SeriesName

```ruby
Amakanize::SeriesName.new("やはり俺の青春ラブコメはまちがっている。4").to_s #=> "やはり俺の青春ラブコメはまちがっている。"
Amakanize::SeriesName.new("ラブライブ! School idol diary ~星空凛~").to_s #=> "ラブライブ! School idol diary"
Amakanize::SeriesName.new("僕だけがいない街 (1) (カドカワコミックス・エース)").to_s #=> "僕だけがいない街"
```

### Amakanize::VideoPosition

```ruby
Amakanize::VideoPosition.new("第1話 ソードアート・オンラインII").to_s #=> "1"
Amakanize::VideoPosition.new("デジモンアドベンチャー tri. 第2章「決意」").to_s #=> "2"
Amakanize::VideoPosition.new("楽園追放-Expelled from Paradise-").to_s #=> ""
```
