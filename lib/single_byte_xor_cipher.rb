class SingleByteXorCipher
  def self.decipher(hex_as_string)
    ascii = [hex_as_string].pack('H*')

    possible_messages = []
    (0..255).each do |i|
      decoded_ascii = ascii.each_byte.map do |byte|
        (byte ^ i).chr # XOR with int representation of character and convert back to character
      end.join

      possible_messages << decoded_ascii.gsub("\n", '')
    end

    possible_messages
  end
end
