class RepeatingKeyXor
  def self.encrypt(message, key)
    encrypted_message = message.each_byte.each_with_index.map do |byte, i|
      (byte ^ key[i % key.length].ord).chr
    end.join.unpack('H*')

    encrypted_message.first
  end
end
