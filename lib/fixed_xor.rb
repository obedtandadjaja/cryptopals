class FixedXor
  def self.compute(hex_as_string1, hex_as_string2)
    # get int representation of the hexes
    hex1 = hex_as_string1.hex
    hex2 = hex_as_string2.hex

    (hex1 ^ hex2).to_s(16) # do XOR and convert it back to hex string
  end
end
