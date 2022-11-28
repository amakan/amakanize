# frozen_string_literal: true

RSpec.describe Amakanize::AuthorName do
  let(:author_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      author_name.to_s
    end

    {
      " 　ハノカゲ 　" => "ハノカゲ",
      "(キャラクター原案)ハラカズヒロ" => "ハラカズヒロ",
      "(原作・イラスト)Cygames" => "Cygames",
      "(原作)Cygames" => "Cygames",
      "&lt;ハノカゲ&gt;" => "<ハノカゲ>",
      "ａｕｔｈｏｒ" => "author",
      "BNGI/PROJECTiM@S:原作" => "BNGI/PROJECTiM@S",
      "Cygames(原作・イラスト)" => "Cygames",
      "Cygames(原作)" => "Cygames",
      "カバーデザイン:土井宏明(ポジトロン)" => "土井宏明(ポジトロン)",
      "ハノカゲ　ほか" => "ハノカゲ",
      "ハノカゲ:漫画" => "ハノカゲ",
      "バンダイナムコゲームス 原作" => "バンダイナムコゲームス",
      "ぽんかん(8)" => "ぽんかん8",
      "ぽんかん（８）" => "ぽんかん8",
      "ぽんかん8" => "ぽんかん8",
      "ぽんかん⑧" => "ぽんかん8",
      "渡 航" => "渡航",
      "渡　航" => "渡航",
      "漫画:ハノカゲ" => "ハノカゲ"
    }.each do |key, value|
      context "with #{key.inspect}" do
        let(:raw) do
          key
        end

        it { is_expected.to eq value }
      end
    end
  end
end
