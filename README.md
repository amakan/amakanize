# Amakanize

[![CircleCI](https://img.shields.io/circleci/project/github/amakan/amakanize.svg)](https://circleci.com/gh/amakan/amakanize)
[![Gem Version](https://badge.fury.io/rb/amakanize.svg)](https://rubygems.org/gems/amakanize)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/amakan/amakanize)

Utilities to canonicalize names for [amakan.net](https://amakan.net/).

## Requirements

- Ruby 2.2.2 or higher

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
