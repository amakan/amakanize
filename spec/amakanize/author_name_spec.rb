RSpec.describe Amakanize::AuthorName do
  let(:author_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      author_name.to_s
    end

    {
      "ぽんかん(8)" => "ぽんかん8",
      "ぽんかん8" => "ぽんかん8",
      "ぽんかん⑧" => "ぽんかん8",
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
