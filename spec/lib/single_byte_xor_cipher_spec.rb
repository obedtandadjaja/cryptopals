require 'spec_helper'
require 'single_byte_xor_cipher'

RSpec.describe SingleByteXorCipher do
  describe '.decipher' do
    let(:input) { '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736' }
    let(:expected_output) { 'Cooking MC\'s like a pound of bacon' }

    it 'deciphers correctly' do
      expect(described_class.decipher(input)).to include(expected_output)
    end
  end
end
