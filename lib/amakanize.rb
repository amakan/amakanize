module Amakanize
  PATTERN_OF_NUMERIC_CHARACTERS = /
    \d+(?:\.\d+)?
    |[ivx]+
    |[IVX]+
    |[０-９]+(?:．[０-９]+)?
    |[〇一二三四五六七八九十百千万零壱弍参肆伍陸漆捌玖壹貳參拾佰仟萬]+
    |①
    |⑩
    |②
    |③
    |④
    |⑤
    |⑥
    |⑦
    |⑧
    |⑨
    |上
    |下
    |中
    |前
    |後
  /x

  PATTERN_OF_PREFIX_OF_BOOK_POSITION = /
    \#\s*
    |episode\.?\s*
    |lv\.?\s*
    |level\.?\s*
    |vol(?:ume)?\.?\s*
    |その\s*
    |巻(?:の|ノ|之)?\s*
    |第\s*
  /ix

  PATTERN_OF_SUFFIX_OF_BOOK_POSITION = /
    \s*話
    |\s*巻
    |\s*版
  /x

  PATTERN_OF_VOLUME_PREFIX = /
    episode\.?\s*
    |\#
    |Episode\.?\s*
    |EPISODE\.?\s*
    |vol(?:ume)?\.?\s*
    |Vol(?:ume)?\.?\s*
    |VOL(?:UME)?\.?\s*
    |その\s*
    |第\s*
  /x
end

require "amakanize/author_name"
require "amakanize/author_names"
require "amakanize/book_position"
require "amakanize/filterable"
require "amakanize/filters/base_filter"
require "amakanize/filters/book_position_at_end_detection_filter"
require "amakanize/filters/book_position_clearing_filter"
require "amakanize/filters/book_position_in_bracket_detection_filter"
require "amakanize/filters/book_position_in_words_detection_filter"
require "amakanize/filters/book_position_number_canonicalization_filter"
require "amakanize/filters/brackets_normalization_filter"
require "amakanize/filters/continuous_spaces_normalization_filter"
require "amakanize/filters/dash_between_alphabets_normalization_filter"
require "amakanize/filters/html_unescape_filter"
require "amakanize/filters/hyphen_minus_normalization_filter"
require "amakanize/filters/normalization_filter"
require "amakanize/filters/obvious_volume_number_deletion_filter"
require "amakanize/filters/parentheses_deletion_filter"
require "amakanize/filters/role_name_deletion_filter"
require "amakanize/filters/space_between_exclamation_and_bracket_deletion_filter"
require "amakanize/filters/space_deletion_filter"
require "amakanize/filters/spaces_between_exclamations_deletion_filter"
require "amakanize/filters/strip_filter"
require "amakanize/filters/trailing_author_name_payload_deletion_filter"
require "amakanize/filters/trailing_dash_deletion_filter"
require "amakanize/filters/trailing_double_parentheses_singlization_filter"
require "amakanize/filters/trailing_parentheses_deletion_filter"
require "amakanize/filters/trailing_series_name_payload_deletion_filter"
require "amakanize/filters/trailing_symbol_deletion_filter"
require "amakanize/filters/trailing_volume_number_deletion_filter"
require "amakanize/filters/video_position_detection_filter"
require "amakanize/filters/video_position_number_conversion_filter"
require "amakanize/series_name"
require "amakanize/version"
require "amakanize/video_position"
