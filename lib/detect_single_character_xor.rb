require 'single_byte_xor_cipher'

class DetectSingleCharacterXor
  def self.decipher(hex_as_string_array)
    hex_as_string_array.each do |hex_as_string|
      possible_messages = SingleByteXorCipher.decipher(hex_as_string)
      possible_messages.each do |message|
        next unless message.is_a? String

        message_without_letters = message.gsub(/[a-zA-Z0-9 ]/, '')
        return message if message_without_letters.length == 0
      end
    end
  end
end
