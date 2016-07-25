RSpec.describe Amakanize::AuthorNames do
  let(:author_names) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      author_names.map(&:to_s)
    end

    {
      "ぽんかん⑧,渡 航" => ["ぽんかん8", "渡航"],
      "ぽんかん⑧，渡 航" => ["ぽんかん8", "渡航"],
      "ぽんかん⑧、渡 航" => ["ぽんかん8", "渡航"],
      "まな・橋龍也" => ["まな", "橋龍也"]
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
