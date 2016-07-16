# Amakanize [![Build Status](https://travis-ci.org/amakan/amakanize.svg?branch=master)](https://travis-ci.org/amakan/amakanize)

Utilities to canonicalize series names and author names.

## Usage

```rb
require "amakanize"

Amakanize::AuthorName.new("ぽんかん(8)").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん８").to_s #=> "ぽんかん8"
Amakanize::AuthorName.new("ぽんかん⑧").to_s #=> "ぽんかん8"

Amaakanize::SeriesName.new("やはり俺の青春ラブコメはまちがっている。4").to_s #=> "やはり俺の青春ラブコメはまちがっている。"
Amaakanize::SeriesName.new("ラブライブ! School idol diary ~星空凛~".to_s #=> "ラブライブ! School idol diary"
Amaakanize::SeriesName.new("僕だけがいない街 (1) (カドカワコミックス・エース)").to_s #=> "僕だけがいない街"
```

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
