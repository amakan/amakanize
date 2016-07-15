RSpec.describe Amakanize::SeriesName do
  let(:series_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      series_name.to_s
    end

    {
      "やはり俺の青春ラブコメはまちがっている。4" => "やはり俺の青春ラブコメはまちがっている。",
      "僕だけがいない街 (1) (カドカワコミックス・エース)" => "僕だけがいない街",
      "冴えない彼女の育てかた (9)" => "冴えない彼女の育てかた",
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
