require 'to_range'

describe String do

  describe "#to_range" do

    let(:range) { "1..10".to_range }

    it 'strings respond to #to_range method' do
      expect("string").to respond_to(:to_range)
    end

    it 'can parse a string to a range object' do
      expect(range).to eq(1..10)
    end

    it 'returns an object of Range class' do
      expect(range.class).to eq(Range)
    end

    it 'can parse ... (3 dots) as well' do
      expect("1...10".to_range).to eq(1...10)
    end

    context 'ambiguous cases' do

      it 'parses the first parsable occurrence' do
        expect('1..5..10'.to_range).to eq(1..5)
        expect('1.5..10'.to_range).to eq(5..10)
        expect('15..10...20'.to_range).to eq(15..10)
        expect('1...10.15'.to_range).to eq(1...10)
        expect('1.17.10..20'.to_range).to eq(10..20)
        expect('1.17.10...20'.to_range).to eq(10...20)
        expect('..2..5..8..10..'.to_range).to eq(2..5)
        expect('...2.5.8...10..'.to_range).to eq(8...10)
      end

    end

    context "exception cases" do

      it 'raises an exception when the string is not parsable' do
        expect { '1.4.6'.to_range }.to raise_exception(StringToRangeConversionFailed)
        expect { '146'.to_range }.to raise_exception(StringToRangeConversionFailed)
        expect { '1.4..'.to_range }.to raise_exception(StringToRangeConversionFailed)
        expect { '..1.4..'.to_range }.to raise_exception(StringToRangeConversionFailed)
        expect { '..14..'.to_range }.to raise_exception(StringToRangeConversionFailed)
        expect { '1234'.to_range }.to raise_exception(StringToRangeConversionFailed)
      end

    end

  end

end