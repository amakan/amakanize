RSpec.describe Amakanize::SeriesName do
  let(:series_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      series_name.to_s
    end

    {
      "ネトゲの嫁は女の子じゃないと思った? Lv.2 (電撃文庫)" => "ネトゲの嫁は女の子じゃないと思った?",
      "JavaScript 第6版" => "JavaScript",
      "D.Gray-man 25 (ジャンプコミックス)" => "D.Gray-man",
      "D.Gray‐man (4) (ジャンプ・コミックス)" => "D.Gray-man",
      "D.Grayーman 10 (ジャンプコミックス)" => "D.Gray-man",
      "To LOVEる -とらぶる- ダークネス" => "To LOVEる",
      "To LOVEる -とらぶる-" => "To LOVEる",
      "アド・アストラ 1 ─スキピオとハンニバル─ (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アド・アストラ 2―スキピオとハンニバル (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アニウッド大通り　１: アニメ監督一家物語" => "アニウッド大通り",
      "なれる!SE 2週間でわかる?SE入門 (電撃文庫)" => "なれる!SE 2週間でわかる?SE入門",
      "ばくおん! ! (7)(ヤングチャンピオン烈コミックス)" => "ばくおん!!",
      "やはり俺の青春ラブコメはまちがっている。4" => "やはり俺の青春ラブコメはまちがっている。",
      "ラブライブ! School idol diary ~星空凛~" => "ラブライブ! School idol diary",
      "僕だけがいない街 (1) (カドカワコミックス・エース)" => "僕だけがいない街",
      "冴えない彼女の育てかた (9)" => "冴えない彼女の育てかた",
      "刀語 第十一話 毒刀・鍍 (ドクトウ・メッキ) (講談社BOX)" => "刀語",
      "東京レイヴンズEX1party in nest" => "東京レイヴンズEX1party in nest",
      "白騎士物語-episode.0-ドグマ戦記" => "白騎士物語",
      "神さまのいない日曜日VII (富士見ファンタジア文庫)" => "神さまのいない日曜日",
      "艦隊これくしょん -艦これ- 島風 つむじ風の少女" => "艦隊これくしょん",
      "達人伝 -9万里を風に乗り-(3) (アクションコミックス)" => "達人伝",
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
