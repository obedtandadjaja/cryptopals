require 'spec_helper'
require 'hex_to_base64'


RSpec.describe HexToBase64 do
  describe '.compute' do
    let(:input) { '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d' }
    let(:expected_output) { 'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t' }

    it 'computes correctly' do
      expect(described_class.compute(input)).to eq expected_output
    end
  end
end
