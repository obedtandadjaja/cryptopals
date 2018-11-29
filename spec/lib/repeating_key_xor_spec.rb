require 'spec_helper'
require 'repeating_key_xor'

RSpec.describe RepeatingKeyXor do
  describe '.encrypt' do
    let(:message) { "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal" }
    let(:key) { 'ICE' }
    let(:expected_output) { "0b3637272a2b2e63622c2e69692a23693a2a3c6324202d623d63343c2a26226324272765272a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f" }

    it 'encrypts correctly' do
      expect(described_class.encrypt(message, key)).to eq expected_output
    end
  end
end
