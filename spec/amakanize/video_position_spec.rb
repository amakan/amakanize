RSpec.describe Amakanize::VideoPosition do
  let(:video_position) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      video_position.to_s
    end

    {
      "デジモンアドベンチャー tri. 第1章「再会」" => "1",
      "デジモンアドベンチャー tri. 第2章「決意」" => "2",
      "楽園追放-Expelled from Paradise-" => "",
      "帰ってきた手裏剣戦隊ニンニンジャー ニンニンガールズVSボーイズ FINAL WARS" => "",
      "劇場版 仮面ライダードライブ サプライズ・フューチャー" => "",
      "後編 劇場版「進撃の巨人」〜自由の翼〜" => "",
      "第14話〜18話 ポンコツクエスト〜魔王と派遣の魔物たち〜" => "14",
      "第1話 ソードアート・オンラインII" => "1",
      "第2話〜6話 ポンコツクエスト〜魔王と派遣の魔物たち〜" => "2",
      "第4話 雨色ココア in Hawaii" => "4",
      "第十ニ話 刀剣乱舞-花丸- （オリジナル映像付き）" => "10",
      "超英雄祭 KAMEN RIDER×SUPER SENTAI LIVE＆SHOW 2016" => "",
    }.each do |video_name, expected_video_position|
      context "with #{video_name.inspect}" do
        let(:raw) do
          video_name
        end

        it { is_expected.to eq expected_video_position }
      end
    end
  end
end
