RSpec.describe Amakanize::SeriesName do
  let(:series_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      series_name.to_s
    end

    {
      "なれる!SE 2週間でわかる?SE入門 (電撃文庫)" => "なれる!SE 2週間でわかる?SE入門",
      "ばくおん! ! (7)(ヤングチャンピオン烈コミックス)" => "ばくおん!!",
      "やはり俺の青春ラブコメはまちがっている。4" => "やはり俺の青春ラブコメはまちがっている。",
      "ラブライブ! School idol diary ~星空凛~" => "ラブライブ! School idol diary",
      "僕だけがいない街 (1) (カドカワコミックス・エース)" => "僕だけがいない街",
      "冴えない彼女の育てかた (9)" => "冴えない彼女の育てかた",
      "東京レイヴンズEX1party in nest" => "東京レイヴンズEX1party in nest",
      "神さまのいない日曜日VII (富士見ファンタジア文庫)" => "神さまのいない日曜日",
      "魔法使いの嫁 4巻" => "魔法使いの嫁",
      "魔法使いの嫁 第4巻" => "魔法使いの嫁",
      "魔法使いの嫁 通常版 4 (BLADE COMICS)" => "魔法使いの嫁",
    }.each do |book_name, expected_series_name|
      context "with #{book_name.inspect}" do
        let(:raw) do
          book_name
        end

        it { is_expected.to eq expected_series_name }
      end
    end
  end
end
