require 'spec_helper'
require 'fixed_xor'

RSpec.describe FixedXor do
  describe '.compute' do
    let(:input1) { '1c0111001f010100061a024b53535009181c' }
    let(:input2) { '686974207468652062756c6c277320657965' }
    let(:expected_output) { '746865206b696420646f6e277420706c6179' }

    it 'computes correctly' do
      expect(described_class.compute(input1, input2)).to eq expected_output
    end
  end
end
