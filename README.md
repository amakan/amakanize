# Amakanize

[![CircleCI](https://img.shields.io/circleci/project/github/amakan/amakanize.svg)](https://circleci.com/gh/amakan/amakanize)
[![Gem Version](https://badge.fury.io/rb/amakanize.svg)](https://rubygems.org/gems/amakanize)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/amakan/amakanize)

Utilities to canonicalize series names and author names for [amakan.net](https://amakan.net/).

## Requirements

- Ruby 2.2.2 or higher

## Installation

Add this line to your application's Gemfile:

```ruby
gem "amakanize"
```

And then execute:

```sh
bundle
```

Or manually install:

```sh
gem install amakanize
```

## Usage

```rb
require "amakanize"

Amakanize::AuthorName.new("ぽんかん(8)").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん８").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん⑧").to_s #=> "ぽんかん8"

Amakanize::AuthorNames.new("ぽんかん⑧,渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]
Amakanize::AuthorNames.new("ぽんかん⑧，渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]
Amakanize::AuthorNames.new("ぽんかん⑧、渡 航").map(&:to_s) #=> ["ぽんかん8", "渡航"]

Amakanize::SeriesName.new("やはり俺の青春ラブコメはまちがっている。4").to_s #=> "やはり俺の青春ラブコメはまちがっている。"
Amakanize::SeriesName.new("ラブライブ! School idol diary ~星空凛~").to_s #=> "ラブライブ! School idol diary"
Amakanize::SeriesName.new("僕だけがいない街 (1) (カドカワコミックス・エース)").to_s #=> "僕だけがいない街"
```
