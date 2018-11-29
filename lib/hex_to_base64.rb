require 'base64'

class HexToBase64
  def self.compute(hex_as_string)
    ascii = [hex_as_string].pack('H*') # interprets string as hex numbers
    Base64.encode64(ascii).gsub("\n", '')
  end
end
